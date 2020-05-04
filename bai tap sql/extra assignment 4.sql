CREATE DATABASE assignment4;
USE assignment4;
CREATE TABLE department
(
	Department_Number     TINYINT PRIMARY KEY,
    Department_Name		  VARCHAR(50) NOT NULL
);

CREATE TABLE Employee_Table
(
	Employee_Number		  TINYINT PRIMARY KEY,
    Employee_Name		  VARCHAR(50) NOT NULL,
    Department_Number	  TINYINT NOT NULL,
	FOREIGN KEY (Department_Number) REFERENCES department(Department_Number) ON DELETE CASCADE
);

CREATE TABLE Employee_Skill_Table 
(
	Employee_Number		  TINYINT NOT NULL,
    Skill_Code			  VARCHAR(50) NOT NULL,
    Date_Registered		  DATE
);

ALTER TABLE Employee_Skill_Table 
ADD FOREIGN KEY (Employee_Number) REFERENCES Employee_Table(Employee_Number) ON DELETE CASCADE;

/* Them 10 bản ghi vào table */
INSERT INTO department ( Department_Number,								Department_Name)
VALUES
					   (     12,										'sale'),
                       (     11,										'security'),
                       (	10,											'munufacturing'),
                       (	 9,											'quality control'),
                       (	 5,											'account'),
					   (     4,										    'support'),
                       (	 2,											'parts vouchers'),
					   (	 1,											'Delivery department'),
                       (     3,											'design department'),
                       (     7,											'Synthetic parts');

INSERT INTO Employee_Table ( Employee_Number,					Employee_Name,						Department_Number)
VALUES	
						   (    12,							'nguyen thi nhung',								2),
                           (	5,							'vu thi nhung',									1),
                           (	4,							'tran thi bich nga',							3),
                           (	3,							'vu bao ly',									5),
                           (	2,							'la hoang oanh',								1),
                           (	1,							'to thu uyen',									11),
                           (	6,							'bui van cuong',								9),
                           (	7,							'quach kien',									1),
                           (	8,							'bui anh tuan',									9),
                           (	9,							'le anh tuan',									1);
         
INSERT INTO Employee_Skill_Table (Employee_Number,				Skill_Code,							Date_Registered)
VALUES
								 (		5,						'java',								'2005-10-12'),
                                 (		4,						'C++',								'2010-11-12'),
                                 (		3,						'C',								'2011-05-10'),
                                 (		2,						'Ruby',								'2006-03-02'),
								 (		1,						'Java',								'2006-02-06'),
								 (		6,						'C',								'2004-03-02'),
                                 (		4,						'sql',								'2002-02-06'),
                                 (		1,						'mysql',							'2006-05-01'),
                                 (		3,						'C++',								'2015-04-02'),
                                 (		2,						'C',								'2003-02-08');
        
/*Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java*/
SELECT * FROM Employee_Table
JOIN Employee_Skill_Table ON Employee_Table.Employee_Number = Employee_Skill_Table.Employee_Number
GROUP BY Employee_Skill_Table.Employee_Number
HAVING Employee_Skill_Table.Skill_Code = 'java';

/*Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên*/
SELECT de.Department_Name,count(department_name) FROM department as de JOIN employee_table as em
ON de.Department_Number = em.Department_Number
GROUP BY em.Department_Number
HAVING count(em.Department_Number) > 3;

/*Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban*/
SELECT em.Employee_Name, de.Department_Name FROM employee_table as em RIGHT JOIN department as de
ON de.Department_Number = em.Department_Number
ORDER BY de.Department_Name;

/*Viết lệnh để lấy ra danh sách nhân viên có > 1 skills*/
SELECT em.Employee_Name, count(el.Skill_Code) FROM employee_table as em JOIN employee_skill_table as el
ON em.Employee_Number = el.Employee_Number
GROUP BY em.Employee_Name
HAVING COUNT(el.Skill_Code) >1;























