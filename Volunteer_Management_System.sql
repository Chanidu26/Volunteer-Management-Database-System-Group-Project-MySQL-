create DATABASE Volunteer;
use Volunteer;

# Volunteer table
CREATE TABLE Volunteer (
    VolunteerID varchar(6) PRIMARY KEY,
    Volunteer_type VARCHAR(50),
    Gender VARCHAR(10),
    Availability VARCHAR(100),
    DateOfBirth DATE,
    Age INT,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    City VARCHAR(100),
    Province VARCHAR(100),
    Street VARCHAR(100),
    Phone_number VARCHAR(20)
);

INSERT INTO Volunteer (VolunteerID, Volunteer_type, Gender, Availability, DateOfBirth, Age, First_name, Last_name, Email, 
City, Province, Street, Phone_number)VALUES

('VOL001', 'Event Support', 'Male', 'Weekends', '1999-04-20', 25, 'Saman', 'Silva', 'samansilva@example.com', 
'Colombo', 'Western Province', '12A Galle Road', '011-2345678'),
('VOL002', 'Tutoring', 'Female', 'Evenings', '2000-08-15', 24, 'Nadeesha', 'Perera', 'nadeeshap@example.com', 
'Kandy', 'Central Province', '45B Peradeniya Road', '081-3456789'),
('VOL003', 'Mentoring', 'Non-binary', 'Flexible', '2001-12-10', 23, 'Kasun', 'Fernando', 'kasunf@example.com',
 'Galle', 'Southern Province', '78 Matara Road', '091-4567890'),
('VOL004', 'Fundraising', 'Female', 'Weekdays', '2002-06-25', 22, 'Malini', 'Jayawardena', 'malinij@example.com', 
'Jaffna', 'Northern Province', '34 Jaffna Street', '021-5678901'),
('VOL005', 'Administrative', 'Male', 'Weekdays', '2003-02-12', 21, 'Dinesh', 'Bandara', 'dineshb@example.com', 
'Matara', 'Southern Province', '56 Mirissa Road', '041-6789012'),
('VOL006', 'Event Support', 'Female', 'Weekends', '2004-10-30', 20, 'Chathurika', 'Gunathilaka', 'chathurikag@example.com', 
'Negombo', 'Western Province', '89B Beach Road', '031-7890123'),
('VOL007', 'Tutoring', 'Male', 'Evenings', '2005-07-17', 19, 'Supun', 'Ratnayake', 'supunr@example.com', 
'Anuradhapura', 'North Central Province', '67 Anuradhapura Road', '025-8901234'),
('VOL008', 'Mentoring', 'Female', 'Flexible', '2006-03-05', 18, 'Sandali', 'Samaraweera', 'sandalis@example.com',
 'Kurunegala', 'North Western Province', '23 Kurunegala Street', '037-9012345');
 
DELETE FROM Volunteer WHERE VolunteerID = 'VOL008';

UPDATE Volunteer SET Volunteer_type = 'Coordinator' WHERE VolunteerID = 'VOL002';
UPDATE Volunteer SET Availability = 'Weekends and evenings' WHERE VolunteerID = 'VOL006';



# Volunteer_Assignment Table
CREATE TABLE Volunteer_Assignment (
    Assignment_ID VARCHAR(6) PRIMARY KEY,
    VolunteerID VARCHAR(6),
    Date_Assigned DATE
);


INSERT INTO Volunteer_Assignment (Assignment_ID, VolunteerID, Date_Assigned)
VALUES
('ASG001', 'VOL001', '2024-03-01'),
('ASG002', 'VOL002', '2024-03-05'),
('ASG003', 'VOL003', '2024-03-10'),
('ASG004', 'VOL004', '2024-03-15'),
('ASG005', 'VOL005', '2024-03-20'),
('ASG006', 'VOL006', '2024-03-25'),
('ASG007', 'VOL007', '2024-03-30'),
('ASG008', 'VOL008', '2024-04-01');

DELETE FROM Volunteer_Assignment WHERE VolunteerID = 'VOL008';

UPDATE Volunteer_Assignment SET Date_Assigned = '2024-04-03' WHERE VolunteerID = 'VOL002';
UPDATE Volunteer_Assignment SET Date_Assigned = '2024-05-30' WHERE Assignment_ID = 'ASG007';
select * from Volunteer_Assignment;



#Society Table

CREATE TABLE Society (
    SocietyId varchar(6) PRIMARY KEY,
    SocietyName VARCHAR(255) NOT NULL,
    Description VARCHAR(255),
    Faculty_Advisor VARCHAR(100),
    Responsible_Person VARCHAR(100),
    Contact_Email VARCHAR(100),
    Contact_Number VARCHAR(20)
);


