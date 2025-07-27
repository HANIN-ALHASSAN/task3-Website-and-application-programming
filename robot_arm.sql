
CREATE DATABASE IF NOT EXISTS robot_arm;
USE robot_arm;

CREATE TABLE IF NOT EXISTS poses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    motor1 INT,
    motor2 INT,
    motor3 INT,
    motor4 INT,
    motor5 INT,
    motor6 INT
);
