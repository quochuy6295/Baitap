use test;
/*Q1: Tạo trigger không cho phép người dùng nhập vào Group có ngày tạo trước 1 năm trước */
INSERT INTO `Group` (Group_Name,Creator_ID,Create_Date)
VALUE               ('store', 3, '2019-03-02' );
DROP TRIGGER IF EXISTS nhapgroup;
DELIMITER $$
CREATE TRIGGER nhapgroup
BEFORE INSERT ON `Group`
FOR EACH ROW
BEGIN
      IF NEW.create_date <  DATE_SUB(NOW(),INTERVAL -1 YEAR) THEN
         SIGNAL SQLSTATE '12345'
         SET MESSAGE_TEXT = 'không insert được giá trị';
	  END IF ;
END $$
DELIMITER ;
 
 /*Q2: Tạo trigger Không cho phép người dùng thêm bất kỳ user nào vào department "Sale" nữa, 
 khi thêm thì hiện ra thông báo "Department "Sale" cannot add more user"*/ 
INSERT INTO `Account`	(	email,					username,		fullname,			department_ID,		position_ID,				createDate)
VALUES					('hoannam@gmail.com',		'hoannam',		'hoannam',					1,				1,					'2018-01-18');

 DROP TRIGGER IF EXISTS nhapaccount; 
DELIMITER $$
CREATE TRIGGER nhapaccount
BEFORE INSERT ON `Account`
FOR EACH ROW
BEGIN
      IF NEW.department_ID = (SELECT department_ID FROM Department WHERE Department_Name ='Sale') THEN
         SIGNAL SQLSTATE '12345'
         SET MESSAGE_TEXT = 'Department "Sale" cannot add more user';
	  END IF ;
END $$
DELIMITER ;

/* Q3: Cấu hình 1 Department có nhiều nhất là 5 user.*/
DROP TRIGGER IF EXISTS soluongaccount;
DELIMITER $$
CREATE TRIGGER soluongaccount
BEFORE INSERT ON `Account`
FOR EACH ROW
BEGIN
	  IF (SELECT COUNT(1) FROM `Account` GROUP BY Deartment_ID) > 5 THEN
      SIGNAL SQLSTATE '12345'
      SET MESSAGE_TEXT = 'Mỗi Department tối đa được 5 Account ';
	  END IF ;

END $$
DELIMITER ;

/*Q4: Cấu hình 1 bài thi có nhiều nhất là 10 Question */
DROP TRIGGER IF EXISTS soluongcauhoiexam;
DELIMITER $$
CREATE TRIGGER soluongcauhoiexam
BEFORE INSERT ON `ExamQuestion`
FOR EACH ROW
BEGIN
	  IF (SELECT COUNT(1) FROM examquestion GROUP BY exam_id) > 5 THEN
      SIGNAL SQLSTATE '12345'
      SET MESSAGE_TEXT = 'Mỗi bài thi có nhiều nhất 10 câu hỏi';
	  END IF ;
END $$
DELIMITER ;

/*Q5:Tạo trigger không cho phép người dùng xóa tài khoản có email là admin@gmail.com 
              (đây là tài khoản admin, không cho phép user xóa), 
              còn lại các tài khoản khác thì sẽ cho phép xóa và sẽ xóa tất cả các thông tin liên quan tới user đó */
 
DROP TRIGGER IF EXISTS Delete_Account;
DELIMITER $$
CREATE TRIGGER xoaaccount
BEFORE DELETE ON `Account`
FOR EACH ROW
BEGIN 
      DECLARE admin_a SMALLINT ;
      SELECT account_id INTO admin_a
      FROM `Account`
      WHERE Email = 'admin_a@gmail.com';
			IF account_id = admin_a THEN
			SIGNAL SQLSTATE '12345'
			SET MESSAGE_TEXT = 'Không thể xóa tài khoản của quản trị viên';
            ELSE IF account_id = admin_a (
			DELETE * FROM groupaccount;)
	END IF;
END $$
DELIMITER ;

/*Q9: Viết trigger không cho phép người dùng xóa bài thi mới tạo được 2 ngày*/
DROP TRIGGER IF EXISTS xoabaithi;
DELIMITER $$
CREATE TRIGGER xoabaithi
BEFORE DELETE ON Exam
FOR EACH ROW
BEGIN
      IF NEW.Create_Date =  DATE_SUB(NOW(),INTERVAL -2 DAY) THEN
         SIGNAL SQLSTATE '12345'
         SET MESSAGE_TEXT = 'Khong duoc Xóa';
	  END IF;
END $$
DELIMITER ;

/*Question 10: Viết trigger chỉ cho phép người dùng chỉ được update, delete các question khi question đó chưa nằm trong exam nào */

DROP TRIGGER IF EXISTS capnhatvaxoa;
DELIMITER $$
CREATE TRIGGER capnhatvaxoa
BEFORE UPDATE  ON Question
FOR EACH ROW
	BEGIN
		DECLARE		question_exam TINYINT;   
		SELECT		q.question_id INTO question_exam
		FROM 		Question q
		LEFT JOIN 	examQuestion eq ON q.question_id = eq.question_id
		WHERE 		eq.exam_id IS NULL;
			IF NEW.question_ID != question_exam THEN
				SIGNAL SQLSTATE '12345'
				SET MESSAGE_TEXT = 'Không thể thêm vào'; 
			END IF ;
	END $$
DELIMITER ;

/*Question 12: Lấy ra thông tin exam trong đó  
  Duration <= 30 thì sẽ đổi thành giá trị "Short time" 
 30 < duration <= 60 thì sẽ đổi thành giá trị "Medium time" 
  duration >60 thì sẽ đổi thành giá trị "Long time" */
  
  SELECT	e.exam_ID, e.create_Date, e.code,
		CASE
			WHEN	e.duration <=30 THEN 'Short time'
            WHEN	e.duration >60 THEN 'Long time'
            ELSE 'Medium time'
		END AS thoigian
  FROM Exam e;
  
/*Question 14: Thống kê số mỗi phòng ban có bao nhiêu user, nếu phòng ban nào 
không có user thì sẽ thay đổi giá trị 0 thành "Không có User" */
 SELECT department_Name,
       CASE 
            WHEN COUNT(a.account_ID) = 0 THEN 'Không có user'
            ELSE COUNT(a.account_ID)
		END AS soluongnhanvientrongphong
FROM Department as d
LEFT JOIN `Account` a ON d.Department_ID = a.Department_ID
GROUP BY a.department_ID;

 /*Question 13: Thống kê số account trong mỗi group và in ra thêm 1 column nữa có tên là the_number_user_amount và mang giá trị được quy định như sau:  
	-- Nếu số lượng user trong group =< 5 thì sẽ có giá trị là few 
    -- Nếu số lượng user trong group <= 20 và > 5  thì sẽ có giá trị là normal
    -- Nếu số lượng user trong group > 20 thì sẽ có giá trị là higher 
    */

SELECT g.GroupName, COUNT(ga.account_ID),
	CASE
		WHEN	COUNT(ga.account_ID) =< 5 THEN 'few' 
		WHEN	COUNT(ga.account_ID) <= 20 THEN 'normal'
		ELSE	'higher'
	END AS 	the_number_user_amount
FROM `Group` g 
JOIN GroupAccount ga ON g.group_ID = ga.group_ID 
GROUP BY account_ID;