INSERT INTO Society (SocietyId, SocietyName, Description, Faculty_Advisor, Responsible_Person, Contact_Email, Contact_Number)
VALUES
('SOC001', 'Engineering Society', 'Promotes engineering culture and innovation among students.',
 'Dr. Chaminda Rathnayaka', 'Samantha Perera', 'engineering_society@example.com', '071-2345678'),
 
('SOC002', 'Robotics Club', 'Encourages students to explore robotics and automation technologies.',
 'Prof. Dilani Silva', 'Kamal Fernando', 'robotics_club@example.com', '077-3456789'),
 
('SOC003', 'Civil Engineering Society', 'Focuses on activities related to civil engineering and infrastructure development.',
 'Dr. Nimal Weerasinghe', 'Amanda de Silva', 'civil_society@example.com', '075-4567890'),
 
('SOC004', 'Computer Society', 'Promotes computer science education and organizes coding competitions.', 
'Dr. Ranjith Kumara', 'Nadeesha Rajapaksha', 'computer_society@example.com', '072-5678901'),

('SOC005', 'Electrical Engineering Club', 'Engages students in projects related to electrical and electronics engineering.', 
'Prof. Sunil Gunawardena', 'Chathura Senarath', 'electrical_club@example.com', '078-6789012'),

('SOC006', 'Mechanical Engineering Society', 'Provides a platform for students interested in mechanical engineering to collaborate and innovate.', 
'Dr. Harsha Wijesinghe', 'Dinesh Perera', 'mechanical_society@example.com', '076-7890123'),

('SOC007', 'Environmental Engineering Club', 'Raises awareness about environmental issues and promotes sustainable engineering practices.', 
'Prof. Manoj Abeygunawardena', 'Thilini Silva', 'environmental_club@example.com', '073-8901234'),

('SOC008', 'Biomedical Engineering Society', 'Explores the intersection of engineering and healthcare to improve medical technologies.',
 'Dr. Priyantha Perera', 'Samantha Fernando', 'biomedical_society@example.com', '079-9012345');
 
 
DELETE FROM Society WHERE SocietyID = 'SOC008';
UPDATE Society SET Description = 'Supports community projects and initiatives.' WHERE SocietyId = 'SOC002';
UPDATE Society SET Contact_Email = 'contact@societyxyz.com' WHERE SocietyId = 'SOC002';



# Event_Type Table
CREATE TABLE Event_Type (
    EventTypeID varchar(6) PRIMARY KEY,
    Event_Type_Name VARCHAR(100) NOT NULL
);


INSERT INTO Event_Type (EventTypeID, Event_Type_Name)
VALUES
('ET001', 'Workshop'),
('ET002', 'Seminar'),
('ET003', 'Hackathon'),
('ET004', 'Conference'),
('ET005', 'Competition'),
('ET006', 'Symposium'),
('ET007', 'Exhibition'),
('ET008', 'Guest Lecture');


DELETE FROM Event_Type WHERE EventTypeID = 'ET008';
UPDATE Event_Type SET Event_Type_Name = 'Webinar' WHERE EventTypeID = 'ET007';
UPDATE Event_Type SET Event_Type_Name = 'Conference' WHERE EventTypeID = 'ET006';



# Event Table
CREATE TABLE Event (
    EventId VARCHAR(5) PRIMARY KEY,
    Location VARCHAR(255) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Description VARCHAR(255),
    Date DATE,
    Time TIME,
    Maximum_Volunteers_Needed INT, 
    Current_Volunteers_Enrolled INT, 
    SocietyID VARCHAR(6),
    EventTypeID VARCHAR(6),
    FOREIGN KEY (SocietyID) REFERENCES Society(SocietyId), 
    FOREIGN KEY (EventTypeID) REFERENCES Event_Type(EventTypeID) 
);


INSERT INTO Event (EventId, Location, Title, Description,
 Date, Time, Maximum_Volunteers_Needed, Current_Volunteers_Enrolled, SocietyID, EventTypeID)VALUES
 
('EVT01', 'Engineering Auditorium', 'Introduction to Robotics Workshop', 'An introductory workshop covering basics of robotics.', 
'2024-04-10', '10:00:00', 50, 25, 'SOC002', 'ET001'),
('EVT02', 'Faculty Seminar Hall', 'Civil Engineering Symposium', 'A symposium discussing recent trends in civil engineering.', 
'2024-04-15', '14:00:00', 80, 40, 'SOC003', 'ET006'),
('EVT03', 'Computer Lab 2', 'Hackathon: Code for Change', 'A hackathon focusing on developing solutions for social issues.',
 '2024-04-20', '09:00:00', 60, 30, 'SOC004', 'ET003'),
