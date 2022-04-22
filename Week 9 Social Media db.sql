CREATE DATABASE social_media_db;
USE social_media_db;
CREATE TABLE user_data (
user_num INT AUTO_INCREMENT NOT NULL,
username VARCHAR(25) NOT NULL,
email VARCHAR(50) NOT NULL,
password VARCHAR(50) NOT NULL,
PRIMARY KEY (user_num)
);
CREATE TABLE comments (
comment_id INT AUTO_INCREMENT NOT NULL,
comment_content VARCHAR(100) NOT NULL,
comment_time INT NOT NULL,
user_num INT NOT NULL,
post_id INT NOT NULL,
PRIMARY KEY(comment_id),
FOREIGN KEY (user_num) REFERENCES user_data (user_num),
FOREIGN KEY (post_id) REFERENCES posts (post_id)
);
CREATE TABLE posts (
post_id INT AUTO_INCREMENT NOT NULL,
post_content VARCHAR(500) NOT NULL,
post_time INT NOT NULL,
user_num INT NOT NULL,
PRIMARY KEY (post_id),
FOREIGN KEY (user_num) REFERENCES user_data (user_num)
);