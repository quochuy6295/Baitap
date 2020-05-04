/*Exercise 1: Tiếp tục với Database Testing System*/
/*Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các
account thuộc phòng ban đó*/
USE test;
DROP PROCEDURE IF EXISTS thongtin;
DELIMITER $$
CREATE PROCEDURE thongtin (in nhapthongtin INT)
		BEGIN 	
        SELECT ac.account_id, ac.fullname 
        FROM `account` as ac
        WHERE department_id = nhapthongtin;
        END$$
DELIMITER $$

CALL thongtin(5);

/*Question 2: Tạo store để in ra số lượng account trong mỗi group*/
DROP PROCEDURE IF EXISTS soluongaccmoigroup;
DELIMITER $$
CREATE PROCEDURE soluongaccmoigroup(in nhapthongtin INT)
		BEGIN 
        SELECT COUNT(account_id) as soluongthanhvien
        FROM groupaccount 
        GROUP BY group_id
        HAVING group_id = nhapthongtin;
        END$$
DELIMITER $$

/*Question 3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo
trong tháng hiện tại*/
DROP PROCEDURE IF EXISTS type_qu
DELIMITER $$
CREATE PROCEDURE type_qu(IN nhapthongtin INT)
BEGIN
	SELECT ty.type_id, count(qu.question_id)
    FROM question 
    WHERE MONTH(qu.type_id) = MONTH(now())
    GROUP BY qu.type_id
	HAVING nhapthongtin = ty.type_id;
END $$
DELIMITER $$
USE test;
/*Question 4: Tạo store để trả ra id của type question có nhiều câu hỏi nhất*/
DROP PROCEDURE IF EXISTS typequestion;
DELIMITER $$
CREATE PROCEDURE typequestion(OUT qu INT)
	BEGIN 
	SELECT ty.type_id INTO qu
	FROM question as qu JOIN typequestion as ty
	ON qu.type_id = ty.type_id
	JOIN answer as an 
	ON an.question_id = qu.question_id
	GROUP BY an.question_id, qu.type_id
	ORDER BY COUNT(an.answer_id) desc
	LIMIT 1;
	END $$
DELIMITER $$

/*Question 5: Sử dụng store ở question 4 để tìm ra tên của type question*/
SET @qu_id = 0;
CALL typequestion(@qu_id);
SELECT type_name 
FROM typequestion
WHERE type_id = @qu_id;

/*question 6: Viết 1 store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên
chứa chuỗi của người dùng nhập vào hoặc trả về user có username chứa chuỗi của
người dùng nhập vào*/
CREATE VIEW thongtin as 
SELECT group_name as tengroup FROM `group`;
CREATE VIEW thongtinaccount as 
SELECT `account`.username as tenaccount FROM `account`;
DROP PROCEDURE IF EXISTS usernguoinhap;
DELIMITER $$
CREATE PROCEDURE usernguoinhap(IN nhapthongtin VARCHAR(50))
	BEGIN 
	SELECT tengroup AS groupName, NULL AS accountName
	FROM thongtin
    WHERE tengroup LIKE CONCAT ('%',nhapthongtin,'%')
    UNION
    SELECT NULL AS groupName, tenaccount AS accountName
	FROM thongtinaccount
    WHERE tenaccount LIKE CONCAT ('%',nhapthongtin,'%');
    END $$
DELIMITER $$

/*question 7:Viết 1 store cho phép người dùng nhập vào thông tin fullName, 
email và trong store sẽ tự động gán 
username sẽ giống email nhưng bỏ phần @..mail đi
positionID: sẽ có default là developer 
departmentID: sẽ được cho vào 1 phòng chờ 
Sau đó in ra kết quả tạo thành công*/
use test;
DROP PROCEDURE IF EXISTS bophanaccount
DELIMITER $$
CREATE PROCEDURE bophanaccount (IN email varchar(50), in fullname varchar(50))
BEGIN 
	DECLARE username varchar(50) default substring_index (email,@,'1');
    DECLARE positionid TINYINT UNSIGHED DEFAULT 1;
    DECLARE department_id tinyint unsighed default 10;
    DECLARE createdate DATETIME default now();
		INSERT INTO `account` (email,username,fullname,department_id, position_id, createdate)
		VALUES
						  (email,username,fullname, department_id, positionid,createdate);
	SELECT * FROM `account` as A
    WHERE A.username = username;
END $$
DELIMITER $$

/*cau 8:Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice
-- để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất*/

DROP PROCEDURE IF EXISTS sp_maxContentWithTypeName;
DELIMITER $$
CREATE PROCEDURE sp_maxContentWithTypeID
(IN in_TypeName VARCHAR(15))
BEGIN
	IF (in_TypeName = 'Essay') THEN
		SELECT	Content, MAX(LENGTH(Content))
		FROM	Question
		WHERE	TypeID = 1;
	ELSEIF (in_TypeName = 'Multiple-Choice') THEN
		SELECT	Content, MAX(LENGTH(Content))
		FROM	Question
		WHERE	TypeID = 2;
	END IF;
END $$
DELIMITER $$

/*Question 9: Viết 1 store cho phép người dùng xóa exam dựa vào ID*/
DROP PROCEDURE IF EXISTS examid 
DELIMITER $$
CREATE PROCEDURE examid ( IN id TINYINT UNSIGNED)
BEGIN 
	DELETE 
    FROM Exam 
    WHERE exam_id = id;
    SELECT * FROM exam;
END $$
DELIMITER $$

/*Question 10: Tìm ra các exam được tạo từ 3 năm trước và xóa các exam đó đi */
DROP PROCEDURE IF EXISTS exam3nam
DELIMITER $$
CREATE PROCEDURE exam3nam ()
BEGIN 
	WITH examid3year AS(
    SELECT examid
    from exam 
    WHERE (year(now()) - year(createdate))>3)
    SELECT * FROM examid3year;
    DELETE 
    FROM exam 
    WHERE examID = (SELECT * FROM examid3year);
END $$
DELIMITER $$


    



	
