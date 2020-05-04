/* extra assignment 1*/
/* cau 1*/
DROP DATABASE fresher;
CREATE DATABASE IF NOT EXISTS fresher;
USE fresher;
CREATE TABLE TraineeID
(	
		TraineeID 				TINYINT PRIMARY KEY AUTO_INCREMENT,
        Full_name 				VARCHAR(50) NOT NULL,
        Birth_date				DATE,
        Gender					ENUM ('male','female','unknow') NOT NULL,
        ET_IQ					INT UNSIGNED CHECK(ET_IQ<20) NOT NULL,
        ET_Gmath				INT UNSIGNED CHECK(ET_Gmath<20) NOT NULL,
        ET_English				INT UNSIGNED CHECK(ET_English<50) NOT NULL,
        Training_class			VARCHAR(20) NOT NULL,
        Evaluation_notes		text
);

/* cau 2: thêm trường VTI_Account với điều kiện not null & unique*/
ALTER TABLE TraineeID
ADD COLUMN VTI_account  INT NOT NULL UNIQUE;

/*assignment 3*/
INSERT INTO TraineeID (Full_name,				    Birth_date,			Gender,			ET_IQ,			ET_Gmath,			ET_English,			Training_class,  			Evaluation_notes,			VTI_account)
VALUE
					  (	'nguyen van dung',			'2017-10-11',		'male',			  6,                3,                     2,                 'A12B',                	'GOOD',							21),
                      ('nguyen thuy dung',			'2015-12-10',		'female',		  6,                1,                     4,                 'A12',                    'GOOD',							14),
					  ('Nguyen tra my',				'2014-5-3',			'female',		  6,                5,                     2,                  'B12',                   'Very good',						11),
                      ('Nguyen van hao',			'2010-2-21',		'male',			  4,                2,                     3,                  'C12',                   'Bad',                          15),
                      ('Trinh cong son',			'2008-12-10',		'male',			  3,                1,                     4,                  'C20',					'Very Bad',                     12),
                      (	'nguyen hong hanh',			'2006-12-06',		'female',		  3,                2,                     5,                  'D10',                   'good',                        	13),
                      ( 'Nguyen khanh linh', 		'2004-12-1',		'female', 		  2,                1,                     9,                  'A12',					'good',                         22),
                      ( 'nguyen van toan',			'2003-10-15',		'male',			  8,                7,                     6,                  'B20',					'noon',							10),
                      ( 'tran khanh toan',			'2004-10-12',		'female',	      8,                6,					   3,				    'A40',					 'good',						20),
                      ( 'huynh thi thuan',			'2006-10-18',		'male',			  6,                7,                     5,                   'A20',                   'noon',                        26);
                      
/*cau 2: *Viết lệnh để lấy ra tất cả các thực tập sinh đã vượt qua bài test đầu vào,
nhóm chúng thành các tháng sinh khác nhau */ 
SELECT full_name 
FROM traineeID 
WHERE Evaluation_notes = 'good'
GROUP BY birth_date;

/* cau 3: Viết lệnh để lấy ra thực tập sinh có tên dài nhất, lấy ra các thông tin sau:
tên, tuổi, các thông tin cơ bản (như đã được định nghĩa trong table)*/
SELECT * FROM traineeID 
WHERE char_length(Full_name) = (SELECT MAX(length(full_name)) from traineeID);

/*Viết lệnh để lấy ra tất cả các thực tập sinh là ET, 1 ET thực tập sinh là
những người đã vượt qua bài test đầu vào và thỏa mãn số điểm như sau:
 ET_IQ + ET_Gmath>=20
 ET_IQ>=8
 ET_Gmath>=8
 ET_English>=18 */

SELECT * FROM traineeID 
WHERE SUM(traineeID.ET_IQ + traineeID.ET_Gmath) >=20;


/*xóa thực tập sinh có TraineeID = 3*/

DELETE FROM traineeID 
WHERE TraineeID =3;

/*Thực tập sinh có TraineeID = 5 được chuyển sang lớp "2". Hãy cập nhật
thông tin vào database*/
UPDATE traineeid
SET Training_class =2 
WHERE Traineeid=5;





        