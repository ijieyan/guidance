CREATE DATABASE senior_high_guidance;
USE senior_high_guidance;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('student', 'counselor') NOT NULL
);

CREATE TABLE appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    counselor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    description TEXT,
    FOREIGN KEY (student_id) REFERENCES users(id),
    FOREIGN KEY (counselor_id) REFERENCES users(id)
);
