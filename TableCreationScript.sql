CREATE TABLE STUDENT(
	S_ID	VARCHAR(10) NOT NULL,
	S_NAME	VARCHAR(50) NOT NULL,
	S_SURNAME	VARCHAR(50) NOT NULL,
	S_DOB	DATE NOT NULL,
	S_GENDER	VARCHAR(1) NOT NULL,
	D_CODE	VARCHAR(8) NOT NULL,
	PRIMARY KEY(S_ID)
);

CREATE TABLE MODULE (
	M_CODE	VARCHAR(7) NOT NULL,
	M_NAME	VARCHAR(50) NOT NULL,
	M_CREDIT	INT NOT NULL,
	M_DURATION	INT,
	PRIMARY KEY(M_CODE)
);

CREATE TABLE DEGREE(
	D_CODE	VARCHAR(7) NOT NULL,
	D_NAME	VARCHAR(60) NOT NULL,
	D_MIN_APS	INT NOT NULL,
	PRIMARY KEY(D_CODE)
);

CREATE TABLE BRIDGE(
	S_ID	CHAR(9) NOT NULL,
	M_CODE	VARCHAR(9) NOT NULL,
	FINAL_MARK	INT NOT NULL,
	PRIMARY KEY(S_ID,M_CODE),
	FOREIGN KEY(M_CODE) REFERENCES MODULE(M_CODE),
	FOREIGN KEY(S_ID) REFERENCES STUDENT(S_ID)
);

INSERT INTO MODULE VALUES
('APM1A10','Introduction to Statics',4,5),
('APM1A1E','Applied Mathematics 1E',4,5),
('APM1A2E','Applied Mathematics 2E',4,5),
('APM1B10','Introduction to Dynamics',4,5),
('CSC1A10','Introduction to algorithm development',4,5),
('CSC2A10','Object oriented programming',4,5),
('CSC3A10','Advanced data structures and algorithms',4,5),
('IFM1A10','Introduction to algorithm development',4,5),
('IFM2A10','Database design',4,5),
('IFM3A10','Introduction to software engineering',4,5);

INSERT INTO STUDENT VALUES
('201465128','Tami','Davis','2006/01/06','F','BSIT01'),
('201547623','Grace','Peterson','1996/09/01','F','BSIT02'),
('201553421','John','Mody','1999/11/02','M','BSITE1'),
('201554321','Dave','Miller','2000/06/18','M','BSIT01'),
('201554987','Mary','Taylor','1996/08/11','F','BSIT02'),
('201556123','Jane','Jackson','1997/02/14','F','BSITE1'),
('201556789','Ron','Harris','1997/01/18','M','BSIT01'),
('201568745','Sheldon','Leatham','1995/06/18','M','BSIT02'),
('201587643','Thabo','Walker','1997/01/29','M','BSITE1'),
('201612397','Lai','Reiser','1996/08/11','F','BSIT01'),
('201626849','Lrigha','Bark','1997/02/14','F','BSIT02'),
('201645682','Wonda','Bosse','1997/01/18','F','BSITE1'),
('201676482','Garry','Woodard','1995/06/18','M','MAEX06'),
('201687456','Cira','Hopson','1997/01/29','F','MAEX10'),
('201698765','Lashay','Barger','1996/08/11','F','MAEX06'),
('201712345','Ty','Stellhorn','1997/02/14','M','BSMA01');

INSERT INTO DEGREE VALUES
('BSIT01','Information Technology',30),
('BSIT02','Computer Science and Informatics',30),
('BSITE1','Computer Science',26),
('BSMA01','Applied Mathematics and Computer Science',31),
('BSMA03','Computational Science',31),
('MAEX06','Mathematics and Computer Science',26),
('MAEX10','Mathematics and Informatics',26);

INSERT INTO BRIDGE VALUES
('201465128','IFM1A10', 60),
('201465128','CSC1A10', 75),
('201465128','APM1A10', 50),
('201547623','IFM1A10', 68),
('201547623','CSC2A10', 83),
('201553421','IFM3A10', 56),
('201553421','CSC3A10', 70),
('201554321','IFM3A10', 69),
('201554321','CSC2A10', 70),
('201554321','APM1A1E', 77),
('201554987','IFM3A10', 80),
('201556123','CSC3A10', 50),
('201556789','APM1A10', 90),
('201556789','APM1A1E', 91),
('201556789','IFM1A10', 90),
('201568745','CSC3A10', 89),
('201568745','IFM3A10', 70),
('201587643','CSC3A10', 50),
('201587643','IFM1A10', 30),
('201612397','IFM2A10', 71),
('201612397','CSC2A10', 81),
('201626849','IFM2A10', 84),
('201626849','CSC2A10', 78),
('201645682','IFM1A10', 60),
('201645682','CSC1A10', 80),
('201676482','APM1A10', 20),
('201676482','APM1A1E', 40),
('201676482','APM1A2E', 10),
('201676482','IFM1A10', 70),
('201687456','APM1A10', 80),
('201687456','APM1A1E', 60),
('201698765','APM1A10', 58),
('201698765','APM1A1E', 71),
('201712345','APM1A10', 80),
('201712345','IFM1A10', 94)