('EVT05', 'Mechanical Workshop', 'Engineering Expo', 'An exhibition showcasing engineering projects and innovations.', 
'2024-04-30', '10:30:00', 120, 60, 'SOC006', 'ET007'),
('EVT06', 'Faculty Seminar Hall', 'Biomedical Engineering Conference', 'A conference discussing recent advancements in biomedical engineering.', 
'2024-05-05', '13:00:00', 150, 75, 'SOC005', 'ET004'),
('EVT07', 'Computer Lab 1', 'Coding Competition', 'A competition to test coding skills of participants.',
 '2024-05-10', '08:30:00', 40, 20, 'SOC004', 'ET005'),
('EVT08', 'Engineering Auditorium', 'Environmental Engineering Seminar', 'A seminar focusing on environmental engineering challenges.',
 '2024-05-15', '15:00:00', 70, 35, 'SOC007', 'ET002');
 
 
DELETE FROM Event WHERE EventId = 'EVT08';
UPDATE Event SET Location = 'Online' WHERE EventId = 'EVT06';
UPDATE Event SET Time = '09:00:00' WHERE EventId = 'EVT07';
SELECT * FROM Event;



# Event_Task Table
CREATE TABLE Event_Task (
    EventId varchar(6),
    TaskID varchar(7),
    TaskName VARCHAR(100),
    Description TEXT,
    DateAssigned DATE,
    PRIMARY KEY (EventId, TaskID),
    FOREIGN KEY (EventId) REFERENCES Event(EventId)
);



INSERT INTO Event_Task (EventId, TaskID, TaskName, 
Description, DateAssigned)VALUES

('EVT01', 'TASK001', 'Setup Equipment', 'Set up robotics kits and equipment for workshop participants.', '2024-04-09'),
('EVT01', 'TASK002', 'Registration', 'Manage registration of participants and distribute workshop materials.', '2024-04-10'),
('EVT02', 'TASK001', 'Arrangement', 'Arrange seating and necessary equipment for symposium speakers and attendees.', '2024-04-14'),
('EVT02', 'TASK002', 'Documentation', 'Document proceedings and take notes during the symposium sessions.', '2024-04-15'),
('EVT03', 'TASK001', 'Preparation', 'Prepare computers and software for hackathon participants.', '2024-04-19'),
('EVT03', 'TASK002', 'Assistance', 'Provide assistance and technical support to hackathon participants.', '2024-04-20'),
('EVT05', 'TASK001', 'Exhibition Arrangement', 'Organize and set up exhibits for the engineering expo.', '2024-04-29'),
('EVT05', 'TASK002', 'Guidance', 'Guide visitors and provide information about the exhibits during the expo.', '2024-04-30'),
('EVT06', 'TASK001', 'Logistics', 'Handle logistics and coordination for conference attendees and speakers.', '2024-05-04'),
('EVT06', 'TASK002', 'Moderation', 'Moderate panel discussions and Q&A sessions during the conference.', '2024-05-05'),
('EVT07', 'TASK001', 'Problem Creation', 'Create coding problems and challenges for the competition.', '2024-05-09'),
('EVT07', 'TASK002', 'Judging', 'Participate in judging the solutions submitted by competition participants.', '2024-05-10'),
('EVT02', 'TASK003', 'Setup', 'Set up seating arrangements and audiovisual equipment for the seminar.', '2024-05-14'),
('EVT02', 'TASK004', 'Assistance', 'Assist speakers and attendees during the seminar.', '2024-05-15');

DELETE FROM Event_Task WHERE TaskID = 'TASK004';
UPDATE Event_Task SET Description = 'Manage event registration and participant check-in.' WHERE TaskID = 'TASK002';
UPDATE Event_Task SET DateAssigned = '2024-05-04' WHERE TaskID = 'TASK003';



# Foreign key relationship to Event_Task
ALTER TABLE Event
ADD CONSTRAINT fk_Event_Event_Task FOREIGN KEY (EventId) REFERENCES Event_Task(EventId);

# Foreign key relationship to Event_Type
ALTER TABLE Event
ADD CONSTRAINT fk_Event_EventType FOREIGN KEY (EventTypeID) REFERENCES Event_Type(EventTypeID);


