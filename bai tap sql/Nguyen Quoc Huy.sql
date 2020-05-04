/* tạo database kiem tra */
CREATE DATABASE kiemtra;
USE kiemtra;
/* tao bảng student */
CREATE TABLE student
(
		`RN`		 TINYINT PRIMARY KEY AUTO_INCREMENT,
        `Name`		 VARCHAR(50) NOT NULL,
        Age			 TINYINT UNSIGNED NOT NULL,
        Gender		 ENUM('male','female','null') 
);
/* tạo bảng subject */
CREATE TABLE `subject`
(
		sID 		TINYINT PRIMARY KEY AUTO_INCREMENT,
        sName 		VARCHAR(50) NOT NULL UNIQUE
);
/* tạo bảng studentsubject */
CREATE TABLE studentsubject
(
		RN 			TINYINT NOT NULL,
        sID 		TINYINT NOT NULL,
        Mark 		TINYINT NOT NULL,
        `Date` 		DATETIME,
		PRIMARY KEY (RN, sID),
        FOREIGN KEY (RN) REFERENCES student(RN) ON DELETE CASCADE,
        FOREIGN KEY (sID) REFERENCES `subject`(sID) ON DELETE CASCADE
);
USE kiemtra;
/*insert giá trị vào bảng */
INSERT INTO student ( RN,			   			`Name`,				   Age,		 	Gender)			
VALUES				 
					(1,						'nguyen van cong',			18,			'male'),
                    (2, 					'nguyen chi dung',			20,			'female'),
                    (3, 					'hoang phi hong',			18,			'female');

/* insert giá trị vào bảng student*/
INSERT INTO `subject` (sNAME)
VALUES
				('math'),
                ('geography'),
                ('history');

/* insert giá trị vào bảng studentsubject */
INSERT INTO studentsubject (RN,			sID,				Mark,					`Date`)
VALUES 
						   (2,			3,					 8,						'2020-2-13'),
                           (3,			2,					 6,						'2016-2-15'),
						   (1,			2,					 7,						'2014-5-13');
 
 /*Lấy tất cả các môn học không có bất kì điểm nào*/
 SELECT 
    sj.sname as tencuamonhoc
FROM
    `subject` AS sj
WHERE
    sID NOT IN (SELECT DISTINCT
            sID
        FROM
            studentsubject);
 
 /* Lấy danh sách các môn học có ít nhất 2 điểm*/
 SELECT 
    sj.sname AS tencuamonhoc, COUNT(ss.mark) AS soluongdiem
FROM
    `subject` AS sj
        JOIN
    studentsubject AS ss ON sj.sID = ss.sID
GROUP BY ss.sID
HAVING COUNT(ss.mark) >= 2;
 
 /*cau c:Tạo "StudentInfo" view có các thông tin về học sinh bao gồm:
RN,sID,Name, Age, Gender, sName, Mark, Date. Với cột Gender show
Male để thay thế cho 0, Female thay thế cho 1 và Unknow thay thế cho
null. */
 CREATE VIEW studentinfo AS
    SELECT 
        st.RN,
        sj.sID,
        st.age,
        sj.sname,
        ss.mark,
        ss.`date`,
        st.Gender = CASE st.Gender
            WHEN 'male' THEN 0
            WHEN 'female' THEN 1
            WHEN 'null' THEN 'unknow'
        END
    FROM
        student AS st
            JOIN
        studentsubject AS ss ON st.RN = ss.RN
            JOIN
        `subject` AS sj ON ss.sID = sj.sID;
 USE kiemtra;
 /*Tạo trigger cho table Subject:
a. Trigger CasUpdate: khi thay đổi data của cột sID, thì giá trị của
cột sID của table StudentSubject cũng thay đổi theo
/*trigger CasUpdate*/
USE kiemtra;
DROP TRIGGER IF EXISTS trigger_casupdate;
DELIMITER $$ 
CREATE TRIGGER trigger_casupdate
AFTER INSERT ON `subject`
FOR EACH ROW
BEGIN  
 UPDATE studentsubject.sID
 SET studentsubject.sID = inserted
 WHERE `subject`.sID = studentsubject.sID;
END $$ 
DELIMITER $$

/*Trigger casDel: Khi xóa 1 student, các dữ liệu của table
StudentSubject cũng sẽ bị xóa theo*/
DROP TRIGGER IF EXISTS trigger_casdel;
DELIMITER $$
CREATE TRIGGER trigger_casdel
AFTER DELETE ON `subject`
FOR EACH ROW
BEGIN 
	DELETE 
    FROM studentsubject 
    WHERE sID = old.sid;
END$$
DELIMITER $$

/*Viết 1 thủ tục (có 2 parameters: student name, mark). Thủ tục sẽ xóa tất cả
các thông tin liên quan tới học sinh có cùng tên như parameter và tất cả
các điểm nhỏ hơn của các học sinh đó.
Trong trường hợp nhập vào "*" thì thủ tục sẽ xóa tất cả các học sinh*/
DELIMITER $$
DROP PROCEDURE IF EXISTS xoahocsinh;
CREATE PROCEDURE xoahocsinh(studentname VARCHAR(50), mark INT)
AS 
BEGIN 
	DELETE FROM student as st JOIN student subject as sj 
    ON st.RN = sj.RN
    WHERE st.`name` = studentname AND sj.mark < mark;
END $$
DELIMITER $$
	

 

