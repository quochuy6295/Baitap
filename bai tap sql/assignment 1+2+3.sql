
/* assignment 2*/
/* tạo database quản lý các bài thi đầu vào*/
CREATE DATABASE IF NOT EXISTS test;
USE test;
/* tạo bảng department*/
CREATE TABLE department
(
    department_id 		TINYINT PRIMARY KEY AUTO_INCREMENT ,
    department_name 	VARCHAR(50) NOT NULL
);
CREATE TABLE position
(
	position_id 		TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    position_name 		VARCHAR(50) NOT NULL 
);
CREATE TABLE `account`
(
	account_id			TINYINT PRIMARY KEY AUTO_INCREMENT ,
    email				VARCHAR(50) NOT NULL UNIQUE,
    username			VARCHAR(50) NOT NULL UNIQUE,
    fullname			VARCHAR(50),
    department_id		TINYINT,
    position_id 		TINYINT UNSIGNED,
    createdate 			DATE,
    FOREIGN KEY (position_id) REFERENCES `position`(position_id) ON DELETE CASCADE,
    FOREIGN KEY (department_id) REFERENCES department(department_id) ON DELETE CASCADE
);
/* tao bang group */
CREATE TABLE `group`
(
	group_id 			TINYINT AUTO_INCREMENT PRIMARY KEY,
    group_name 			VARCHAR(50) NOT NULL UNIQUE,
    create_id			TINYINT ,
    create_date			DATE
);
/* tao bang groupaccount*/
CREATE TABLE groupaccount
(
	group_id			TINYINT,
    account_id			TINYINT,
    join_date			DATE,
    PRIMARY KEY	(group_id,account_id),
    FOREIGN KEY (group_id) REFERENCES `Group`(group_id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES `account`(account_id) ON DELETE CASCADE
);
/*tạo bảng questiontype */
CREATE TABLE typequestion
(
	type_id 			TINYINT AUTO_INCREMENT PRIMARY KEY,
    type_name 			VARCHAR(20) NOT NULL
);
/* tạo bảng categoryquestion*/
CREATE TABLE categoryquestion
(
	category_id 		TINYINT  UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    category_name 		VARCHAR(255) NOT NULL UNIQUE
);
/* tạo bảng question */
CREATE TABLE question
(
	question_id			TINYINT AUTO_INCREMENT PRIMARY KEY,
    content				VARCHAR(255) NOT NULL,
    category_id			TINYINT UNSIGNED NOT NULL,
    type_id				TINYINT NOT NULL,
    creator_id			TINYINT UNSIGNED NOT NULL,
    create_date			DATE,
    FOREIGN KEY (category_id) REFERENCES categoryquestion(category_id) ON DELETE CASCADE,
    FOREIGN KEY (type_id) REFERENCES typequestion(type_id) ON DELETE CASCADE
);
/* tạo bảng answer */
CREATE TABLE answer 
(
	answer_id 			INT AUTO_INCREMENT PRIMARY KEY,
    content 			VARCHAR(255),
    question_id			TINYINT NOT NULL,
    iscorrect 			ENUM('Y','N') NOT NULL,
    FOREIGN KEY (question_id) REFERENCES question(question_id) ON DELETE CASCADE
);
/* tao bang exam*/
CREATE TABLE exam
(
	exam_id				TINYINT AUTO_INCREMENT PRIMARY KEY,
    `code`				VARCHAR(5) NOT NULL UNIQUE,
    title				VARCHAR(100) NOT NULL,
    category_id			TINYINT UNSIGNED NOT NULL,
    duration			TIME,
    creator_id			TINYINT UNSIGNED NOT NULL,
    create_date			DATE,
    FOREIGN KEY (category_id) REFERENCES categoryquestion(category_id) ON DELETE CASCADE
);
/* tao bảng examquestion */
CREATE TABLE examquestion
(
	exam_id				TINYINT NOT NULL,
    question_id			TINYINT NOT NULL,
    PRIMARY KEY (exam_id, question_id),
    FOREIGN KEY (exam_id) REFERENCES Exam(exam_id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES Question(question_id) ON DELETE CASCADE
);

/* bài 2 */
/* insert giá trị vào bảng */
/* insert giá trị vào department */
INSERT INTO department 
VALUES 
							(1,'Engineer'),
                            (2,'IT'),
                            (3,'SALE'),
                            (4,'quality control'),
                            (5,'security'),
                            (6,'president'),
                            (7,'doctor'),
                            (8,'manager'),
                            (9,'munufacturing'),
                            (10,'spector');

/* nhap du lieu cho bang position */
INSERT INTO `position`(position_name)
VALUES	
					('intership'),             			
                    ('Plant Manager'),		   			
					('Finance Director'),	  			
					('Managing Dpositionirector'),	   	
					('developer'),			   				
					('Technician'),			   					
					('official'),			   			
					('Customers Service'),     			
					('Department head'),	   			
					('dev');				
                    
/* nhập dữ liệu cho bảng account */
INSERT INTO `account` ( email,			   			username,				   fullname,		 	department_id,				position_id, 		  createdate)
VALUES				  ('kiman@gmal.com',			 'kiman',				'nguyen kim an',	      	8,               			2,				'1980-06-12'),
					  ('bui.thibe@gmal.com',		 'thibe.bui',         	'bui thi be',          		9,               			5,              '1996-03-18'),
					  ('quocnam@gmail.com',	    	 'quocnamepu', 			'nguyen quoc nam',	  		5,							6,				'1997-02-13'),
                      ('thidan.phan@gmail.com',	     'thidanhumg',			'phan thi dan',		 		9,							5,				'2015-04-15'),
                      ('quochungvn@gmail.com',	     'quochung67',			'nguyen quoc hung',			2,				 			9,				'2013-11-18'),
                      ('kimlanqb@gmail.com',	     'kimlan97',			'phan kim lan',				8,							10,				'2006-05-20'),
                      ('vantrind@gmail.com',	     'vantri36',			'vu van tri',			 	3, 				 			1,				'2007-09-28'),
                      ('huynhhoa@gmal.com',			 'huynhhoa92',			'huynh thi hoa',		 	4,				 			8,				'2009-01-24'),
                      ('vansuuhn@gmail.com',	     'vansuu34',			'ngo van suu',				7,				 			3,				'2000-03-26'),
                      ('vandungtb@gmal.com',		 'vandung10',			'tran van dung', 		 	4,				 			5,				'2014-05-14');
                      
/* nhập dữ liệu cho bảng group */
INSERT INTO `group`   	(group_name,	         create_id,				 create_date)
VALUES
						('quyettam',					1,				'2010-01-11'),
						('SEV',							2,				'2015-02-09'),
                        ('SEIKO',						4,				'2014-12-11'),
                        ('HOYA',						2,				'2005-01-31'),
                        ('HOFA',						1,				'2009-02-03'),
                        ('SV',							1,				'2001-02-01'),
                        ('CHA',							3,				'2003-11-21'),
                        ('HNT',							6,				'2005-03-26'),
                        ('Samsung',						1,				'2008-11-20'),
                        ('LG',							1,				'2000-11-26');
                        
/* nhap du lieu cho bang groupaccount */
INSERT INTO groupaccount	(group_id, 		account_id, 		join_date)
	VALUES	
                            (	1,				2,				'2020-03-29'),
                            (	2,				9,				'2010-07-25'),
                            (	2,				2,				'2020-05-11'),
                            (	3,				9,				'2020-02-25'),
                            (	2,				3,				'2018-08-25'),
                            (	4,				2,				'2020-03-25'),
                            (	10,				4,				'2019-09-25'),
                            (	3,				6,				'2010-03-20'),
                            (	4,				5,				'2014-04-25'),
                            (	1,				3,				'2017-08-14');
                            
 /* nhập dữ liệu cho bảng typequestion */                            
INSERT INTO Typequestion	(type_name)
	VALUES
							('Essay'),
                            ('Multiple-Choice'),
                            ('True or Fail'),
                            ('Yes or No'),
							('Yes or No'),
							('True or Fail'),
							('Multiple-choice'),
							('Yes or No'),
							('True or fail'),
                            ('Yes or No');
                            
/* nhập dữ liệu cho bảng categoryquestion */
INSERT INTO Categoryquestion	(category_name)
	VALUES
								('Java'),
                                ('.NET'),
                                ('SQL'),
                                ('Postman'),
                                ('Ruby'),
                                ('C'),
                                ('C++'),
                                ('gift'),
                                ('google drive'),
                                ('internet');
                                
/* nhập dữ liệu cho bảng content */
INSERT INTO	Question	(content,												category_id,	  	type_id,	  	creator_id,			create_date)
	VALUES	
						('SQL là từ viết tắt của:',									3,					1,			1,				'2016-02-12'),
                        ('Tim hieu ve muc dich su dung SQL',						2,					1,			1,				'2015-03-01'),
                        ('trong mang may tính,share có ý nghĩa gì?',				2,					1,			2,				'2012-01-31'),
						('Tac dung cua cau lenh',									1,					4,			3,				'2010-03-21'),
						('Giá trị NULL được coi là rỗng hoặc bằng 0',				3,					4,			5,				'2020-06-21'),
                        ('Cac cach lap co so du lieu',								2,					4,			6,				'2017-04-03'),
						('tim hieu loi truong gap',									5,					6,			6,				'2015-09-21'),
                        ('cách xóa tập tin và thư mục',								2,					1,			3,				'2003-02-15'),
                        ('tac dung cua lenh delete',								6,					4,			3,				'2012-03-09'),
                        ('ram và rom co tac dung gi',								9,					10,			5,				'2018-04-09');
                        
/* nhập dữ liệu cho bảng answer */                        
INSERT INTO	 answer		(content,					   			question_id,						iscorrect)
VALUES
						('Structured Query Language',				1,								'Y'),
						('y nghia cua sql',							3,								'Y'),
                        ('chia se voi moi ngưoi',					1,								'N'),
                        ('cac cau lenh trong sql',					2,								'N'),
                        ('rong',									1,								'Y'),
                        ('insert into',								4,								'N'),
                        ('erro',									1,								'Y'),
                        ('delete tap tin',							6,								'N'),
                        ('xoa tap tin',								7,								'Y'),
                        ('co so luu tru du lieu',					9,								'Y');
                        
/* nhập dữ liệu cho bang exam */
INSERT INTO exam         (`code`,         		title,         							 category_id,		duration,           creator_id,           	 create_date)
VALUES
						 ('a135',			'khao sat trinh do cua sinh vien',		  		1,				'00:45',	           1,          			'2016-01-18'),
                         ('p152',			'tim hieu ve sql',		  						3,				'00:45',	           3,           		'2018-03-12'),
                         ('c254',			'bai kiem tra dau vao ',		  				4,				'01:30',	           5,         			'2016-04-26'),
						 ('d365',			'bai kiemt tra ket thuc mon',					6,				'00:45',	           6,          			'2012-06-30'),
                         ('e145',			'cau truc cau hoi',		  						8,	            '01:30',	           1,           		'2014-08-18'),
                         ('f254',			'de thi thu',		  							2,		        '01:00',	           5,          			'2016-01-14'),
                         ('f135',			'bai thi giua mon',		  						1,		        '00:45',	           3,          			'2015-02-16'),
                         ('g265',			'ket qua va cam nhan khoa hoc',					5,  		    '00:45',	           2,          			'2011-05-15'),
                         ('e144',			'danh gia dau ra',		  						4,		        '01:00',	           3,          			'2015-06-21'),
                         ('h156',			'tim hieu cau truc may tinh',					3,		        '01:00',	           2,          			'2014-09-24'),
                         ('i246',			'tim hieu ve co so du lieu',					1, 		        '00:45',	           3,          			'2016-05-26'),
                         ('k54',			'cac cau lenh trong co so du lieu',				2,  	        '01:00',	           5,          			'2018-11-28');

/* cau 2:Lấy ra tất cả các phòng ban */
SELECT 
    *
FROM
    department;
    
/* cau 3:Lấy ID của phòng ban 'sale' */
SELECT 
    *
FROM
    department
WHERE
    department_name = 'sale';
    
/* cau 4:Lấy account có thông tin full name dài nhất và sắp xếp chúng theo thứ tự giảm dần */
SELECT 
    fullname, LENGTH(fullname)
FROM
    `account`
ORDER BY LENGTH(fullname) DESC;

/* cau 5:Lấy account có thông tin full name dài nhất và thuộc phòng ban có id =3 */
SELECT		*
FROM		`Account`
WHERE		char_length(fullname) = (SELECT 	MAX(char_length(fullname))
										FROM	`Account`
                                        WHERE	department_id = 3)
			AND department_id = 3;

/* cau 6:Lấy thông tin group tham gia trước ngày 20-12-2019 */
SELECT 
    group_name
FROM
    `group` as gr
WHERE
    gr.create_date < '2019-12-20';
    
/*  cau 7:Lấy ra ID của question >=4 câu trả lời */
SELECT 
    question_id, count(answer_id)
FROM
	answer
GROUP BY question_id
HAVING COUNT(answer_id) >4;

/* cau 8:Lấy ra mã đề thi có thời gian >=60 min và được tạo trước ngày 20/12/2019 */
 SELECT 
    ex.`code`
FROM
    exam as ex
WHERE
    ex.duration >= '01:00'
        AND ex.create_date > '2019-12-20';
        
 /* cau 9:Lấy ra 5 group được tạo gần đây nhất */
 SELECT 
    group_name, create_date
FROM
    `group`
ORDER BY create_date DESC
LIMIT 5;

 /* cau 10:Đếm số nhân viên thuộc derparment có id=2 */
 SELECT 
    department_name, COUNT(department_name) as so_nhan_vien
FROM
    department join `account` 
ON
	department.department_id = `account`.department_id
WHERE `account`.department_id =2
GROUP BY department_name;

/* cau 11:Lấy ra nhân viên có tên bắt đầu bằng chữ 'D' và kết thúc bằng chữ 'O' */
SELECT 
    department_name
FROM
    department
WHERE
    department_name LIKE ('D%O');
    
/* cau 12: xóa tất cả các exam tạo trước ngày 20/12/2019 */
DELETE FROM exam 
WHERE
    create_date > '2019-12-20';
    
/* cau 13: xoa tat ca cac question bat dau bang 'cau hoi'*/
DELETE FROM question
WHERE 
	question.content LIKE ('cau hoi%');

/* cau 14: update thông tin của account id=5 tên nguyễn bá lộc và email loc.nguyenba@vti.com.vn */
UPDATE `account` 
SET 
    fullname = 'nguyen ba loc',
    email = 'loc.nguyenba@vti.com.vn'
WHERE
    account_id = 5;
SELECT * FROM `account`;


                




 
 
 
 
 
 




   



























































 

 

 
 
 
 
 


                         
                         
                         
                         
                        

                      
                        
                        

	