# Volunteer - Event Relationship Table
CREATE TABLE Volunteer_Event (
    VolunteerID VARCHAR(6),
    EventID VARCHAR(5),
    CONSTRAINT fk_Volunteer_Event_VolunteerID FOREIGN KEY (VolunteerID) REFERENCES Volunteer(VolunteerID),
    CONSTRAINT fk_Volunteer_Event_EventID FOREIGN KEY (EventID) REFERENCES Event(EventID),
    PRIMARY KEY (VolunteerID, EventID)
);


INSERT INTO Volunteer_Event (VolunteerID, EventID)
VALUES
('VOL001', 'EVT01'),
('VOL002', 'EVT01'),
('VOL003', 'EVT02'),
('VOL004', 'EVT02'),
('VOL005', 'EVT03'),
('VOL006', 'EVT03'),
('VOL007', 'EVT05'),
('VOL001', 'EVT06'),
('VOL001', 'EVT05'),
('VOL002', 'EVT05'),
('VOL003', 'EVT06'),
('VOL004', 'EVT06'),
('VOL005', 'EVT07'),
('VOL006', 'EVT07');

DELETE FROM Volunteer_Event WHERE VolunteerID = 'VOL006' and EventID = "EVT07" ;
UPDATE Volunteer_Event SET EventID = 'EVT02' WHERE VolunteerID = 'VOL002' and EventID = "EVT05";
UPDATE Volunteer_Event SET EventID = 'EVT01' WHERE VolunteerID = 'VOL005' and EventID = "EVT07";


# Society - Event Relationship
ALTER TABLE Event
ADD CONSTRAINT FK_Organizes_Event_Society FOREIGN KEY (SocietyID) REFERENCES Society(SocietyID);


# Leadership_Position Table
CREATE TABLE Leadership_Position (
    PositionID varchar(6) PRIMARY KEY,
    PositionName VARCHAR(100) NOT NULL,
    VolunteerID VARCHAR(6),
    SocietyID VARCHAR(6)
);


INSERT INTO Leadership_Position (PositionID, PositionName, VolunteerID, SocietyID)
VALUES
('POS001', 'President', 'VOL001', 'SOC002'),
('POS002', 'Vice President', 'VOL002', 'SOC002'),
('POS003', 'Secretary', 'VOL003', 'SOC002'),
('POS004', 'Treasurer', 'VOL004', 'SOC002'),
('POS005', 'President', 'VOL005', 'SOC004'),
('POS006', 'Vice President', 'VOL006', 'SOC004'),
('POS007', 'Secretary', 'VOL007', 'SOC004'),
('POS008', 'Treasurer', 'VOL002', 'SOC004');

DELETE FROM Leadership_Position WHERE PositionID = "POS008";
UPDATE Leadership_Position SET PositionName = 'Vice President' WHERE VolunteerID = 'VOL002';
UPDATE Leadership_Position SET PositionName = 'Treasurer' WHERE PositionID = 'POS005';



# Teams Table
CREATE TABLE Teams (
    TeamId VARCHAR(7) PRIMARY KEY,
    Team_name VARCHAR(100) NOT NULL,
    Description VARCHAR(255),
    SocietyID VARCHAR(6)
);



INSERT INTO Teams (TeamId, Team_name, Description, SocietyID)
VALUES
('TEAM001', 'Public Relations Team', 'Responsible for handling public relations and communication for the event.', 'SOC002'),
('TEAM002', 'Marketing Team', 'Responsible for marketing and promotion activities for the event.', 'SOC002'),
('TEAM003', 'Program Team', 'Responsible for planning and coordinating the program schedule for the event.', 'SOC002'),
('TEAM004', 'Public Relations Team', 'Responsible for handling public relations and communication for the event.', 'SOC004'),
('TEAM005', 'Marketing Team', 'Responsible for marketing and promotion activities for the event.', 'SOC004'),
('TEAM006', 'Program Team', 'Responsible for planning and coordinating the program schedule for the event.', 'SOC004'),
('TEAM007', 'Public Relations Team', 'Responsible for handling public relations and communication for the event.', 'SOC003'),
('TEAM008', 'Marketing Team', 'Responsible for marketing and promotion activities for the event.', 'SOC003'),
('TEAM009', 'Program Team', 'Responsible for planning and coordinating the program schedule for the event.', 'SOC003'),
('TEAM010', 'Public Relations Team', 'Responsible for handling public relations and communication for the event.', 'SOC005'),
('TEAM011', 'Marketing Team', 'Responsible for marketing and promotion activities for the event.', 'SOC005'),
('TEAM012', 'Program Team', 'Responsible for planning and coordinating the program schedule for the event.', 'SOC005');


