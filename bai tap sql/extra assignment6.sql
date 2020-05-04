
CREATE database assignment_6;
use assignment_6;
CREATE table work_done
(
		workdone_id 			TINYINT PRIMARY KEY AUTO_INCREMENT,
        employee_id 			TINYINT NOT NULL UNIQUE,
        module_id 				TINYINT NOT NULL UNIQUE,
        workdonedate			DATE,
        workdonedescription		DATE,
        workdonestatus			DATE
);
CREATE table project_modules
(	
		module_id 						TINYINT PRIMARY KEY AUTO_INCREMENT,
        project_id 						TINYINT NOT NULL UNIQUE,
        employee_id 					TINYINT NOT NULL UNIQUE,
		projectmoduledate				DATE NOT NULL,
        projectmodulecompleteon			DATE NOT NULL,
        projectmoduledescription		DATE NOT NULL,
        FOREIGN KEY (employee_id) REFERENCES work_done(employee_id) ON DELETE CASCADE
);
CREATE table project 
(
		Project_id				TINYINT PRIMARY KEY AUTO_INCREMENT,
        manager_id 				TINYINT UNIQUE,
        Project_name 			VARCHAR(50) NOT NULL UNIQUE,
        projectstartdate 		DATE NOT NULL,
        projectdescription 		TEXT NOT NULL,
        projectdetailt			VARCHAR(200) NOT NULL,
        projectcompletedon 		DATE,
        FOREIGN KEY (project_id) REFERENCES  project_modules(project_id) ON DELETE CASCADE
);
CREATE TABLE employee
(
		employee_id				TINYINT PRIMARY KEY AUTO_INCREMENT,
        employeelastname 		VARCHAR(50) NOT NULL,
        employeefirstname 		VARCHAR(50) NOT NULL,
        employeehiredate		DATE,
        employeestatus			TEXT,
		supervisor_id  			TINYINT NOT NULL,
        socialsecurityname 		VARCHAR(50),
		FOREIGN KEY (employee_id) REFERENCES work_done(employee_id) ON DELETE CASCADE,
        FOREIGN KEY (supervisor_id) REFERENCES project(manager_id) ON DELETE CASCADE,
        FOREIGN KEY (employee_id) REFERENCES project_modules(employee_id) ON DELETE CASCADE,
        FOREIGN KEY (supervisor_id) REFERENCES employee(employee_id) ON DELETE CASCADE




    