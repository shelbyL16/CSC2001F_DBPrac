CREATE TABLE School 
(
School_Code VARCHAR(3) NOT NULL, 
Name VARCHAR(20), 
Description VARCHAR(35),
PRIMARY KEY (School_Code),
); 

CREATE TABLE Department 
(
Department_Code int(10) NOT NULL, 
Name VARCHAR(20), 
Description VARCHAR(35)
PRIMARY KEY (Department_Code),
FOREIGN KEY (School_Code) REFERNCES School(School_Code)
);

CREATE TABLE Student 
(
Computer_Number int(10) NOT NULL, 
fName VARCHAR(20),
lName VARCHAR(20), 
Sex ENUM('f','m'),
Amount_Paid int(10),
Department int(10),
PRIMARY KEY (Computer_Number),
FOREIGN KEY (Department) REFERNCES Department(Department)
);

 


