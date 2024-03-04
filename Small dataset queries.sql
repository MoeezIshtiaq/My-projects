Create database university_db

Create table Students (
student_id varchar(30),
first_name varchar(30),
last_name varchar(30),
date_of_birth date,
courses_id int
primary key (student_id)
);

Create table Courses (
course_id int,
course_name varchar(30),
instructor varchar(30),
credits int);

Insert into Students (student_id,
first_name,
last_name,
date_of_birth,
courses_id)
Values
(1, 'John', 'Doe', '1998-05-15',101),

(2, 'Jane', 'Smith', '1999-02-20',102),

(3, 'Alex', 'Johnson', '1997-09-10',103),

(4, 'Emily', 'Davis', '2000-07-03',104),

(5, 'Chris', 'Miller', '1998-12-22',105),

(6, 'Sarah', 'Wilson', '1999-08-30',106),

(7, 'Michael', 'Taylor', '1997-04-18',103),

(8, 'Jessica', 'Brown', '2001-01-25',102),

(9, 'David', 'Anderson', '1998-11-08',105),

(10, 'Emma', 'Garcia', '1999-06-12',104),

(11, 'Daniel', 'Martinez', '2000-03-07',101),

(12, 'Olivia', 'Thomas', '1997-12-04',102),

(13, 'Ethan', 'Robinson', '1998-09-17',103),

(14, 'Ava', 'White', '1999-07-20',104),

(15, 'Noah', 'Hall', '1998-02-11',105),

(16, 'Sophia', 'Adams', '2000-10-03',106),

(17, 'Liam', 'Clark', '1997-05-26',102),

(18, 'Isabella', 'Hill', '1999-11-15',103),

(19, 'Lucas', 'Nelson', '1998-08-07',104),

(20, 'Mia', 'Baker', '2001-04-22',105),

(21, 'Amelia', 'Morris', '1997-01-14',106),

(22, 'Benjamin', 'Turner', '1999-10-09',102),

(23, 'Harper', 'King', '2000-06-02',103),

(24, 'Jackson', 'Perez', '1998-03-25',104),

(25, 'Evelyn', 'Scott', '1999-12-18',105),

(26, 'Lincoln', 'Stewart', '1998-07-11',106),

(27, 'Aria', 'Cooper', '2000-04-04',102),

(28, 'Jack', 'Ross', '1997-09-27',103),

(29, 'Lily', 'Foster', '1998-06-19',104),

(30, 'Owen', 'Powell', '2001-02-02',105);

Insert into Courses(
course_id,
course_name,
instructor,
credits)
Values
(
101      , 'Introduction to CS'  , 'Prof. Anderson'   , 3
),(
102      , 'Biology 101'         , 'Prof. White'      , 4
),(
103      , 'Physics for Majors'  , 'Prof. Rodriguez'  , 4
),(
104      , 'Calculus I'          , 'Prof. Brown'      , 3
),(
105      , 'Organic Chemistry'   , 'Prof. Taylor'     , 4
),(
106      , 'Data Structures'     , 'Prof. Martinez'   , 3
),(
107      , 'Genetics'            , 'Prof. Johnson'    , 4
),(
108      , 'Quantum Physics'     , 'Prof. Adams'      , 4
),(
109      , 'Linear Algebra'      , 'Prof. Turner'     , 3
),(
110      , 'Analytical Chemistry', 'Prof. Hall'       , 4
),(
111      , 'Algorithms'          , 'Prof. Morris'     , 3
),(
112      , 'Ecology'             , 'Prof. Stewart'    , 4
),(
113      , 'Astrophysics'        , 'Prof. Nelson'     , 4
),(
114      , 'Discrete Mathematics', 'Prof. Hill'       , 3
),(
115      , 'Inorganic Chemistry' , 'Prof. Baker'      , 4
),(
116      , 'Artificial Intelligence', 'Prof. Clark'   , 3
),(
117      , 'Cell Biology'        , 'Prof. Scott'      , 4
),(
118      , 'Thermodynamics'      , 'Prof. Cooper'     , 4
),(
119      , 'Probability Theory'  , 'Prof. Foster'     , 3
),(
120      , 'Human Anatomy'       , 'Prof. Powell'     , 4
),(
121      , 'Software Engineering', 'Prof. King'       , 3
),(
122      , 'Microbiology'        , 'Prof. Perez'      , 4
),(
123      , 'Electromagnetism'    , 'Prof. Thomas'     , 4
),(
124      , 'Number Theory'       , 'Prof. Davis'      , 3
),(
125      , 'Organic Synthesis'   , 'Prof. Miller'     , 4
),(
126      , 'Computer Networks'   , 'Prof. Brown'      , 3
),(
127      , 'Animal Physiology'   , 'Prof. Taylor'     , 4
),(
128      , 'Machine Learning'    , 'Prof. Robinson'   , 4
),(
129      , 'Differential Equations', 'Prof. Adams'    , 3
),(
130      , 'Virology'            , 'Prof. Turner'     , 4
)


--Retrieve all records from the Students table.
select *
from Students;

--Retrieve all records from the Courses table.
select *
from Courses;


--Find the students who are enrolled in the course with course_id 102.
select student_id, courses_id
from Students
where courses_id=102

--Find the courses taught by the instructor 'Prof. White'
select course_id, instructor
from Courses
where instructor like '%White%'

--Retrieve the names of students and their courses.
select first_name, last_name, courses_id
from Students



--Find the total number of students in the Students table.
select count(*) as Number_of_students
from Students


--Calculate the average number of credits for all courses in the Courses table.
select AVG(credits) as Average_credits
from Courses


--Retrieve students who were born after the year 1999.
Select first_name, last_name, date_of_birth
from Students
where year(date_of_birth)=1999


--Retrieve courses with more than 3 credits, sorted by the number of credits in descending order.
select *
from Courses
where credits>3
order by credits

--Retrieve a list of students with their names and the names of the courses they are enrolled in.
select Students.first_name, Students.last_name, Courses.course_name
from Students
join Courses on Students.courses_id=course_id



--Retrieve the course details along with the names of students enrolled in each course.
select Students.first_name, Students.last_name, Courses.course_id, Courses.course_name, Courses.instructor, Courses.credits
from Courses
join Students on Courses.course_id=courses_id
