-- create Database Zenith Medical Center
CREATE DATABASE if not exists Zenith_Medical_Center;
-- Use database
USE Zenith_Medical_Center;

-- create patient table
CREATE TABLE Patients (
    Patient_id VARCHAR(15) PRIMARY KEY UNIQUE NOT NULL,
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Gender VARCHAR(8) NOT NULL,
    Blood_Group ENUM('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-') NOT NULL,
    Contact_Number BIGINT UNIQUE NOT NULL,
    Emergency_Contact_Number BIGINT UNIQUE NOT NULL,
    Address TEXT NOT NULL
);

-- insert values to patient table
INSERT INTO Patients VALUES
('p001', 'Aarav', 'Mehta', 'Male', 'B+', 9876543210, 9123456780, 'Andheri West, Mumbai'),
('p002', 'Isha', 'Patel', 'Female', 'A+', 9876543211, 9123456781, 'Bandra East, Mumbai'),
('p003', 'Rohan', 'Desai', 'Male', 'O-', 9876543212, 9123456782, 'Powai, Mumbai'),
('p004', 'Neha', 'Shah', 'Female', 'AB+', 9876543213, 9123456783, 'Dadar West, Mumbai'),
('p005', 'Karan', 'Joshi', 'Male', 'A-', 9876543214, 9123456784, 'Borivali East, Mumbai'),
('p006', 'Simran', 'Kapoor', 'Female', 'O+', 9876543215, 9123456785, 'Juhu, Mumbai'),
('p007', 'Rahul', 'Chopra', 'Male', 'AB-', 9876543216, 9123456786, 'Malad West, Mumbai'),
('p008', 'Priya', 'Nair', 'Female', 'B-', 9876543217, 9123456787, 'Chembur, Mumbai'),
('p009', 'Tanish', 'Pillai', 'Male', 'A+', 9876543218, 9123456788, 'Goregaon East, Mumbai'),
('p010', 'Ananya', 'Shetty', 'Female', 'B+', 9876543219, 9123456789, 'Colaba, Mumbai'),

('p011', 'Vivaan', 'Reddy', 'Male', 'O+', 9876543220, 9123456790, 'Kurla, Mumbai'),
('p012', 'Riya', 'Dixit', 'Female', 'A-', 9876543221, 9123456791, 'Vile Parle, Mumbai'),
('p013', 'Yash', 'Agarwal', 'Male', 'B-', 9876543222, 9123456792, 'Worli, Mumbai'),
('p014', 'Sneha', 'Menon', 'Female', 'AB+', 9876543223, 9123456793, 'Kandivali West, Mumbai'),
('p015', 'Aditya', 'Singh', 'Male', 'A+', 9876543224, 9123456794, 'Sion, Mumbai'),
('p016', 'Meera', 'Verma', 'Female', 'O-', 9876543225, 9123456795, 'Mazgaon, Mumbai'),
('p017', 'Aryan', 'Pandey', 'Male', 'AB-', 9876543226, 9123456796, 'Ghatkopar, Mumbai'),
('p018', 'Diya', 'Gupta', 'Female', 'B+', 9876543227, 9123456797, 'Byculla, Mumbai'),
('p019', 'Kabir', 'Thakur', 'Male', 'A-', 9876543228, 9123456798, 'Jogeshwari, Mumbai'),
('p020', 'Jiya', 'Kulkarni', 'Female', 'O+', 9876543229, 9123456799, 'Chakala, Mumbai'),

('p021', 'Samar', 'Bhat', 'Male', 'A+', 9876543230, 9123456800, 'Marine Lines, Mumbai'),
('p022', 'Tara', 'Pathak', 'Female', 'AB-', 9876543231, 9123456801, 'Tardeo, Mumbai'),
('p023', 'Om', 'Naik', 'Male', 'B-', 9876543232, 9123456802, 'Khar, Mumbai'),
('p024', 'Pooja', 'Rana', 'Female', 'O-', 9876543233, 9123456803, 'Antop Hill, Mumbai'),
('p025', 'Dev', 'Salunkhe', 'Male', 'B+', 9876543234, 9123456804, 'Charni Road, Mumbai'),
('p026', 'Nisha', 'Sawant', 'Female', 'A+', 9876543235, 9123456805, 'Chinchpokli, Mumbai'),
('p027', 'Laksh', 'Gawande', 'Male', 'AB+', 9876543236, 9123456806, 'Churchgate, Mumbai'),
('p028', 'Radhika', 'Parab', 'Female', 'B-', 9876543237, 9123456807, 'Kalbadevi, Mumbai'),
('p029', 'Mihir', 'Jadhav', 'Male', 'O+', 9876543238, 9123456808, 'Dahisar, Mumbai'),
('p030', 'Sana', 'More', 'Female', 'A-', 9876543239, 9123456809, 'Mulund, Mumbai');

-- select statement
SELECT 
    *
FROM
    Patients;

-- create table doctors
CREATE TABLE Doctors(
Doctor_id varchar(15) Primary key unique not null,
Head_Doctor_id varchar(15) unique,
First_Name varchar(20) not null,
Last_Name varchar(20) not null,
Gender varchar(8) not null,
Department_id varchar(15) not null,
foreign key (department_id) references Departments(department_id),
Specialization text not null,
Qualification text not null,
Years_of_Experience year not null,
Shift enum('Morning','Evening','Night')Default('Morning') not null,
Consultation_Fee bigint not null,
Consultancy_fee bigint not null,
Contact_Number bigint unique not null,
Email varchar(40) unique not null
);

-- insert values to doctor table
INSERT INTO Doctors values
('D001', 'HDI001', 'Rajiv', 'Menon', 'Male', 'DPT001', 'Cardiologist', 'MBBS, MD', 2005, 'Morning', 800, 150000, 9810000001, 'rajiv.menon@hospital.in'),
('D002', NULL, 'Sneha', 'Kumar', 'Female', 'DPT001', 'Cardiologist', 'MBBS, DM', 2010, 'Evening', 750, 130000, 9810000002, 'sneha.kumar@hospital.in'),
('D003', NULL, 'Aman', 'Gupta', 'Male', 'DPT001', 'Cardiologist', 'MBBS', 2015, 'Night', 600, 110000, 9810000003, 'aman.gupta@hospital.in'),

('D004', 'HDI002', 'Deepa', 'Iyer', 'Female', 'DPT002', 'Neurologist', 'MBBS, DM', 2002, 'Morning', 900, 160000, 9810000004, 'deepa.iyer@hospital.in'),
('D005', NULL, 'Karan', 'Shah', 'Male', 'DPT002', 'Neurologist', 'MBBS, MD', 2011, 'Evening', 850, 135000, 9810000005, 'karan.shah@hospital.in'),
('D006', NULL, 'Ritika', 'Patel', 'Female', 'DPT002', 'Neurologist', 'MBBS', 2016, 'Night', 700, 115000, 9810000006, 'ritika.patel@hospital.in'),

('D007', 'HDI003', 'Vikram', 'Joshi', 'Male', 'DPT003', 'Orthopedic Surgeon', 'MBBS, MS', 2003, 'Morning', 750, 145000, 9810000007, 'vikram.joshi@hospital.in'),
('D008', NULL, 'Meera', 'Bose', 'Female', 'DPT003', 'Orthopedic Surgeon', 'MBBS', 2012, 'Evening', 700, 125000, 9810000008, 'meera.bose@hospital.in'),
('D009', NULL, 'Nikhil', 'Yadav', 'Male', 'DPT003', 'Orthopedic Surgeon', 'MBBS, DNB', 2017, 'Night', 600, 100000, 9810000009, 'nikhil.yadav@hospital.in'),

('D010', 'HDI004', 'Priya', 'Reddy', 'Female', 'DPT004', 'Pediatrician', 'MBBS, MD', 2006, 'Morning', 650, 140000, 9810000010, 'priya.reddy@hospital.in'),
('D011', NULL, 'Arjun', 'Verma', 'Male', 'DPT004', 'Pediatrician', 'MBBS, DCH', 2013, 'Evening', 600, 120000, 9810000011, 'arjun.verma@hospital.in'),
('D012', NULL, 'Divya', 'Mehra', 'Female', 'DPT004', 'Pediatrician', 'MBBS', 2018, 'Night', 550, 95000, 9810000012, 'divya.mehra@hospital.in'),