UPDATE Teams SET Description = 'Leads marketing and promotional activities.' WHERE TeamId = 'TEAM002';
UPDATE Teams SET Team_Name = 'Event Planning Committee' WHERE TeamId = 'TEAM004';
DELETE FROM Teams WHERE TeamId = 'TEAM012';


# Foreign key constraint for SocietyID
ALTER TABLE Teams
ADD CONSTRAINT FK_Has_teams_Society FOREIGN KEY (SocietyID) REFERENCES Society(SocietyID);

# Foreign key constraint for VolunteerID
ALTER TABLE Leadership_Position
ADD CONSTRAINT FK_Has_Leadership_position_Volunteer FOREIGN KEY (VolunteerID) REFERENCES Volunteer(VolunteerID);

# Foreign key constraint for SocietyID
ALTER TABLE Leadership_Position
ADD CONSTRAINT FK_Has_Leadership_position_Society FOREIGN KEY (SocietyID) REFERENCES Society(SocietyID);


# Feedback Table
CREATE TABLE Feedback (
    FeedbackId varchar(7) PRIMARY KEY,
    Rating INT,
    Comments VARCHAR(255),
    Date_Submitted DATE,
    VolunteerID VARCHAR(6),
    EventID VARCHAR(5)
);


INSERT INTO Feedback (FeedbackId, Rating, Comments, Date_Submitted, VolunteerID, EventID)
VALUES
('FDBK001', 4, 'The workshop was informative and well-organized.', '2024-04-10', 'VOL001', 'EVT01'),
('FDBK002', 5, 'The symposium exceeded my expectations. Great job!', '2024-04-15', 'VOL002', 'EVT02'),
('FDBK003', 3, 'The hackathon could have been better planned.', '2024-04-20', 'VOL003', 'EVT03'),
('FDBK004', 4, 'The guest lecture was insightful and engaging.', '2024-04-25', 'VOL003', 'EVT03'),
('FDBK005', 5, 'The engineering expo was fantastic! I learned a lot.', '2024-04-30', 'VOL005', 'EVT05'),
('FDBK006', 4, 'The conference provided valuable insights into biomedical engineering.', '2024-05-05', 'VOL006', 'EVT06'),
('FDBK007', 5, 'The coding competition was challenging and fun.', '2024-05-10', 'VOL007', 'EVT07'),
('FDBK008', 4, 'The environmental engineering seminar was well-presented.', '2024-05-15', 'VOL005', 'EVT06');

DELETE FROM Feedback WHERE FeedbackId = 'FDBK008';
UPDATE Feedback SET Rating = 5 WHERE FeedbackId = 'FDBK006';
UPDATE Feedback SET Comments = "It was very effective" WHERE FeedbackId = 'FDBK007';



# Foreign key constraint for VolunteerID
ALTER TABLE Feedback
ADD CONSTRAINT FK_Recieves_Feedback_Volunteer FOREIGN KEY (VolunteerID) REFERENCES Volunteer(VolunteerID);

# Foreign key constraint for EventID
ALTER TABLE Feedback
ADD CONSTRAINT FK_Recieves_Feedback_Event FOREIGN KEY (EventID) REFERENCES Event(EventID);


# Skill Table
CREATE TABLE Skill (
    SkillID varchar(6) PRIMARY KEY,
    Skill_Name VARCHAR(100) NOT NULL
);


INSERT INTO Skill (SkillID, Skill_Name)
VALUES
('SKL001', 'Leadership'),
('SKL002', 'Communication'),
('SKL003', 'Teamwork'),
('SKL004', 'Problem Solving'),
('SKL005', 'Time Management'),
('SKL006', 'Technical Proficiency'),
('SKL007', 'Creativity'),
('SKL008', 'Adaptability');

UPDATE Skill SET Skill_Name = 'Project Management' WHERE SkillID = 'SKL008';
UPDATE Skill SET Skill_Name = 'Programming' WHERE SkillID = 'SKL003';
DELETE FROM Skill WHERE SkillID = 'SKL008';



# Volunteer - VolunteerSkillsMap Association Table
CREATE TABLE Volunteer_Skills_Map (
    VolunteerID varchar(6),
    SkillID varchar(6),
    Proficiency_Level INT,
    PRIMARY KEY (VolunteerID, SkillID),
    FOREIGN KEY (VolunteerID) REFERENCES Volunteer(VolunteerID),
    FOREIGN KEY (SkillID) REFERENCES Skill(SkillID)
);



INSERT INTO Volunteer_Skills_Map (VolunteerID, SkillID, Proficiency_Level)
VALUES
('VOL001', 'SKL001', 4),
('VOL001', 'SKL002', 5),
('VOL002', 'SKL003', 4),
('VOL002', 'SKL004', 3),
('VOL003', 'SKL002', 4),
('VOL003', 'SKL005', 5),
('VOL004', 'SKL001', 3),
('VOL004', 'SKL006', 4);

