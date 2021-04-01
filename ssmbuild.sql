CREATE DATABASE `ssmbuild` ;
USE `ssmbuild`;
DROP TABLE IF EXISTS `books`;
create table `books`(
`bookID` INT(10) NOT null AUTO_INCREMENT COMMENT '书主键id',
`bookName` VARCHAR(255) not null COMMENT '书名',
`bookCounts` int(10) not null COMMENT '书的数量',
`detail` VARCHAR(255) COMMENT '书的描述',
KEY `index_bookId` (`bookID`)
)ENGINE INNODB DEFAULT CHARSET=utf8 COMMENT 'ssm图书信息表';

insert into ssmbuild.books  (`bookID`,`bookName`,`bookCounts`,`detail`) VALUES
(1,'java','从入门到放弃'),
(2,'MySql','从删库到跑路'),
(3,'Linux','从进门到进牢');