('D013', 'HDI005', 'Anil', 'Thakur', 'Male', 'DPT005', 'General Physician', 'MBBS', 2001, 'Morning', 500, 125000, 9810000013, 'anil.thakur@hospital.in'),
('D014', NULL, 'Ruchi', 'Sen', 'Female', 'DPT005', 'General Physician', 'MBBS', 2012, 'Evening', 450, 110000, 9810000014, 'ruchi.sen@hospital.in'),
('D015', NULL, 'Sameer', 'Chatterjee', 'Male', 'DPT005', 'General Physician', 'MBBS', 2019, 'Night', 400, 90000, 9810000015, 'sameer.chatterjee@hospital.in'),

('D016', NULL, 'Poonam', 'Naik', 'Female', 'DPT001', 'Cardiologist', 'MBBS', 2014, 'Morning', 650, 105000, 9810000016, 'poonam.naik@hospital.in'),
('D017', NULL, 'Harsh', 'Dube', 'Male', 'DPT002', 'Neurologist', 'MBBS, DM', 2009, 'Evening', 820, 125000, 9810000017, 'harsh.dube@hospital.in'),
('D018', NULL, 'Ishita', 'Singhania', 'Female', 'DPT003', 'Orthopedic Surgeon', 'MBBS', 2015, 'Night', 620, 100000, 9810000018, 'ishita.singhania@hospital.in'),
('D019', NULL, 'Siddharth', 'Nambiar', 'Male', 'DPT004', 'Pediatrician', 'MBBS, DCH', 2010, 'Morning', 620, 120000, 9810000019, 'siddharth.nambiar@hospital.in'),
('D020', NULL, 'Lata', 'Rajput', 'Female', 'DPT005', 'General Physician', 'MBBS', 2016, 'Evening', 470, 95000, 9810000020, 'lata.rajput@hospital.in'),

('D021', NULL, 'Farhan', 'Iqbal', 'Male', 'DPT001', 'Cardiologist', 'MBBS', 2007, 'Night', 690, 115000, 9810000021, 'farhan.iqbal@hospital.in'),
('D022', NULL, 'Naina', 'Kaul', 'Female', 'DPT002', 'Neurologist', 'MBBS, MD', 2011, 'Morning', 840, 130000, 9810000022, 'naina.kaul@hospital.in'),
('D023', NULL, 'Manish', 'Deshmukh', 'Male', 'DPT003', 'Orthopedic Surgeon', 'MBBS, MS', 2008, 'Evening', 730, 120000, 9810000023, 'manish.deshmukh@hospital.in'),
('D024', NULL, 'Alisha', 'Fernandes', 'Female', 'DPT004', 'Pediatrician', 'MBBS', 2017, 'Night', 560, 98000, 9810000024, 'alisha.fernandes@hospital.in'),
('D025', NULL, 'Rohit', 'Kulkarni', 'Male', 'DPT005', 'General Physician', 'MBBS', 2015, 'Morning', 480, 92000, 9810000025, 'rohit.kulkarni@hospital.in'),

('D026', NULL, 'Rekha', 'Bhatt', 'Female', 'DPT001', 'Cardiologist', 'MBBS', 2016, 'Evening', 610, 97000, 9810000026, 'rekha.bhatt@hospital.in'),
('D027', NULL, 'Dev', 'Kapadia', 'Male', 'DPT002', 'Neurologist', 'MBBS, MD', 2004, 'Night', 780, 135000, 9810000027, 'dev.kapadia@hospital.in'),
('D028', NULL, 'Trisha', 'Mishra', 'Female', 'DPT003', 'Orthopedic Surgeon', 'MBBS', 2013, 'Morning', 670, 107000, 9810000028, 'trisha.mishra@hospital.in'),
('D029', NULL, 'Mohit', 'Joshi', 'Male', 'DPT004', 'Pediatrician', 'MBBS, DCH', 2009, 'Evening', 640, 115000, 9810000029, 'mohit.joshi@hospital.in'),
('D030', NULL, 'Seema', 'Gupta', 'Female', 'DPT005', 'General Physician', 'MBBS', 2011, 'Night', 430, 88000, 9810000030, 'seema.gupta@hospital.in');

-- select table doctors
SELECT 
    *
FROM
    Doctors;

-- create table department
CREATE TABLE Departments (
    Department_id VARCHAR(15) PRIMARY KEY,
    Head_Doctor_id VARCHAR(15),
    Department_Name VARCHAR(50) NOT NULL,
    Floor_Number INT NOT NULL,
    Contact_Number BIGINT UNIQUE NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL
);

-- insert values to department
INSERT INTO Departments VALUES
('DPT001', 'HDI001', 'Cardiology', 1, 9123000001, 'cardiology1@hospital.in'),
('DPT002', 'HDI002', 'Neurology', 1, 9123000006, 'neurology1@hospital.in'),
('DPT003', 'HDI003', 'Orthopedics', 1, 9123000011, 'ortho1@hospital.in'),
('DPT004', 'HDI004', 'Pediatrics', 1, 9123000016, 'pediatrics1@hospital.in'),
('DPT005', 'HDI005', 'General Medicine', 1, 9123000021, 'general1@hospital.in'),

-- Non-doctor departments
('DPT006', NULL, 'Nursing', 2, 9123000026, 'nursing@hospital.in'),
('DPT007', NULL, 'Cleaning & Sanitation', 0, 9123000031, 'cleaning@hospital.in'),
('DPT008', NULL, 'Laboratory Services', 2, 9123000036, 'lab@hospital.in'),
('DPT009', NULL, 'Radiology', 2, 9123000041, 'radiology@hospital.in'),
('DPT010', NULL, 'Pharmacy', 1, 9123000046, 'pharmacy@hospital.in'),
('DPT011', NULL, 'Administration', 3, 9123000051, 'admin@hospital.in'),
('DPT012', NULL, 'Billing & Insurance', 3, 9123000056, 'billing@hospital.in'),
('DPT013', NULL, 'Catering Services', 0, 9123000061, 'catering@hospital.in'),
('DPT014', NULL, 'Security', 0, 9123000066, 'security@hospital.in'),
('DPT015', NULL, 'IT Support', 3, 9123000071, 'itsupport@hospital.in');

-- select table department
SELECT 
    *
FROM
    Departments;

-- create table Consultation
-- consultation table include details of Appointment,Diagnosis and Prescription
CREATE TABLE Consultation(
Consultation_id varchar(15) Primary key unique not null,
Patient_id varchar(15),
foreign key (Patient_id) references Patients(Patient_id),
Doctor_id varchar(15),
foreign key (Doctor_id) references Doctors(Doctor_id),
Medication_id varchar(15),
foreign key (Medication_id) references Medications(Medication_id),
Date_of_Consultation datetime not null,
Reason_for_visit text not null,
Diagnosis text not null,
Treatment_plan text not null,
Follow_up_Date date not null,
Status enum('Scheduled','Completed','Cancelled')Default('Scheduled')
);

-- insert values
INSERT INTO Consultation values
('C001', 'P001', 'D001', 'M001', '2025-03-01 10:00:00', 'Chest pain', 'Angina', 'Prescribed beta-blockers', '2025-03-15', 'Completed'),
('C002', 'P002', 'D002', 'M002', '2025-03-02 11:30:00', 'Shortness of breath', 'Hypertension', 'Lifestyle changes and meds', '2025-03-16', 'Completed'),
('C003', 'P003', 'D004', 'M003', '2025-03-03 09:45:00', 'Seizure episode', 'Epilepsy', 'Anti-epileptic therapy', '2025-03-17', 'Scheduled'),
('C004', 'P004', 'D005', 'M004', '2025-03-04 15:20:00', 'Headache and dizziness', 'Migraine', 'Prescribed triptans', '2025-03-18', 'Scheduled'),
('C005', 'P005', 'D007', 'M005', '2025-03-05 14:00:00', 'Knee pain', 'Osteoarthritis', 'Physiotherapy & NSAIDs', '2025-03-19', 'Completed'),