DELETE FROM Volunteer_Skills_Map WHERE VolunteerID = 'VOL004' and SkillID = "SKL006";
UPDATE Volunteer_Skills_Map SET Proficiency_Level = 5 WHERE VolunteerID = 'VOL002' AND SkillID = 'SKL003';
UPDATE Volunteer_Skills_Map SET Proficiency_Level = 3 WHERE VolunteerID = 'VOL002' AND SkillID = 'SKL003';


# Volunteer - Mentorship Relationship
CREATE TABLE Mentorship (
    MentorID varchar(6),
    MenteeID varchar(6),
    PRIMARY KEY (MentorID, MenteeID),
    FOREIGN KEY (MentorID) REFERENCES Volunteer(VolunteerID),
    FOREIGN KEY (MenteeID) REFERENCES Volunteer(VolunteerID)
);


INSERT INTO Mentorship (MentorID, MenteeID)
VALUES
('VOL001', 'VOL002'),
('VOL003', 'VOL004'),
('VOL005', 'VOL006');


# Team_Member Table
CREATE TABLE Team_Member (
    TeamId VARCHAR(7),
    VolunteerID VARCHAR(6),
    Role VARCHAR(100),
    PRIMARY KEY (TeamId, VolunteerID),
    FOREIGN KEY (TeamId) REFERENCES Teams(TeamId),
    FOREIGN KEY (VolunteerID) REFERENCES Volunteer(VolunteerID)
);


INSERT INTO Team_Member (TeamId, VolunteerID, Role)
VALUES
('TEAM001', 'VOL001', 'Public Relations Officer'),
('TEAM001', 'VOL002', 'Marketing Coordinator'),
('TEAM002', 'VOL003', 'Program Manager'),
('TEAM002', 'VOL004', 'Event Coordinator'),
('TEAM003', 'VOL005', 'Public Relations Officer'),
('TEAM003', 'VOL006', 'Marketing Coordinator'),
('TEAM004', 'VOL007', 'Program Manager'),
('TEAM004', 'VOL002', 'Event Coordinator');


DELETE FROM Team_Member WHERE VolunteerID = 'VOL002' and TeamId ="TEAM004"  ;
UPDATE Team_Member SET Role = 'Co chair' WHERE VolunteerID = 'VOL007' and TeamId ="TEAM004" ;
UPDATE Team_Member SET Role = 'Event Coordinator' WHERE VolunteerID = 'VOL006' and TeamId ="TEAM003"; 


########################## Simple queries ############################

# simple query
# demonstrate select operation
select * from event;

# project operation 
SELECT EventId, Title
FROM Event;

# carteisan product
SELECT *
FROM Volunteer, Event;

# create a user view and then querying it
CREATE VIEW VolunteerNames AS
SELECT VolunteerID, First_name, Last_name
FROM Volunteer;
SELECT * FROM VolunteerNames;

# renaming method 1 - rename the attributes 
SELECT VolunteerID AS ID, First_name AS FirstName, Last_name AS LastName
FROM Volunteer;

# renaming method 2 - renam ethe column name
ALTER TABLE Skill
CHANGE COLUMN Skill_Name SkillName VARCHAR(100);

# use of an aggregation function 
SELECT AVG(Age) AS AverageAge
FROM Volunteer;

# use of the LIKE keyword
SELECT *
FROM Volunteer
WHERE Last_name LIKE 'S%';


################ complex queries ##################

########## union
SELECT VolunteerID, First_name, Last_name
FROM Volunteer
WHERE Age > 20
UNION
SELECT VolunteerID, First_name, Last_name
FROM Volunteer
WHERE City = 'Colombo';


######### intersection 
SELECT V.VolunteerID, V.First_name, V.Last_name
FROM Volunteer V
WHERE V.Age > 20
INTERSECT
SELECT VE.VolunteerID, V.First_name, V.Last_name
FROM Volunteer_Event VE
JOIN Event E ON VE.EventID = E.EventId
JOIN Volunteer V ON VE.VolunteerID = V.VolunteerID
WHERE E.Location = 'Engineering Auditorium';



########## set difference
SELECT V.VolunteerID, V.First_name, V.Last_name
FROM Volunteer V
WHERE V.Age > 20
EXCEPT
SELECT V.VolunteerID, V.First_name, V.Last_name
FROM Volunteer V
WHERE V.City = 'Colombo';



