##数据建表
CREATE TABLE `user` (
   ID varchar(36) primary key,
	NAME varchar(100),
	PWD varchar(50),
	CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	UPDATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE `blog` (
  `id` int(11) PRIMARY KEY auto_increment,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) NOT NULL,
  `pub_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);