('C006', 'P006', 'D008', 'M006', '2025-03-06 13:30:00', 'Back pain', 'Spondylosis', 'Pain management & posture correction', '2025-03-20', 'Scheduled'),
('C007', 'P007', 'D010', 'M007', '2025-03-07 11:00:00', 'High fever and cough', 'Flu', 'Antiviral medication', '2025-03-21', 'Completed'),
('C008', 'P008', 'D011', 'M008', '2025-03-08 10:15:00', 'Child vaccination', 'Routine immunization', 'Vaccines administered', '2025-09-08', 'Completed'),
('C009', 'P009', 'D013', 'M009', '2025-03-09 12:45:00', 'Mild fever and fatigue', 'Viral infection', 'Supportive care', '2025-03-23', 'Scheduled'),
('C010', 'P010', 'D014', 'M010', '2025-03-10 09:30:00', 'General check-up', 'Normal', 'Routine tests & advice', '2025-09-10', 'Completed'),

('C011', 'P011', 'D016', 'M011', '2025-03-11 10:00:00', 'Irregular heartbeat', 'Arrhythmia', 'ECG and beta blockers', '2025-03-25', 'Scheduled'),
('C012', 'P012', 'D017', 'M012', '2025-03-12 11:30:00', 'Facial numbness', 'Stroke (minor)', 'Imaging and aspirin therapy', '2025-03-26', 'Completed'),
('C013', 'P013', 'D018', 'M013', '2025-03-13 16:00:00', 'Shoulder dislocation', 'Dislocation', 'Manual reduction & sling', '2025-03-27', 'Completed'),
('C014', 'P014', 'D019', 'M014', '2025-03-14 10:20:00', 'Child coughing', 'Bronchitis', 'Antibiotics and inhalers', '2025-03-28', 'Completed'),
('C015', 'P015', 'D020', 'M015', '2025-03-15 09:00:00', 'Fatigue', 'Anemia', 'Iron supplements & diet', '2025-03-29', 'Cancelled'),

('C016', 'P016', 'D021', 'M016', '2025-03-16 14:30:00', 'Palpitations', 'Tachycardia', 'Beta blockers & stress control', '2025-03-30', 'Completed'),
('C017', 'P017', 'D022', 'M017', '2025-03-17 15:10:00', 'Tingling sensation', 'Neuropathy', 'Nerve pain medication', '2025-03-31', 'Scheduled'),
('C018', 'P018', 'D023', 'M018', '2025-03-18 13:20:00', 'Leg fracture', 'Fracture of tibia', 'Casting and rest', '2025-04-01', 'Completed'),
('C019', 'P019', 'D024', 'M019', '2025-03-19 12:00:00', 'High fever in child', 'Dengue fever', 'Fluids and monitoring', '2025-04-02', 'Completed'),
('C020', 'P020', 'D025', 'M020', '2025-03-20 11:00:00', 'Cough and cold', 'Common cold', 'Paracetamol and fluids', '2025-04-03', 'Scheduled'),

('C021', 'P021', 'D026', 'M021', '2025-03-21 10:30:00', 'Chest heaviness', 'Angina suspicion', 'ECG and referral', '2025-04-04', 'Completed'),
('C022', 'P022', 'D027', 'M022', '2025-03-22 09:45:00', 'Memory loss', 'Mild dementia', 'Neuro-evaluation', '2025-04-05', 'Scheduled'),
('C023', 'P023', 'D028', 'M023', '2025-03-23 16:30:00', 'Joint stiffness', 'Arthritis', 'Pain management', '2025-04-06', 'Completed'),
('C024', 'P024', 'D029', 'M024', '2025-03-24 10:30:00', 'Child vomiting', 'Gastroenteritis', 'ORS and probiotics', '2025-04-07', 'Completed'),
('C025', 'P025', 'D030', 'M025', '2025-03-25 11:15:00', 'Blood pressure check', 'Hypertension', 'Lifestyle and meds', '2025-04-08', 'Cancelled'),

('C026', 'P026', 'D002', 'M026', '2025-03-26 13:45:00', 'Heart murmur', 'Valve disorder', 'Referral to specialist', '2025-04-09', 'Scheduled'),
('C027', 'P027', 'D005', 'M027', '2025-03-27 12:30:00', 'Dizziness and confusion', 'Vertigo', 'Vestibular therapy', '2025-04-10', 'Completed'),
('C028', 'P028', 'D008', 'M028', '2025-03-28 14:50:00', 'Ankle pain', 'Sprain', 'Rest, Ice, Compression, Elevation', '2025-04-11', 'Completed'),
('C029', 'P029', 'D011', 'M029', '2025-03-29 09:20:00', 'Child check-up', 'Routine pediatric', 'Immunizations and growth tracking', '2025-09-29', 'Completed'),
('C030', 'P030', 'D014', 'M030', '2025-03-30 08:40:00', 'Mild headache', 'Stress', 'Hydration and rest', '2025-04-13', 'Scheduled');

-- select consultation table
SELECT 
    *
FROM
    Consultation;

-- create table inpatient
-- Inpatient table include Admission and Ward information
CREATE TABLE Inpatients(
Inpatient_id varchar(15) primary key unique not null,
Patient_id varchar(15),
foreign key (Patient_id) references  Patients (Patient_id),
Doctor_id varchar(15),
foreign key (Doctor_id) references Doctors (Doctor_id),
Admit_Date datetime not null,
Discharge_Date datetime,
Room_Number varchar(3)not null unique,
Room_Type enum('General','Private','I.C.U')not null,
Diagnosis text not null,
Treatment_Summary text not null,
Status enum('Admitted','Discharged','Transferred')default('Admitted')
);

-- insert value to inpatient
INSERT INTO Inpatients values
('IP001', 'P001', 'D001', '2025-03-01 09:00:00', '2025-03-05 11:00:00', '101', 'I.C.U', 'Angina', 'Stabilized with beta-blockers and monitoring', 'Discharged'),
('IP002', 'P002', 'D002', '2025-03-02 08:00:00', '2025-03-06 10:00:00', '102', 'Private', 'Hypertension', 'Observed, meds adjusted', 'Discharged'),
('IP003', 'P003', 'D004', '2025-03-03 13:30:00', NULL, '103', 'I.C.U', 'Epilepsy', 'Seizure control under observation', 'Admitted'),
('IP004', 'P004', 'D005', '2025-03-04 11:00:00', '2025-03-08 09:00:00', '104', 'Private', 'Migraine', 'Triptans administered, under control', 'Discharged'),
('IP005', 'P005', 'D007', '2025-03-05 15:20:00', NULL, '105', 'General', 'Osteoarthritis', 'Pain relief and physiotherapy ongoing', 'Admitted'),

('IP006', 'P006', 'D008', '2025-03-06 10:45:00', NULL, '106', 'Private', 'Spondylosis', 'Pain management and rest', 'Admitted'),
('IP007', 'P007', 'D010', '2025-03-07 14:00:00', '2025-03-09 10:30:00', '107', 'General', 'Flu', 'Antiviral therapy completed', 'Discharged'),
('IP008', 'P008', 'D011', '2025-03-08 09:00:00', '2025-03-08 18:00:00', '108', 'General', 'Routine immunization', 'Vaccines administered, no complications', 'Discharged'),
('IP009', 'P009', 'D013', '2025-03-09 08:45:00', NULL, '109', 'General', 'Viral infection', 'Supportive therapy under progress', 'Admitted'),
('IP010', 'P010', 'D014', '2025-03-10 07:30:00', '2025-03-11 11:00:00', '110', 'Private', 'Normal', 'Routine observations completed', 'Discharged'),

('IP011', 'P011', 'D016', '2025-03-11 10:15:00', NULL, '111', 'I.C.U', 'Arrhythmia', 'Continuous monitoring with ECG', 'Admitted'),
('IP012', 'P012', 'D017', '2025-03-12 11:45:00', '2025-03-14 09:00:00', '112', 'I.C.U', 'Stroke (minor)', 'Rehabilitation and physiotherapy', 'Transferred'),
('IP013', 'P013', 'D018', '2025-03-13 12:00:00', NULL, '113', 'General', 'Dislocation', 'Immobilization and recovery monitoring', 'Admitted'),
('IP014', 'P014', 'D019', '2025-03-14 13:00:00', '2025-03-16 10:00:00', '114', 'General', 'Bronchitis', 'Nebulization and meds given', 'Discharged'),
('IP015', 'P015', 'D020', '2025-03-15 14:00:00', NULL, '115', 'Private', 'Anemia', 'Iron therapy ongoing', 'Admitted'),