########## division
SELECT MentorID
FROM Mentorship AS M
GROUP BY MentorID
HAVING COUNT(DISTINCT MenteeID) != (
    SELECT COUNT(DISTINCT MenteeID)
    FROM Mentorship
);


##################### using user views
########## inner join 

CREATE VIEW Volunteer_Info AS
SELECT VolunteerID, First_name, Last_name
FROM Volunteer;

CREATE VIEW Volunteer_Event_Info AS
SELECT VolunteerID, EventID
FROM Volunteer_Event;

CREATE VIEW Event_Info AS
SELECT EventID, Location, Title
FROM Event;

SELECT VI.VolunteerID, VI.First_name, VI.Last_name, EI.Location, EI.Title
FROM Volunteer_Info VI
INNER JOIN Volunteer_Event_Info VEI ON VI.VolunteerID = VEI.VolunteerID
INNER JOIN Event_Info EI ON VEI.EventID = EI.EventID;



########## natural join
drop view Volunteer_Info;
CREATE VIEW Volunteer_Info AS
SELECT VolunteerID, First_name, Last_name
FROM Volunteer;

drop view Event_Info;
CREATE VIEW Event_Info AS
SELECT EventID, Location, Title
FROM Event;

SELECT VI.VolunteerID, VI.First_name, VI.Last_name, EI.Location, EI.Title
FROM Volunteer_Info VI
NATURAL JOIN Event_Info EI;





############ left outer join
drop view Volunteer_Info;
CREATE VIEW Volunteer_Info AS
SELECT VolunteerID, First_name, Last_name
FROM Volunteer;

drop view Volunteer_Event_Info;
CREATE VIEW Volunteer_Event_Info AS
SELECT VolunteerID, EventID
FROM Volunteer_Event;

SELECT VI.VolunteerID, VI.First_name, VI.Last_name, VEI.EventID
FROM Volunteer_Info VI
LEFT OUTER JOIN Volunteer_Event_Info VEI ON VI.VolunteerID = VEI.VolunteerID;




######### right outer join
CREATE VIEW Volunteer_Event_View AS
SELECT * FROM Volunteer_Event;

CREATE VIEW Volunteer_View AS
SELECT * FROM Volunteer;

SELECT E.EventId, E.Title, V.VolunteerID, V.First_name, V.Last_name
FROM Event E
RIGHT OUTER JOIN Volunteer_Event_View VE ON E.EventId = VE.EventID
JOIN Volunteer_View V ON VE.VolunteerID = V.VolunteerID;



########### full outer join
CREATE VIEW Volunteer_Event_Full_Join AS
SELECT VE.VolunteerID, VE.EventID AS Volunteer_Event_EventID, E.EventId AS Event_EventID, E.Location, E.Title, E.Description, E.Date, E.Time, E.Maximum_Volunteers_Needed, E.Current_Volunteers_Enrolled, E.SocietyID, E.EventTypeID
FROM Volunteer_Event AS VE
LEFT JOIN Event AS E ON VE.EventID = E.EventId
UNION
SELECT VE.VolunteerID, VE.EventID AS Volunteer_Event_EventID, E.EventId AS Event_EventID, E.Location, E.Title, E.Description, E.Date, E.Time, E.Maximum_Volunteers_Needed, E.Current_Volunteers_Enrolled, E.SocietyID, E.EventTypeID
FROM Volunteer_Event AS VE
RIGHT JOIN Event AS E ON VE.EventID = E.EventId
WHERE VE.VolunteerID IS NULL;

SELECT *
FROM Volunteer_Event_Full_Join;




########### outer union 
CREATE VIEW Volunteer_Event_Feedback_Outer_Union AS
SELECT VolunteerID, EventID, NULL AS FeedbackID, NULL AS Rating, NULL AS Comments, NULL AS Date_Submitted
FROM Volunteer_Event
UNION ALL
SELECT VolunteerID, EventID, FeedbackId, Rating, Comments, Date_Submitted
FROM Feedback;

SELECT *
FROM Volunteer_Event_Feedback_Outer_Union;



########### nested queries #############


# nested 1 - Nested Query with Aggregation and Join
SELECT E.EventId, E.Title, AVG(F.Rating) AS Average_Rating
FROM Event AS E
JOIN Feedback AS F ON E.EventId = F.EventID
GROUP BY E.EventId, E.Title
HAVING AVG(F.Rating) > (
    SELECT AVG(Rating)
    FROM Feedback
);



