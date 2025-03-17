-- 데이터베이스 생성
create database bowl_db;
grant all privileges on mydb.* to 'myUser' @'%';
-- 테이블 생성
use bowl_db;
CREATE TABLE IF NOT EXISTS score_records (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    play_date DATE NOT NULL,
    score INT NOT NULL
);

use bowling_db;
INSERT INTO score_records (username, play_date, score)
VALUES ('신짱구','2025-01-05',120),
('신짱구','2025-01-02',120),
('신짱구','2025-01-07',120),
('신짱구','2025-01-31',120),
('신짱구','2025-01-25',120),
('맹구','2025-02-05',200),
('김철수','2025-01-05',160),
('신짱구','2025-01-05',120),
('훈이','2025-01-05',140);

use bowling_db;
select *
from score_records;