('IP016', 'P016', 'D021', '2025-03-16 10:30:00', '2025-03-18 11:30:00', '116', 'General', 'Tachycardia', 'Stabilized and discharged', 'Discharged'),
('IP017', 'P017', 'D022', '2025-03-17 09:45:00', NULL, '117', 'Private', 'Neuropathy', 'Nerve pain management', 'Admitted'),
('IP018', 'P018', 'D023', '2025-03-18 15:00:00', '2025-03-22 10:00:00', '118', 'Private', 'Fracture of tibia', 'Cast applied, healing monitored', 'Discharged'),
('IP019', 'P019', 'D024', '2025-03-19 11:30:00', NULL, '119', 'I.C.U', 'Dengue fever', 'Fluids & platelet monitoring', 'Admitted'),
('IP020', 'P020', 'D025', '2025-03-20 12:00:00', '2025-03-21 09:30:00', '120', 'General', 'Common cold', 'Recovered with care', 'Discharged'),

('IP021', 'P021', 'D026', '2025-03-21 14:10:00', NULL, '121', 'I.C.U', 'Angina suspicion', 'Under cardiac review', 'Admitted'),
('IP022', 'P022', 'D027', '2025-03-22 13:00:00', NULL, '122', 'Private', 'Mild dementia', 'Neurotherapy ongoing', 'Admitted'),
('IP023', 'P023', 'D028', '2025-03-23 10:20:00', NULL, '123', 'General', 'Arthritis', 'Joint pain therapy underway', 'Admitted'),
('IP024', 'P024', 'D029', '2025-03-24 09:45:00', '2025-03-26 08:00:00', '124', 'General', 'Gastroenteritis', 'ORS and meds given', 'Discharged'),
('IP025', 'P025', 'D030', '2025-03-25 08:15:00', NULL, '125', 'Private', 'Hypertension', 'BP monitored, meds adjusted', 'Admitted'),

('IP026', 'P026', 'D002', '2025-03-26 09:00:00', '2025-03-28 12:00:00', '126', 'Private', 'Valve disorder', 'Referred to cardiology surgery unit', 'Transferred'),
('IP027', 'P027', 'D005', '2025-03-27 08:30:00', NULL, '127', 'Private', 'Vertigo', 'ENT consult and treatment', 'Admitted'),
('IP028', 'P028', 'D008', '2025-03-28 10:00:00', '2025-03-30 09:00:00', '128', 'General', 'Sprain', 'Immobilization and pain relief', 'Discharged'),
('IP029', 'P029', 'D011', '2025-03-29 07:30:00', '2025-03-29 18:00:00', '129', 'General', 'Routine pediatric', 'Normal growth markers', 'Discharged'),
('IP030', 'P030', 'D014', '2025-03-30 11:00:00', NULL, '130', 'Private', 'Stress', 'Relaxation therapy & rest', 'Admitted');

-- select table Inpatients
SELECT 
    *
FROM
    Inpatients;

-- create table medication
-- Include Pharmacy, Inventory, Prescription
CREATE TABLE Medications (
    Medication_id VARCHAR(15) PRIMARY KEY UNIQUE NOT NULL,
    Drug_Name TEXT NOT NULL,
    Type ENUM('Tablet', 'Syrup', 'Injection', 'Capsule') NOT NULL,
    Dosage_Form VARCHAR(25) NOT NULL,
    Description TEXT NOT NULL,
    Manufacturer DATETIME NOT NULL,
    Expiry_Date DATE NOT NULL,
    Stock_Quantity VARCHAR(100) NOT NULL,
    Unit_Price DECIMAL(10 , 2 ) NOT NULL,
    Storage_Instruction TEXT NOT NULL
);

-- insert values
INSERT INTO Medications values
('M001', 'Aspirin', 'Tablet', '75 mg tablet', 'Used to treat chest pain and prevent heart attacks', '2024-01-10 10:00:00', '2026-01-10', '500', 1.50, 'Store below 25°C in a dry place'),
('M002', 'Amlodipine', 'Tablet', '5 mg tablet', 'Used for high blood pressure and angina', '2023-12-12 12:00:00', '2025-12-12', '600', 2.00, 'Keep in a cool, dry place'),
('M003', 'Sodium Valproate', 'Tablet', '200 mg tablet', 'Used to treat epilepsy and seizures', '2024-02-15 09:00:00', '2026-02-15', '450', 3.20, 'Store at room temperature'),
('M004', 'Sumatriptan', 'Tablet', '50 mg tablet', 'Used for treating migraine attacks', '2023-11-20 14:00:00', '2025-11-20', '350', 5.00, 'Protect from light and moisture'),
('M005', 'Aceclofenac', 'Tablet', '100 mg tablet', 'Pain relief in osteoarthritis and musculoskeletal disorders', '2024-03-18 11:00:00', '2026-03-18', '500', 2.30, 'Keep in original container'),

('M006', 'Diclofenac Gel', 'Syrup', 'Topical gel', 'Used for localized musculoskeletal pain like spondylosis', '2024-01-05 08:00:00', '2026-01-05', '400', 4.00, 'Store below 25°C'),
('M007', 'Paracetamol', 'Tablet', '500 mg tablet', 'Used to reduce fever and treat flu-like symptoms', '2024-02-28 09:30:00', '2026-02-28', '1000', 0.80, 'Protect from excessive heat'),
('M008', 'Pentavalent Vaccine', 'Injection', '0.5 ml injection', 'Routine immunization for children', '2023-12-10 10:30:00', '2025-12-10', '250', 15.00, 'Keep refrigerated (2–8°C)'),
('M009', 'Cefixime', 'Tablet', '200 mg tablet', 'Used to treat bacterial infections like viral fever complications', '2024-01-22 12:45:00', '2026-01-22', '300', 6.50, 'Keep in dry place, away from sunlight'),
('M010', 'Multivitamin Syrup', 'Syrup', '100 ml bottle', 'General wellness and nutritional support', '2024-03-01 10:00:00', '2025-09-01', '250', 25.00, 'Keep sealed and away from light'),

('M011', 'Metoprolol', 'Tablet', '50 mg tablet', 'Used to treat heart rhythm issues and arrhythmia', '2024-02-10 08:00:00', '2026-02-10', '550', 2.90, 'Store below 30°C'),
('M012', 'Atorvastatin', 'Tablet', '10 mg tablet', 'Post-stroke medication for cholesterol reduction', '2024-01-19 09:00:00', '2026-01-19', '400', 3.80, 'Protect from moisture'),
('M013', 'Ibuprofen', 'Tablet', '400 mg tablet', 'Anti-inflammatory for injury-related pain', '2023-11-15 11:00:00', '2025-11-15', '600', 1.20, 'Avoid heat and humidity'),
('M014', 'Salbutamol Inhaler', 'Injection', '100 mcg/dose', 'Bronchodilator for bronchitis and asthma', '2023-12-05 10:00:00', '2025-12-05', '300', 12.00, 'Do not puncture, keep away from fire'),
('M015', 'Ferrous Sulfate', 'Tablet', '325 mg tablet', 'Iron supplement used in treatment of anemia', '2024-01-08 12:00:00', '2026-01-08', '700', 0.90, 'Store in a dry area'),

('M016', 'Ivabradine', 'Tablet', '5 mg tablet', 'Used for heart rate control (tachycardia)', '2024-02-01 13:00:00', '2026-02-01', '250', 4.70, 'Store below 25°C'),
('M017', 'Pregabalin', 'Capsule', '75 mg capsule', 'Used for treating neuropathic pain', '2023-12-22 10:30:00', '2025-12-22', '300', 8.00, 'Keep in original blister pack'),
('M018', 'Calcium Carbonate', 'Tablet', '500 mg tablet', 'Supplement for fracture and bone repair', '2024-01-11 09:00:00', '2026-01-11', '800', 1.10, 'Store in closed container'),
('M019', 'Paracetamol + Ibuprofen', 'Tablet', '325+400 mg combo', 'Used for fever and dengue-related pain', '2024-02-20 14:00:00', '2026-02-20', '600', 1.70, 'Store away from sunlight'),
('M020', 'Levocetirizine', 'Tablet', '5 mg tablet', 'Used in treating cold, allergies', '2023-12-18 11:00:00', '2025-12-18', '400', 1.40, 'Store at 15–30°C'),

