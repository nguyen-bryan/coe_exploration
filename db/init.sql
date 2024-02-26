CREATE TABLE Courses (
    CRN INT PRIMARY KEY,
    course_name VARCHAR(255),
    course_description TEXT,
    credits INT
);

CREATE TABLE Users (
    userid INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE Majors (
    majorid INT PRIMARY KEY AUTO_INCREMENT,
    majorName VARCHAR(255),
    majorDescription TEXT,
    careerProspects VARCHAR(255)
);

-- Insert test data
INSERT INTO Courses (CRN, course_name, course_description, credits)
VALUES
    (12345, 'Introduction to Computer Science', 'An introductory course on computer science', 3),
    (23456, 'Database Management Systems', 'A course on managing relational databases', 4),
    (34567, 'Software Engineering', 'A course on software development methodologies', 3);

INSERT INTO Users (username, email, password)
VALUES 
    ('username', 'fake_email@gmail.com', 'password');

INSERT INTO Majors (majorName, majorDescription, careerProspects)
VALUES
    ('Architectural Engineering', 'As an architectural engineering student at Oregon State, you will learn to design and construct buildings and other structures that are safe, sustainable, and aesthetically pleasing.', 'Architectural Engineer, Structural Engineer, Construction Manager'),
    ('Bioengineering', 'As a bioengineering student at Oregon State, you will learn to apply engineering principles to biological systems and develop new technologies to improve human health.', 'Biomedical Engineer, Medical Device Engineer, Research Scientist'),
    ('Chemical Engineering', 'As a chemical engineering student at Oregon State, you will learn to design and optimize processes for the production of chemicals, fuels, and materials.', 'Chemical Engineer, Process Engineer, Environmental Engineer'),
    ('Civil Engineering', 'As a civil engineering student at Oregon State, you will learn to design and maintain infrastructure that is essential to modern society, including roads, bridges, and water systems.', 'Civil Engineer, Structural Engineer, Transportation Engineer'),
    ('Computer Science', 'As a computer science student at Oregon State, you will learn to use algorithms to develop software and design solutions to real-world problems.', 'Software Engineer, Data Scientist, Web Developer'),
    ('Construction Engineering Management', 'As a construction engineering management student at Oregon State, ...', 'career 1, career 2, career 3'),
    ('Ecological Engineering', 'As an ecological engineering student at Oregon State, you will learn to design and manage ecosystems that are sustainable and resilient to environmental change.', 'Ecological Engineer, Environmental Consultant, Water Resources Engineer'),
    ('Electrical and Computer Engineering', 'As an electrical and computer engineering student at Oregon State, you will learn to design, build, and support new technologies while refining existing systems, processes, and products.', 'Electrical Engineer, Systems Engineer, Hardware Design Engineer'),
    ('Energy Systems Engineering', 'As an energy systems engineering student at Oregon State, you will learn to design and optimize energy systems that are sustainable, efficient, and resilient to environmental change.', 'Energy Engineer, Renewable Energy Engineer, Energy Analyst'),
    ('Engineering Science', 'As an engineering science student at Oregon State, you will learn to... ', 'career 1, career 2, career 3'),
    ('Environmental Engineering', 'As an environmental engineering student at Oregon State, you will learn to design and implement solutions to environmental problems, such as pollution, waste management, and water quality.', 'Environmental Engineer, Water Resources Engineer, Environmental Consultant'),
    ('Industrial Engineering', 'As an industrial engineering student at Oregon State, you will learn to optimize complex systems and processes to improve efficiency, productivity, and quality.', 'Industrial Engineer, Quality Engineer, Operations Research Analyst'),
    ('Manufacturing Engineering', 'As a manufacturing engineering student at Oregon State, you will learn to design and optimize manufacturing processes and systems to produce high-quality products.', 'Manufacturing Engineer, Process Engineer, Quality Engineer'),
    ('Mechanical Engineering', 'As a mechanical engineering student at Oregon State, you will learn to design and build machines and systems that are essential to modern society, from cars to power plants.', 'Mechanical Engineer, Aerospace Engineer, Robotics Engineer'),
    ('Nuclear Engineering', 'As a nuclear engineering student at Oregon State, you will learn to design and operate nuclear systems that are safe, efficient, and sustainable.', 'Nuclear Engineer, Radiation Protection Engineer, Nuclear Safety Engineer'),
    ('Outdoor Products', 'As an outdoor products student at Oregon State, you will learn to design and manufacture outdoor products that are innovative, sustainable, and functional.', 'Product Designer, Product Developer, Product Manager'),
    ('Radiation Health Physics', 'As a radiation health physics student at Oregon State, you will learn to...', 'career 1, career 2, career 3');
