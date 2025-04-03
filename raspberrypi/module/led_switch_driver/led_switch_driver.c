//read switch 정보 얻기, write led 조작 드라이버

/*
sudo insmod led_switch_driver.ko
dmesg
sudo mknod /dev/led_switch_driver c 223 0
sudo chmod 666 /dev/led_switch_driver
*/
#include <linux/fs.h>
#include <linux/gpio.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/uaccess.h>

#define DEV_MAJOR_NUMBER 223
#define DEV_NAME "led_switch_driver"

static int led_switch_driveropen(struct inode *inode, struct file *file);
static int led_switch_driverrelease(struct inode *inode, struct file *file);
static ssize_t led_switch_driverread(struct file *file, char __user *buf, size_t length, loff_t *ofs);
static ssize_t led_switch_driverwrite(struct file *file, const char __user *buf, size_t length, loff_t *ofs);

int sw[4] = {4 + 512, 17 + 512, 27 + 512, 22 + 512};
int led[4] = {23 + 512, 24 + 512, 25 + 512, 1 + 512};

static struct file_operations led_switch_driverfops = {
    .owner = THIS_MODULE,
    .open = led_switch_driveropen,
    .release = led_switch_driverrelease,
    .read = led_switch_driverread,
    .write = led_switch_driverwrite,
};

static int led_switch_driverinit(void)
{
    printk(KERN_INFO "led switch driver init!\n"); 
    register_chrdev(DEV_MAJOR_NUMBER, DEV_NAME, &led_switch_driverfops);
    return 0;
}

static void led_switch_driverexit(void)
{
    printk(KERN_INFO "led switch driver exit!\n");
    unregister_chrdev(DEV_MAJOR_NUMBER, DEV_NAME);
}

static int led_switch_driveropen(struct inode *inode, struct file *file)
{
    int ret, i;
    printk(KERN_INFO "Driver open!\n");
    for (i = 0; i < 4; ++i)
    {
        ret = gpio_request(sw[i], "switch");
        if (ret < 0)
            printk(KERN_INFO "Switch %d request fail!\n", i);
        gpio_direction_input(sw[i]);

        ret = gpio_request(led[i], "LED");
        if (ret < 0)
            printk(KERN_INFO "LED %d request fail!\n", i);
        gpio_direction_output(led[i], 0);
    }
    return 0;
}

static int led_switch_driverrelease(struct inode *inode, struct file *file)
{
    int i;
    printk(KERN_INFO "Driver release!\n");
    for (i = 0; i < 4; ++i)
    {
        gpio_free(sw[i]);
        gpio_free(led[i]);
    }
    return 0;
}

static ssize_t led_switch_driverread(struct file *file, char __user *buf, size_t length, loff_t *ofs)
{
    int i;
    char read_buf[4];
    printk(KERN_INFO "Reading switch states!\n");
    for (i = 0; i < 4; ++i)
    {
        read_buf[i] = gpio_get_value(sw[i]);
    }
    if (copy_to_user(buf, read_buf, sizeof(read_buf)))
    {
        printk(KERN_INFO "Failed to copy switch state to user!\n");
        return -EFAULT;
    }
    return sizeof(read_buf);
}

static ssize_t led_switch_driverwrite(struct file *file, const char __user *buf, size_t length, loff_t *ofs)
{
    int i;
    char cbuf[4];
    if (copy_from_user(cbuf, buf, sizeof(cbuf)))
    {
        printk(KERN_INFO "Failed to copy LED state from user!\n");
        return -EFAULT;
    }
    printk(KERN_INFO "Updating LED states!\n");
    for (i = 0; i < 4; ++i)
    {
        gpio_set_value(led[i], cbuf[i]);
    }
    return sizeof(cbuf);
}

module_init(led_switch_driverinit);
module_exit(led_switch_driverexit);
MODULE_LICENSE("GPL");