('M021', 'Nitroglycerin', 'Tablet', 'Sublingual 0.5 mg', 'Used in angina attack emergencies', '2024-02-05 10:15:00', '2026-02-05', '200', 3.60, 'Keep sealed, cool and dry'),
('M022', 'Donepezil', 'Tablet', '5 mg tablet', 'For dementia-related conditions', '2024-03-01 09:30:00', '2026-03-01', '300', 9.00, 'Keep away from sunlight'),
('M023', 'Methotrexate', 'Tablet', '2.5 mg tablet', 'Used for arthritis and joint disorders', '2023-12-28 10:45:00', '2025-12-28', '150', 6.50, 'Avoid light exposure'),
('M024', 'ORS Sachets', 'Syrup', '4.2g/packet', 'Used in gastroenteritis and dehydration', '2024-01-25 08:30:00', '2025-09-25', '500', 0.50, 'Store in cool, dry area'),
('M025', 'Losartan', 'Tablet', '50 mg tablet', 'Used in hypertension management', '2024-01-15 11:00:00', '2026-01-15', '350', 2.20, 'Keep away from direct sunlight'),

('M026', 'Ramipril', 'Tablet', '5 mg tablet', 'For valve disorder and BP control', '2023-12-30 10:00:00', '2025-12-30', '500', 2.80, 'Store in cool, dark place'),
('M027', 'Betahistine', 'Tablet', '16 mg tablet', 'Used for vertigo symptoms', '2024-02-02 12:30:00', '2026-02-02', '250', 3.00, 'Keep dry and protected'),
('M028', 'Diclofenac Sodium', 'Injection', '75 mg/ml', 'Used for acute musculoskeletal pain', '2024-03-02 09:45:00', '2026-03-02', '200', 5.50, 'Store in refrigerator'),
('M029', 'Zinc + Multivitamins', 'Syrup', '100 ml bottle', 'Supportive for pediatric growth', '2024-02-10 10:00:00', '2026-02-10', '300', 18.00, 'Shake well before use'),
('M030', 'Alprazolam', 'Tablet', '0.25 mg tablet', 'Used for anxiety and stress treatment', '2024-01-20 13:30:00', '2026-01-20', '150', 1.90, 'Keep in airtight container');

-- select table medications
SELECT * FROM Medications;

-- create table staff
CREATE TABLE Staff(
Staff_id varchar(15) primary key unique not null,
Department_id varchar(15),
foreign key (Department_id) references Departments (Department_id),
First_Name varchar(20) not null,
Last_Name varchar(20) not null,
DOB date not null,
Gender varchar(8) not null,
Contact_Number bigint unique not null,
Email varchar(40) unique not null,
Address text not null,
Role text not null,
Qualification text not null,
Shift enum('Morning','Eveining','Night')default('Morning') not null,
Salary bigint not null
);

-- insert values
INSERT INTO Staff values
('STF001', 'DPT006', 'Anita', 'Sharma', '1985-06-15', 'Female', 9124000001, 'anita.sharma@nursing.in', 'Andheri East, Mumbai', 'Senior Nurse', 'B.Sc Nursing', 'Morning', 45000),
('STF002', 'DPT006', 'Ravi', 'Patil', '1988-09-20', 'Male', 9124000002, 'ravi.patil@nursing.in', 'Bandra West, Mumbai', 'Staff Nurse', 'GNM', 'Eveining', 30000),
('STF003', 'DPT006', 'Meena', 'Kamble', '1992-12-05', 'Female', 9124000003, 'meena.k@nursing.in', 'Kurla, Mumbai', 'Assistant Nurse', 'ANM', 'Night', 25000),
('STF004', 'DPT007', 'Suresh', 'Yadav', '1980-03-11', 'Male', 9124000004, 'suresh.yadav@cleaning.in', 'Dadar, Mumbai', 'Sanitation Worker', '10th Pass', 'Morning', 18000),
('STF005', 'DPT007', 'Laxmi', 'Jadhav', '1987-07-19', 'Female', 9124000005, 'laxmi.j@cleaning.in', 'Ghatkopar, Mumbai', 'Cleaning Staff', '10th Pass', 'Eveining', 17000),

('STF006', 'DPT008', 'Ajay', 'Deshmukh', '1990-05-25', 'Male', 9124000006, 'ajay.d@lab.in', 'Mulund, Mumbai', 'Lab Technician', 'DMLT', 'Morning', 35000),
('STF007', 'DPT008', 'Sunita', 'Kale', '1989-10-14', 'Female', 9124000007, 'sunita.kale@lab.in', 'Thane West, Mumbai', 'Senior Lab Technician', 'B.Sc MLT', 'Eveining', 42000),
('STF008', 'DPT009', 'Vinay', 'Naik', '1991-01-22', 'Male', 9124000008, 'vinay.naik@radiology.in', 'Chembur, Mumbai', 'Radiology Technician', 'Diploma in Radiology', 'Morning', 38000),
('STF009', 'DPT010', 'Pooja', 'Rane', '1993-08-30', 'Female', 9124000009, 'pooja.r@pharmacy.in', 'Vikhroli, Mumbai', 'Pharmacist', 'B.Pharm', 'Morning', 36000),
('STF010', 'DPT010', 'Karan', 'Joshi', '1990-02-13', 'Male', 9124000010, 'karan.joshi@pharmacy.in', 'Wadala, Mumbai', 'Pharmacy Assistant', 'D.Pharm', 'Eveining', 28000),

('STF011', 'DPT011', 'Priya', 'Shetty', '1986-04-12', 'Female', 9124000011, 'priya.shetty@admin.in', 'Kandivali, Mumbai', 'Admin Manager', 'MBA HR', 'Morning', 55000),
('STF012', 'DPT011', 'Amit', 'Verma', '1987-11-27', 'Male', 9124000012, 'amit.verma@admin.in', 'Borivali East, Mumbai', 'HR Executive', 'BBA', 'Eveining', 40000),
('STF013', 'DPT012', 'Deepa', 'Nair', '1985-09-03', 'Female', 9124000013, 'deepa.nair@billing.in', 'Powai, Mumbai', 'Billing Assistant', 'B.Com', 'Morning', 30000),
('STF014', 'DPT012', 'Harish', 'Tiwari', '1992-06-17', 'Male', 9124000014, 'harish.t@billing.in', 'Vile Parle, Mumbai', 'Insurance Coordinator', 'MBA Finance', 'Eveining', 42000),
('STF015', 'DPT013', 'Rekha', 'More', '1979-12-21', 'Female', 9124000015, 'rekha.more@catering.in', 'Sion, Mumbai', 'Head Cook', 'Diploma in Catering', 'Morning', 25000),

('STF016', 'DPT013', 'Ganesh', 'Chavan', '1984-08-08', 'Male', 9124000016, 'ganesh.chavan@catering.in', 'Jogeshwari, Mumbai', 'Catering Assistant', '10th Pass', 'Eveining', 20000),
('STF017', 'DPT014', 'Nitin', 'Borse', '1982-03-29', 'Male', 9124000017, 'nitin.borse@security.in', 'Worli, Mumbai', 'Security Supervisor', '12th Pass', 'Night', 22000),
('STF018', 'DPT014', 'Manoj', 'Mali', '1988-01-18', 'Male', 9124000018, 'manoj.mali@security.in', 'Chinchpokli, Mumbai', 'Watchman', '10th Pass', 'Night', 20000),
('STF019', 'DPT015', 'Ritika', 'Sawant', '1994-07-07', 'Female', 9124000019, 'ritika.sawant@itsupport.in', 'Colaba, Mumbai', 'IT Technician', 'BCA', 'Morning', 32000),
('STF020', 'DPT015', 'Sagar', 'Bhandari', '1990-10-02', 'Male', 9124000020, 'sagar.b@itsupport.in', 'Charni Road, Mumbai', 'Network Admin', 'MCA', 'Eveining', 50000),

