CREATE TABLE School 
(
School_Code VARCHAR(3) NOT NULL, 
Name VARCHAR(20), 
Description VARCHAR(35),
PRIMARY KEY (School_Code)
); 

CREATE TABLE Department 
(
Department_Code VARCHAR(10) NOT NULL, 
Name VARCHAR(20), 
Number_of_Lecturers int,
School VARCHAR(3),
PRIMARY KEY (Department_Code),
FOREIGN KEY (School) REFERENCES School(School_Code)
);

CREATE TABLE Student 
(
Computer_Number int(10) NOT NULL, 
fName VARCHAR(20), 
lName VARCHAR(20), 
Sex ENUM('M','F'),
Amount_Paid int,
Department VARCHAR(20),
PRIMARY KEY (Computer_Number),
FOREIGN KEY (Department) REFERENCES Department(Department_Code)
);

 


