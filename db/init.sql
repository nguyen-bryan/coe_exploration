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

-- TODO: still need outfitID FK to a rewards table
CREATE TABLE Pets (
    PetID INT PRIMARY KEY AUTO_INCREMENT,
    userid INT NOT NULL,
    pet_name VARCHAR(255) NOT NULL,
    mood ENUM('happy', 'sad', 'angry', 'neutral', 'excited', 'tired', 'curious') DEFAULT 'neutral',
    love INT DEFAULT 50,
    recreation INT DEFAULT 30,
    hunger INT DEFAULT 30,
    cleanliness INT DEFAULT 100,
    FOREIGN KEY (userid) REFERENCES Users(userid)
);

CREATE TABLE PetInteractions (
    PetInteractionsID INT AUTO_INCREMENT PRIMARY KEY,
    PetID INT NOT NULL,
    userid INT NOT NULL,
    InteractionType ENUM('pet', 'play', 'feed', 'wash') NOT NULL,
    InteractionTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PetID) REFERENCES Pets(PetID),
    FOREIGN KEY (userid) REFERENCES Users(userid)
);


CREATE TABLE Majors (
    majorid INT PRIMARY KEY AUTO_INCREMENT,
    majorName VARCHAR(255),
    majorDescription TEXT,
    careerProspects VARCHAR(255)
);

<<<<<<< Updated upstream
=======
CREATE TABLE MajorInformation (
    majorInfoID INT PRIMARY KEY AUTO_INCREMENT,
    majorid INT,
    majorName VARCHAR(255),
    topProfessors VARCHAR(255),
    studentQuotes TEXT,
    careers VARCHAR(255),
    minors VARCHAR(255),
    skills VARCHAR(255),
    interests VARCHAR(255),
    FOREIGN KEY (majorid) REFERENCES Majors(majorid)
);

CREATE TABLE Words (
    id INT PRIMARY KEY AUTO_INCREMENT,
    major_id INT,
    word VARCHAR(255),
    FOREIGN KEY (major_id) REFERENCES Majors(majorid)
);

>>>>>>> Stashed changes
-- Insert test data

INSERT INTO Courses (CRN, course_name, course_description, credits)
VALUES
    (12345, 'Introduction to Computer Science', 'An introductory course on computer science', 3),
    (23456, 'Database Management Systems', 'A course on managing relational databases', 4),
    (34567, 'Software Engineering', 'A course on software development methodologies', 3);

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
<<<<<<< Updated upstream
=======


INSERT INTO MajorInformation (majorInfoID, majorid, majorName, topProfessors, studentQuotes, careers, minors, skills, interests) 
VALUES 
    (1, 1, 'Architectual Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (2, 2, 'Bioengineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (3, 3, 'Chemical Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (4, 4, 'Civil Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (5, 5, 'Computer Science', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (6, 6, 'Construction Engineering Management', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (7, 7, 'Ecological Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (8, 8, 'Electrical and Computer Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (9, 9, 'Energy Systems Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (10, 10, 'Engineering Science', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (11, 11, 'Environmental Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (12, 12, 'Industrial Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (13, 13, 'Manufacturing Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (14, 14, 'Mechanical Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (15, 15, 'Nuclear Engineering', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (16, 16, 'Outdoor Products', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2'),
    (17, 17, 'Radiation Health Physics', 'Professor 1, Professor 2', 'Quote 1, Quote 2, Quote 3', 'Career 1, Career 2', 'Minor 1, Minor 2', 'Skill 1, Skill 2', 'Interest 1, Interest 2');


INSERT INTO Words (major_id, word) VALUES
    -- Bioengineering
    (2, 'Bioinformatics'), (2, 'Prosthetics'), (2, 'Implants'), (2, 'Bioreactors'),
    (2, 'Cellular'), (2, 'Molecular'), (2, 'Biochemical'), (2, 'Nanotechnology'),
    -- Chemical Engineering
    (3, 'Chemical'), (3, 'Reactor'), (3, 'Thermodynamics'), (3, 'Kinetics'),
    (3, 'Polymer'), (3, 'Process'), (3, 'Separation'), (3, 'Catalyst'),
    -- Civil Engineering
    (4, 'Structures'), (4, 'Roads'), (4, 'Bridges'), (4, 'Hydraulics'),
    (4, 'Geotechnics'), (4, 'Construction'), (4, 'Urban'), (4, 'Environmental'),
    -- Construction Engineering Management
    (6, 'Project'), (6, 'Management'), (6, 'Cost'), (6, 'Schedule'),
    (6, 'Contract'), (6, 'Quality'), (6, 'Safety'), (6, 'Risk'),
    -- Ecological Engineering
    (7, 'Ecosystem'), (7, 'Biodiversity'), (7, 'Sustainability'), (7, 'Restoration'),
    (7, 'Climate'), (7, 'Conservation'), (7, 'Natural resources'), (7, 'Ecology'),
    -- Electrical and Computer Engineering
    (8, 'Circuits'), (8, 'Signals'), (8, 'Electronics'), (8, 'Control'),
    (8, 'Power'), (8, 'Digital'), (8, 'Embedded'), (8, 'Communications'),
    -- Energy Systems Engineering
    (9, 'Renewable'), (9, 'Solar'), (9, 'Wind'), (9, 'Biofuel'),
    (9, 'Grid'), (9, 'Storage'), (9, 'Efficiency'), (9, 'Sustainability'),
    -- Engineering Science
    (10, 'Interdisciplinary'), (10, 'Research'), (10, 'Analysis'), (10, 'Modeling'),
    (10, 'Simulation'), (10, 'Optimization'), (10, 'Theory'), (10, 'Experimentation'),
    -- Environmental Engineering
    (11, 'Pollution'), (11, 'Waste'), (11, 'Remediation'), (11, 'Air quality'),
    (11, 'Water treatment'), (11, 'Environmental impact'), (11, 'Regulation'), (11, 'Health'),
    -- Industrial Engineering
    (12, 'Optimization'), (12, 'Productivity'), (12, 'Lean'), (12, 'Six sigma'),
    (12, 'Supply chain'), (12, 'Logistics'), (12, 'Process improvement'), (12, 'Quality control'),
    -- Manufacturing Engineering
    (13, 'Automation'), (13, 'Machining'), (13, 'Additive'), (13, 'Assembly'),
    (13, 'Manufacturability'), (13, 'Tooling'), (13, 'Process'), (13, 'Production'),
    -- Mechanical Engineering
    (14, 'Thermodynamics'), (14, 'Fluid'), (14, 'Heat transfer'), (14, 'Mechanics'),
    (14, 'Dynamics'), (14, 'Design'), (14, 'Materials'), (14, 'Robotics'),
    -- Nuclear Engineering
    (15, 'Nuclear'), (15, 'Reactors'), (15, 'Radiation'), (15, 'Safety'),
    (15, 'Security'), (15, 'Waste'), (15, 'Fusion'), (15, 'Fission'),
    -- Outdoor Products
    (16, 'Gear'), (16, 'Apparel'), (16, 'Equipment'), (16, 'Textiles'),
    (16, 'Materials'), (16, 'Design'), (16, 'Functionality'), (16, 'Sustainability'),
    -- Radiation Health Physics
    (17, 'Radiation'), (17, 'Health'), (17, 'Dosimetry'), (17, 'Protection'),
    (17, 'Radiobiology'), (17, 'Medical imaging'), (17, 'Nuclear medicine'), (17, 'Regulation');

>>>>>>> Stashed changes