('STF021', 'DPT006', 'Divya', 'Iyer', '1992-11-05', 'Female', 9124000021, 'divya.iyer@nursing.in', 'Mazgaon, Mumbai', 'ICU Nurse', 'B.Sc Nursing', 'Night', 38000),
('STF022', 'DPT007', 'Ramesh', 'Gaikwad', '1985-05-13', 'Male', 9124000022, 'ramesh.g@cleaning.in', 'Byculla, Mumbai', 'Ward Boy', '10th Pass', 'Night', 18000),
('STF023', 'DPT008', 'Neha', 'Chitale', '1989-03-23', 'Female', 9124000023, 'neha.chitale@lab.in', 'Parel, Mumbai', 'Microbiologist', 'M.Sc Microbiology', 'Morning', 45000),
('STF024', 'DPT009', 'Ashok', 'Mhatre', '1983-06-19', 'Male', 9124000024, 'ashok.mhatre@radiology.in', 'Grant Road, Mumbai', 'X-ray Technician', 'Diploma Radiology', 'Eveining', 34000),
('STF025', 'DPT010', 'Sneha', 'Pandey', '1991-04-08', 'Female', 9124000025, 'sneha.p@pharmacy.in', 'Tardeo, Mumbai', 'Inventory Manager', 'B.Pharm', 'Morning', 39000),

('STF026', 'DPT011', 'Farhan', 'Shaikh', '1986-09-17', 'Male', 9124000026, 'farhan.shaikh@admin.in', 'Malad East, Mumbai', 'Receptionist', 'BA', 'Morning', 25000),
('STF027', 'DPT012', 'Kavita', 'Kumar', '1987-07-12', 'Female', 9124000027, 'kavita.kumar@billing.in', 'Khar, Mumbai', 'Cashier', 'B.Com', 'Eveining', 27000),
('STF028', 'DPT014', 'Yogesh', 'Shinde', '1993-02-11', 'Male', 9124000028, 'yogesh.shinde@security.in', 'Churchgate, Mumbai', 'Security Guard', '12th Pass', 'Night', 21000),
('STF029', 'DPT015', 'Ankita', 'Raut', '1992-03-03', 'Female', 9124000029, 'ankita.raut@itsupport.in', 'Sewri, Mumbai', 'Helpdesk Executive', 'B.Sc IT', 'Morning', 31000),
('STF030', 'DPT013', 'Mahesh', 'More', '1985-11-14', 'Male', 9124000030, 'mahesh.more@catering.in', 'Marine Lines, Mumbai', 'Diet Assistant', 'Diploma in Dietetics', 'Morning', 23000);

-- select staff table
SELECT * FROM Staff;

-- create table billing
CREATE TABLE Billings(
Bill_id varchar(15) primary key unique not null,
Patient_id varchar(15) not null,
foreign key (Patient_id) references Patients (Patient_id),
Inpatient_id varchar(15),
foreign key (Inpatient_id) references Inpatients (Inpatient_id),
Consultation_id varchar(15),
foreign key (Consultation_id) references Consultation (Consultation_id),
Billing_Date date not null,
Total_Amount decimal(10,2) not null,
Amount_Paid decimal(10,2) not null,
Payment_Status enum ('Paid','Unpaid','Insurance')not null,
Insurance_claimed Boolean not null,
Payment_Method text not null 
);

-- insert values
INSERT INTO Billings values
('BILL001', 'P001', NULL, 'C001', '2024-12-17', 9377.37, 9377.37, 'Paid', false, 'Cash'),
('BILL002', 'P002', 'IP002', 'C002', '2025-03-21', 4448.44, 4448.44, 'Paid', false, 'Insurance'),
('BILL003', 'P003', NULL, NULL, '2024-04-24', 6702.61, 6702.61, 'Paid', false, 'Cash'),
('BILL004', 'P004', 'IP004', 'C004', '2024-07-14', 12675.53, 12675.53, 'Paid', false, 'Card'),
('BILL005', 'P005', NULL, 'C005', '2023-09-05', 7501.66, 7501.66, 'Paid', false, 'UPI'),
('BILL006', 'P006', 'IP006', NULL, '2023-08-19', 11125.27, 0.00, 'Unpaid', false, 'Cash'),
('BILL007', 'P007', NULL, 'C007', '2023-05-01', 9487.99, 9487.99, 'Paid', false, 'UPI'),
('BILL008', 'P008', 'IP008', 'C008', '2024-02-17', 10065.42, 7584.31, 'Insurance', true, 'Insurance'),
('BILL009', 'P009', NULL, NULL, '2023-12-03', 1307.17, 1307.17, 'Paid', false, 'Card'),
('BILL010', 'P010', 'IP010', 'C010', '2024-05-30', 14984.05, 0.00, 'Unpaid', false, 'Cash'),
('BILL011', 'P011', NULL, 'C011', '2023-10-11', 8135.00, 8135.00, 'Paid', false, 'UPI'),
('BILL012', 'P012', 'IP012', NULL, '2023-09-26', 14495.15, 14495.15, 'Paid', false, 'Cash'),
('BILL013', 'P013', NULL, 'C013', '2023-03-02', 8323.50, 4795.80, 'Insurance', true, 'Insurance'),
('BILL014', 'P014', 'IP014', 'C014', '2023-01-30', 13857.30, 13857.30, 'Paid', false, 'Card'),
('BILL015', 'P015', NULL, NULL, '2023-07-17', 6717.41, 0.00, 'Unpaid', false, 'Card'),
('BILL016', 'P016', 'IP016', 'C016', '2023-04-04', 14017.46, 10984.36, 'Insurance', true, 'Insurance'),
('BILL017', 'P017', NULL, 'C017', '2024-08-27', 10741.42, 10741.42, 'Paid', false, 'UPI'),
('BILL018', 'P018', 'IP018', NULL, '2024-06-08', 9943.57, 0.00, 'Unpaid', false, 'Cash'),
('BILL019', 'P019', NULL, 'C019', '2023-12-11', 5562.63, 5562.63, 'Paid', false, 'UPI'),
('BILL020', 'P020', 'IP020', 'C020', '2024-09-01', 7215.19, 7215.19, 'Paid', false, 'Card'),
('BILL021', 'P021', NULL, NULL, '2024-03-19', 12985.45, 8751.00, 'Insurance', true, 'Insurance'),
('BILL022', 'P022', 'IP022', 'C022', '2024-10-12', 6892.67, 6892.67, 'Paid', false, 'UPI'),
('BILL023', 'P023', NULL, 'C023', '2023-08-06', 14265.80, 0.00, 'Unpaid', false, 'Cash'),
('BILL024', 'P024', 'IP024', NULL, '2023-11-16', 10002.99, 10002.99, 'Paid', false, 'Card'),
('BILL025', 'P025', NULL, 'C025', '2024-01-25', 11815.39, 11815.39, 'Paid', false, 'UPI'),
('BILL026', 'P026', 'IP026', 'C026', '2024-06-28', 5879.36, 4879.36, 'Insurance', true, 'Insurance'),
('BILL027', 'P027', NULL, NULL, '2024-03-04', 12034.44, 0.00, 'Unpaid', false, 'Card'),
('BILL028', 'P028', 'IP028', 'C028', '2023-12-24', 7594.20, 7594.20, 'Paid', false, 'Cash'),
('BILL029', 'P029', NULL, 'C029', '2024-05-05', 10536.82, 7821.91, 'Insurance', true, 'Insurance'),
('BILL030', 'P030', 'IP030', NULL, '2023-06-18', 13872.74, 13872.74, 'Paid', false, 'UPI');

-- select table
SELECT * FROM Billings;

create table Hospital_Finance_Expenses(
Expense_id varchar(15) primary key unique not null,
Date date not null,
Expense_Type varchar(50) not null,
Amount Decimal(10,2) not null,
Department_id varchar(15),
foreign key (department_id) references Departments (department_id),
Description text not null,
Payment_Method enum('Cash','Card','Bank Transfer') not null,
Paid_To varchar(50) not null,
Invoice_Number varchar(25) not null,
Recorded_By varchar(30) not null,
Approved_By varchar(30) not null,
Reccuring boolean not null
);