# nested 2 - Nested Query with Set intersection
SELECT VolunteerID, First_name, Last_name
FROM Volunteer
WHERE VolunteerID IN (
    SELECT VolunteerID
    FROM Volunteer_Skills_Map
    WHERE SkillID = 'SKL001' -- SkillID for 'Leadership'
    INTERSECT
    SELECT VolunteerID
    FROM Volunteer_Skills_Map
    WHERE SkillID = 'SKL002' -- SkillID for 'Communication'
);



# nested 3 - set union
SELECT VolunteerID, First_name, Last_name
FROM Volunteer
WHERE VolunteerID IN (
    SELECT MentorID
    FROM Mentorship
    UNION
    SELECT MenteeID
    FROM Mentorship
);


######################################## Tuned Queries

# tuned query for union
SELECT VolunteerID, First_name, Last_name FROM Volunteer
WHERE Age > 20 OR City = 'Colombo';
# in here we removed the union operater and minimized the code.


# tuned query for intersection
SELECT V.VolunteerID, V.First_name, V.Last_name FROM Volunteer V
WHERE V.Age > 20
AND EXISTS ( SELECT 1 FROM Volunteer_Event VE JOIN Event E ON VE.EventID = E.EventId
    WHERE VE.VolunteerID = V.VolunteerID AND E.Location = 'Engineering Auditorium');


# tunded query for set difference 
SELECT V.VolunteerID, V.First_name, V.Last_name FROM Volunteer V
WHERE V.Age > 20 AND V.City != 'Colombo';


# tuned inner join
SELECT V.VolunteerID, V.First_name, V.Last_name, E.Location, E.Title
FROM Volunteer AS V
INNER JOIN Volunteer_Event AS VE ON V.VolunteerID = VE.VolunteerID
INNER JOIN Event AS E ON VE.EventID = E.EventID;


#tuned natural join
SELECT VI.VolunteerID, VI.First_name, VI.Last_name, EI.Location, EI.Title
FROM Volunteer AS VI
NATURAL JOIN Event AS EI;


## tuned left outer join using indexes
-- Creating indexes for Volunteer table
CREATE INDEX idx_Volunteer_VolunteerID ON Volunteer (VolunteerID);
-- Creating indexes for Volunteer_Event table
CREATE INDEX idx_Volunteer_Event_VolunteerID ON Volunteer_Event (VolunteerID);
-- Query with optimized LEFT OUTER JOIN and indexing
SELECT V.VolunteerID, V.First_name, V.Last_name, VE.EventID
FROM Volunteer AS V
LEFT OUTER JOIN Volunteer_Event AS VE ON V.VolunteerID = VE.VolunteerID;



# tuned right outer join - we removed the user views
SELECT E.EventId, E.Title, V.VolunteerID, V.First_name, V.Last_name
FROM Event E
RIGHT OUTER JOIN Volunteer_Event VE ON E.EventId = VE.EventID
INNER JOIN Volunteer V ON VE.VolunteerID = V.VolunteerID;


# tuned full outer join 

#we use a single LEFT JOIN between the Volunteer_Event table and the Event table to retrieve all records from Volunteer_Event and the matching records from Event
CREATE VIEW Volunteer_Event_Fullouter AS
SELECT VE.VolunteerID, VE.EventID AS Volunteer_Event_EventID, E.EventId AS Event_EventID, E.Location, E.Title, E.Description, E.Date, E.Time, E.Maximum_Volunteers_Needed, E.Current_Volunteers_Enrolled, E.SocietyID, E.EventTypeID
FROM Volunteer_Event AS VE
LEFT JOIN Event AS E ON VE.EventID = E.EventId;
SELECT * FROM Volunteer_Event_Fullouter;



# tuned outer union 
drop view Volunteer_Event_Feedback_Outer_Union;
CREATE VIEW Volunteer_Event_Feedback_Outer_Union AS
SELECT VolunteerID, EventID, NULL AS FeedbackID, NULL AS Rating, NULL AS Comments, NULL AS Date_Submitted
FROM Volunteer_Event
UNION ALL
SELECT VolunteerID, EventID, FeedbackId AS FeedbackID, Rating, Comments, Date_Submitted
FROM Feedback;
SELECT * FROM Volunteer_Event_Feedback_Outer_Union;


# tuned nested 2 - Nested Query with Set intersection (tuned version)
SELECT V.VolunteerID, V.First_name, V.Last_name FROM Volunteer AS V
JOIN Volunteer_Skills_Map AS S1 ON V.VolunteerID = S1.VolunteerID
JOIN Volunteer_Skills_Map AS S2 ON V.VolunteerID = S2.VolunteerID
WHERE S1.SkillID = 'SKL001' -- SkillID for 'Leadership'
AND S2.SkillID = 'SKL002'; -- SkillID for 'Communication'

