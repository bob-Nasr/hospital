CREATE TABLE Room(
room_nb int NOT NULL PRIMARY KEY,
disease_type_room char(15) NOT NULL,
capacity integer NOT NULL
);

CREATE TABLE Bloodbank(
blood_type char(3) PRIMARY KEY,
quantity int NOT NULL
);

CREATE TABLE Doctor( 
doctor_ID int NOT NULL PRIMARY KEY,
d_name varchar(10) NOT NULL,
phoneNumber int NOT NULL,
d_gender char,
d_age integer NOT NULL,
d_address varchar(30) NOT NULL
);

CREATE TABLE Patient(
patient_ID int NOT NULL PRIMARY KEY,
p_fname varchar(20) NOT NULL,
p_lname varchar(20) NOT NULL,
p_addr varchar(30) NOT NULL,
p_age integer NOT NULL,
p_gender char NOT NULL,
dateOfBirth date NOT NULL,
bld_type char(3) NOT NULL REFERENCES Bloodbank(blood_type),
);

CREATE TABLE Enter_patient(
patient_ID int NOT NULL REFERENCES Patient(patient_ID),
entrance_date Date NOT NULL ,
room_nb int REFERENCES Room(room_nb)
);

CREATE TABLE Exit_patient(
patient_ID int NOT NULL REFERENCES Patient(patient_ID),
exit_date DATE NOT NULL,
);

CREATE TABLE Laboratory(
lab_nb int NOT NULL PRIMARY KEY,
patient_ID int NOT NULL REFERENCES Patient(patient_ID),
doctor_ID int NOT NULL REFERENCES Doctor(doctor_ID),
dateresulttest DATE NOT NULL,
);

CREATE TABLE Nurse(
nurse_id int PRIMARY KEY,
n_name char(15) NOT NULL,
n_age int,
n_gender char,
shift char(2),
);

CREATE TABLE Dr_treat_patient(
patient_id int REFERENCES Patient (patient_id),
doctor_id int REFERENCES Doctor (doctor_id),
);

CREATE TABLE Nurse_room(
nurse_id int REFERENCES Nurse (nurse_id),
room_nb int REFERENCES Room (room_nb),
);

CREATE TABLE Technician(
tech_id int NOT NULL PRIMARY KEY,
t_name char(15) NOT NULL,
t_age int NOT NULL
);

CREATE TABLE tech_lab(
tech_id int REFERENCES Technician (tech_id),
lab_nb int REFERENCES Laboratory (lab_nb),
);

CREATE TABLE tech_bld(
tech_id int REFERENCES Technician (tech_id),
blood_type char(3) REFERENCES Bloodbank (blood_type),
);