INSERT INTO Hospital_Finance_Expenses VALUES
('EXP001', '2025-01-05', 'Medical Equipment', 125000.00, 'DPT001', 'Cardiology ward monitor purchase', 'Bank Transfer', 'MedTech Pvt Ltd', 'INV001', 'Dr. Ravi', 'Admin1', TRUE),
('EXP002', '2025-01-10', 'MRI Machine Maintenance', 85000.50, 'DPT002', 'Annual maintenance of MRI scanner', 'Card', 'GE Healthcare', 'INV002', 'Dr. Arjun', 'Admin2', TRUE),
('EXP003', '2025-01-12', 'Orthopedic Implants', 62000.00, 'DPT003', 'Knee replacement surgical kits', 'Cash', 'OrthoCare Ltd', 'INV003', 'Dr. Mehta', 'Admin3', FALSE),
('EXP004', '2025-01-15', 'Pediatric Beds', 43000.75, 'DPT004', 'New pediatric beds for ward', 'Card', 'KidsMed Supplies', 'INV004', 'Dr. Seema', 'Admin4', TRUE),
('EXP005', '2025-01-18', 'Stethoscope Procurement', 15000.00, 'DPT005', 'Stethoscopes for new interns', 'Cash', 'Pulse Medical', 'INV005', 'Dr. Rajat', 'Admin1', FALSE),
('EXP006', '2025-01-20', 'Nursing Uniforms', 20000.00, 'DPT006', 'Uniforms for new nursing staff', 'Bank Transfer', 'Textile India', 'INV006', 'Nurse Mathew', 'Admin2', TRUE),
('EXP007', '2025-01-22', 'Cleaning Equipment', 18000.00, 'DPT007', 'Disinfection and cleaning tools', 'Card', 'CleanTech Ltd', 'INV007', 'Housekeeping', 'Admin3', TRUE),
('EXP008', '2025-01-24', 'Blood Test Kits', 30000.00, 'DPT008', 'Kits for CBC and liver profile tests', 'Cash', 'Lab Diagnostics', 'INV008', 'Lab Incharge', 'Admin2', FALSE),
('EXP009', '2025-01-27', 'X-ray Films', 22000.00, 'DPT009', 'Bulk purchase of X-ray films', 'Card', 'RadPrint Pvt Ltd', 'INV009', 'Dr. Yash', 'Admin3', FALSE),
('EXP010', '2025-01-30', 'Pharmacy Stock', 50000.00, 'DPT010', 'Restocking essential medicines', 'Bank Transfer', 'Pharma Distributors', 'INV010', 'Pharmacist', 'Admin5', TRUE),
('EXP011', '2025-02-01', 'Office Supplies', 10000.00, 'DPT011', 'Files, folders, printers for admin', 'Card', 'OfficeHub', 'INV011', 'Admin Staff', 'Admin2', TRUE),
('EXP012', '2025-02-03', 'Billing Software Maintenance', 12000.00, 'DPT012', 'Annual software subscription', 'Bank Transfer', 'SoftBill Pvt Ltd', 'INV012', 'Billing Officer', 'Admin4', TRUE),
('EXP013', '2025-02-06', 'Catering Services', 35000.00, 'DPT013', 'Monthly patient meal service', 'Card', 'SpiceCaterers', 'INV013', 'Catering Head', 'Admin1', TRUE),
('EXP014', '2025-02-08', 'Security Equipment', 25000.00, 'DPT014', 'CCTV cameras and uniforms', 'Bank Transfer', 'Secure Solutions', 'INV014', 'Security Head', 'Admin3', TRUE),
('EXP015', '2025-02-10', 'IT Server Upgrade', 90000.00, 'DPT015', 'New servers for hospital database', 'Card', 'TechIndia', 'INV015', 'IT Admin', 'Admin2', FALSE),
('EXP016', '2025-02-12', 'Cardiology Conference', 42000.00, 'DPT001', 'Doctor training & seminar expenses', 'Cash', 'MedConf Org', 'INV016', 'Dr. Ravi', 'Admin1', FALSE),
('EXP017', '2025-02-14', 'Neurology Journals', 8500.00, 'DPT002', 'Subscription to medical journals', 'Card', 'Medical Press', 'INV017', 'Dr. Arjun', 'Admin3', TRUE),
('EXP018', '2025-02-16', 'Ortho Surgical Gloves', 7000.00, 'DPT003', 'Monthly supply of surgical gloves', 'Bank Transfer', 'SurgiSafe Ltd', 'INV018', 'Store Manager', 'Admin2', TRUE),
('EXP019', '2025-02-18', 'Pediatric Toys', 3000.00, 'DPT004', 'Toys for children in pediatric ward', 'Cash', 'ChildJoy', 'INV019', 'Nurse Sita', 'Admin4', FALSE),
('EXP020', '2025-02-20', 'General Medicine Books', 11000.00, 'DPT005', 'Medical reference books', 'Card', 'Book World', 'INV020', 'Librarian', 'Admin2', FALSE),
('EXP021', '2025-02-22', 'Nurse Station Renovation', 60000.00, 'DPT006', 'Furniture and layout upgrade', 'Bank Transfer', 'BuildPro Ltd', 'INV021', 'Nurse Head', 'Admin3', FALSE),
('EXP022', '2025-02-24', 'Floor Cleaners', 9500.00, 'DPT007', 'Monthly stock of floor cleaning agents', 'Cash', 'CleanIndia', 'INV022', 'Cleaning Supervisor', 'Admin1', TRUE),
('EXP023', '2025-02-26', 'Lab Equipment Repair', 38000.00, 'DPT008', 'Microscope and centrifuge repair', 'Card', 'TechLabs', 'INV023', 'Lab Tech', 'Admin2', FALSE),
('EXP024', '2025-02-28', 'Radiology Room AC', 45000.00, 'DPT009', 'New AC installation in radiology room', 'Bank Transfer', 'CoolAir Ltd', 'INV024', 'Engineer', 'Admin3', FALSE),
('EXP025', '2025-03-01', 'Pharmacy Refrigerators', 52000.00, 'DPT010', 'Cold storage for vaccines', 'Cash', 'FridgeMart', 'INV025', 'Pharmacist', 'Admin5', FALSE),
('EXP026', '2025-03-03', 'Admin Staff Training', 17000.00, 'DPT011', 'HR training session', 'Card', 'HR Academy', 'INV026', 'HR Officer', 'Admin1', TRUE),
('EXP027', '2025-03-05', 'Billing Printer Repair', 5500.00, 'DPT012', 'Thermal printer maintenance', 'Cash', 'PrinterFix', 'INV027', 'Billing Officer', 'Admin2', FALSE),
('EXP028', '2025-03-07', 'Catering Gas Cylinders', 4000.00, 'DPT013', 'Monthly gas supply', 'Card', 'GasWorld', 'INV028', 'Catering Staff', 'Admin4', TRUE),
('EXP029', '2025-03-09', 'Security Staff Uniforms', 13000.00, 'DPT014', 'Winter uniforms', 'Bank Transfer', 'Uniform Co.', 'INV029', 'Security Officer', 'Admin2', TRUE),
('EXP030', '2025-03-11', 'Network Firewall Upgrade', 65000.00, 'DPT015', 'Security firewall for data center', 'Card', 'CyberSecure Ltd', 'INV030', 'IT Officer', 'Admin5', FALSE);

select * from Hospital_Finance_Expenses;
-- create table feedback
CREATE TABLE Feedback(
Feedback_id varchar(15) primary key not null unique,
Patient_id varchar(15) not null,
foreign key (patient_id) references patients (patient_id),
Doctor_id varchar(15) not null,
foreign key (Doctor_id) references Doctors (Doctor_id),
Staff_id varchar(15) not null,
foreign key (Staff_id) references Staff (Staff_id),
Date_Submitted date not null,
Doctor_Rating decimal(2,1)check(Doctor_Rating between 1 and 10) not null,
Staff_Rating decimal(2,1) check (Staff_rating between 1 and 10) not null,
Doctor_Feedback text not null,
Staff_Feedback text not null
);

