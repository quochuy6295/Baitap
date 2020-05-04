/* extra assignment 1*/
/* cau 1*/
DROP DATABASE fresher;
CREATE DATABASE IF NOT EXISTS fresher;
USE fresher;
CREATE TABLE TraineeID
(	
		TraineeID 				TINYINT PRIMARY KEY AUTO_INCREMENT,
        Full_name 				VARCHAR(50) NOT NULL,
        Birth_date				DATETIME,
        Gender					ENUM ('male','female','unknow'),
        ET_IQ					INT UNSIGNED CHECK(ET_IQ<20),
        ET_Gmath				INT UNSIGNED CHECK(ET_Gmath<20),
        ET_English				INT UNSIGNED CHECK(ET_English<50),
        Training_class			VARCHAR(20),
        Evaluation_notes		text
);

/* cau 2: thêm trường VTI_Account với điều kiện not null & unique*/
ALTER TABLE TraineeID
ADD COLUMN VTI_account  TINYINT NOT NULL UNIQUE;

/*bài 2: tạo bảng */
CREATE TABLE bang2
(
		ID				INT PRIMARY KEY AUTO_INCREMENT,
        `NAME`			NCHAR NOT NULL,
        `code`			NUMERIC(5),
        Modifiedate		DATETIME
);

/*bai 3: tao bang */
CREATE TABLE bang3
(
		ID				INT PRIMARY KEY AUTO_INCREMENT,
        `name`			VARCHAR(50),
        Brithdate		DATE,
        Gender			BIT,
        ISDeleteFlag	BIT
);



        