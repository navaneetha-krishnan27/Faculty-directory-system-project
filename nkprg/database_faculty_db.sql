CREATE DATABASE faculty_db;

USE faculty_db;

CREATE TABLE faculty (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  title VARCHAR(100),
  department VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(50),
  bio TEXT,
  photo VARCHAR(255)
);
CREATE TABLE admin_users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL -- store hashed passwords!
);
INSERT INTO admin_users (username, password)
VALUES ('admin', 'admin123');
select * from admin_users;
select * from faculty;
SELECT CONCAT(
    'INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (',
    id, ', ',
    QUOTE(name), ', ',
    QUOTE(title), ', ',
    QUOTE(department), ', ',
    QUOTE(email), ', ',
    QUOTE(phone), ', ',
    QUOTE(bio), ', ',
    QUOTE(photo),
    ');'
) AS export_sql
FROM faculty;
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (1, 'Dr.S.Ravikumar', 'Professor', 'Department of oceanography and coastal area studies', 'ravibiotech201320@yahoo.com', '(+91)4561 243470', 'Teaching experience: 20 years
Research experience: 19 years', 'ravikumar.jpg');
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (4, 'Dr. K. CHANDRASEKAR', 'Associate Professor', 'cum-Placement officer', 'chandrasekark@alagappauniversity.ac.in', '04565-225211', 'Research Experience : 12', 'K_Chandrasekar.png');
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (5, 'Dr. M. NATARAJAN', 'Assistant Professor', 'Department of English and Foreign Languages', 'natarajanm@alagappauniversity.ac.in', '04565 223226', 'Teaching Experience : 11 Years 
Research Experience: 11 Years ', 'natarajan.jpg');
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (6, 'Dr. A. Narayanamoorthy', 'Senior Professor and head', 'Department of Economics and Rural Development', 'narayana64@gmail.com', '91-4565-225842', 'Teaching Experience : 31 Years', 'narayanamurthi.jpg');
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (7, 'Dr.R. ALAMELUMANGAI', 'Senior Professor & Head ', 'Department of English and Foreign Languages', 'amangair@gmail.com', '04565-223 541 ', 'Academic Qualifications: M.Com., M.Phil., Ph.D., DRD
Teaching Experience : 34 Years 
Research Experience : 32 Years ', 'alamelumangai.jpg');
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (8, 'Dr.N.SASIKUMAR', 'Assistant Professor', 'Department of Education', 'sasikumar@alagappauniversity.ac.in', '+91 4565 230207', 'Academic Qualifications: M.Sc., M.Sc., MPhil., M.Ed., Ph.D., NET(Edu)., SET(Edu)
Research Experience: 11 years', 'sasikumar.jpg');
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (9, 'DR S KISHORE KUMAR', 'DEPUTY LIBRARIAN', 'CENTRAL LIBRARY', 'kishore@yahoo.com', '9444138098', 'Academic Qualifications : M.Sc., B.Ed, M.L.I.Sc, M.Phil, PGDLAN, Ph.D. 
Total Teaching
Experience : Years - 27', 'kishore.jpg');
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (10, 'Dr. SP. M. KANIMOZHI', 'Assistant Professor', 'Department of English and Foreign Languages', 'kanimozhi@gmail.com', '+91 4565228724 ', 'Total Teaching Experience : 13 Years
Total Research Experience : 10 Years', 'kanimozhi.jpg');
INSERT INTO faculty (id, name, title, department, email, phone, bio, photo) VALUES (11, 'Dr. R. Suresh ', 'Assistant Professor personal', 'Department of Economics and Rural Development', 'suresh@gmail.com', '7398783451', 'Total Teaching Experience : 8 Years
Total Research Experience : 8 Years', 'suresh.jpg');