-- insert values 
INSERT INTO Feedback values
('FDBK001', 'P001', 'D001', 'STF001', '2023-01-09', 9.8, 4.2, 'Was in a rush, not very attentive.', 'Slow service at times.'),
('FDBK002', 'P002', 'D002', 'STF002', '2024-11-08', 3.2, 8.6, 'Excellent care and diagnosis.', 'Could be more helpful.'),
('FDBK003', 'P003', 'D003', 'STF003', '2023-01-24', 3.0, 1.8, 'Took time to explain everything.', 'Efficient and polite.'),
('FDBK004', 'P004', 'D004', 'STF004', '2023-11-01', 6.9, 5.3, 'Very professional and helpful.', 'Could be more helpful.'),
('FDBK005', 'P005', 'D005', 'STF005', '2024-03-10', 7.8, 5.6, 'Excellent care and diagnosis.', 'Slow service at times.'),
('FDBK006', 'P006', 'D006', 'STF006', '2023-12-02', 7.1, 3.2, 'Average service.', 'Very courteous and responsive.'),
('FDBK007', 'P007', 'D007', 'STF007', '2024-06-25', 5.4, 9.2, 'Excellent care and diagnosis.', 'Could be more helpful.'),
('FDBK008', 'P008', 'D008', 'STF008', '2024-04-26', 6.2, 6.7, 'Was in a rush, not very attentive.', 'Very courteous and responsive.'),
('FDBK009', 'P009', 'D009', 'STF009', '2024-10-13', 1.5, 2.0, 'Average service.', 'Slow service at times.'),
('FDBK010', 'P010', 'D010', 'STF010', '2023-05-04', 8.9, 9.6, 'Very professional and helpful.', 'Excellent support and attitude.'),
('FDBK011', 'P011', 'D011', 'STF011', '2023-09-06', 4.7, 7.5, 'Excellent care and diagnosis.', 'Very courteous and responsive.'),
('FDBK012', 'P012', 'D012', 'STF012', '2024-06-16', 6.8, 8.8, 'Was in a rush, not very attentive.', 'Efficient and polite.'),
('FDBK013', 'P013', 'D013', 'STF013', '2024-10-18', 2.4, 5.0, 'Average service.', 'Could be more helpful.'),
('FDBK014', 'P014', 'D014', 'STF014', '2023-08-02', 5.5, 6.1, 'Took time to explain everything.', 'Slow service at times.'),
('FDBK015', 'P015', 'D015', 'STF015', '2023-07-01', 9.1, 9.0, 'Very professional and helpful.', 'Excellent support and attitude.'),
('FDBK016', 'P016', 'D016', 'STF016', '2023-01-20', 7.6, 7.4, 'Excellent care and diagnosis.', 'Efficient and polite.'),
('FDBK017', 'P017', 'D017', 'STF017', '2023-05-25', 4.3, 5.2, 'Took time to explain everything.', 'Could be more helpful.'),
('FDBK018', 'P018', 'D018', 'STF018', '2024-05-01', 6.5, 4.6, 'Average service.', 'Very courteous and responsive.'),
('FDBK019', 'P019', 'D019', 'STF019', '2024-03-03', 2.7, 6.9, 'Was in a rush, not very attentive.', 'Excellent support and attitude.'),
('FDBK020', 'P020', 'D020', 'STF020', '2023-04-27', 9.4, 9.3, 'Very professional and helpful.', 'Efficient and polite.'),
('FDBK021', 'P021', 'D021', 'STF021', '2024-08-12', 8.1, 8.0, 'Took time to explain everything.', 'Excellent support and attitude.'),
('FDBK022', 'P022', 'D022', 'STF022', '2024-02-11', 4.2, 3.8, 'Average service.', 'Could be more helpful.'),
('FDBK023', 'P023', 'D023', 'STF023', '2023-02-17', 5.7, 5.1, 'Excellent care and diagnosis.', 'Very courteous and responsive.'),
('FDBK024', 'P024', 'D024', 'STF024', '2024-06-10', 7.3, 7.0, 'Very professional and helpful.', 'Slow service at times.'),
('FDBK025', 'P025', 'D025', 'STF025', '2023-10-23', 6.0, 6.4, 'Took time to explain everything.', 'Efficient and polite.'),
('FDBK026', 'P026', 'D026', 'STF026', '2024-04-06', 1.9, 3.6, 'Was in a rush, not very attentive.', 'Could be more helpful.'),
('FDBK027', 'P027', 'D027', 'STF027', '2023-06-30', 3.9, 2.7, 'Average service.', 'Very courteous and responsive.'),
('FDBK028', 'P028', 'D028', 'STF028', '2023-03-15', 7.9, 9.5, 'Very professional and helpful.', 'Excellent support and attitude.'),
('FDBK029', 'P029', 'D029', 'STF029', '2024-05-21', 2.6, 5.9, 'Took time to explain everything.', 'Slow service at times.'),
('FDBK030', 'P030', 'D030', 'STF030', '2023-02-06', 8.3, 7.2, 'Excellent care and diagnosis.', 'Efficient and polite.');

-- select table feedback
SELECT * FROM Feedback;


-- Queries
-- basic (1 -6)
-- 1. Get all patients  with blood group 'B+':
select First_name, Last_name, Blood_group 
from Patients
where blood_group = 'B+';

-- 2. List all departments on the 1st floor:
select * from departments
where Floor_Number = 1;

-- 3. Get doctors with over 10 years of experience:
select * From Doctors
where Years_of_Experience > 10;

-- 4. Get contact numbers of staff working night shifts:
select First_Name, Last_Name, Role, Contact_Number from Staff
where Shift ='Night';


-- 5. List medication names expiring before 2025:
select * from Medications
where Expiry_Date < '2025-01-01';

-- 6. Get all completed consultations in 2025:
select * from Consultation
where status = 'Completed' and Date_of_Consultation < '2025-01-01';

-- INTERMEDIATE QUERIES (7–16)
-- 7) Show  doctor name and department name using JOIN:
select D.First_Name, D. Last_Name, Dpt. Department_Name
From Doctors D
Join Departments Dpt
on D. Department_id = Dpt. Department_id;

-- 8) . List Doctors and their Specialization working under ‘General Medicine ’ department:
select D.First_Name, D.Last_Name, D. Specialization,
Dpt. Department_Name
from Doctors D
join Departments Dpt
on D.Department_id = Dpt. Department_id
Where Department_Name = "General Medicine";

 -- 9) Average consultation fee per department:
 select D. Department_id, avg(D. Consultation_fee)as Average_Fees
 from Doctors D
 group by D. Department_id;

-- 10) Count of inpatients per room type:
select ipt.Room_Type, count(ipt.Inpatient_id) as Total_Number_of_Inpatients
from Inpatients ipt
group by ipt.Room_Type;

-- 11)Total billing amount paid by each patient:
select B. Patient_id, sum(B.Amount_Paid)as Total_Paid
from Billings B
group by patient_id;

-- 12)Get number of consultations per doctor:
select C. Doctor_id, count(C.consultation_id)as Number_of_Consultations
from Consultation c 
group by Doctor_id;

-- 13)   Show patients who have both Consultation and Inpatient record:
select distinct P.Patient_id, P.First_Name, P.Last_Name
From Patients P
Join consultation C on P.Patient_id = C.Patient_id
join inpatients ipt on P.Patient_id = ipt. Patient_id;

-- 14)List of doctors who have received a feedback rating over 9:
select D. First_Name, D. Last_Name, 
F. Doctor_Rating
From Doctors D
Join Feedback F
where Doctor_Rating > 9;

-- 11)  Get top 3 paid staff members:
select S.First_Name, S. Last_Name, S.Salary
from Staff S 
order by Salary desc
limit 3;

-- 16)  List all patients who had a consultation for 'Knee Pain':
select P. Patient_id, P. First_Name, 
C. Reason_for_Visit
From Patients P 
Join Consultation C 
On P.Patient_id = C. Patient_id
where Reason_for_visit = "Knee Pain";

 -- 17) Patients with unpaid bills:
select B.Patient_id, P.First_Name, P.Last_Name, B. Payment_Status
from Billings B
Join Patients P 
On B. Patient_id = P. Patient_id
where B. Payment_Status = "Unpaid";

-- 18) List all doctors and the number of consultations they’ve done:
select D.First_Name, D. Last_Name,
count(C. Consultation_id) as Number_of_Consultations
from Doctors D
Join Consultation C 
on D. Doctor_id = C. Doctor_id
group by D. First_Name, D.Last_Name;

-- 19)  Get names of patients who visited more than once:
select P.Patient_id, P. First_Name, P.Last_Name,
count(C.Consultation_id)
from Patients P 
Join Consultation C 
on P. Patient_id = C. Patient_id
group by P. Patient_id, P. First_Name, P.Last_Name
Having count(C.Consultation_id) > 1;

-- 15) List departments with more than 2 doctors:
Select Department_id, count(*)as Doctor_Count
from Doctors 
Group by Department_id
having count(*) > 2;


