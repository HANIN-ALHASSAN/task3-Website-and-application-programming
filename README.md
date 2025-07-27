
# 🤖 Robot Arm Control Panel

This is a simple web-based control panel for a 6-motor robot arm. It allows users to set motor angles using sliders, save multiple motor positions (poses), view them in a table, reload any pose, and send it to the robot (e.g., via serial).

---

## 📌 Features

- 🎛️ Control 6 servo motors (Motor 1 → Motor 6) via sliders.
- 💾 Save any current pose to a MySQL database.
- 📄 Display saved poses in a dynamic table.
- 🔁 Load or delete any saved pose.
- ⚙️ Run the latest pose using a formatted string like:  
  `1,s90,s115,s90,s59,s90,s33` *(for hardware parsing)*

---

## 💻 Technologies Used

- Frontend: HTML, CSS, JavaScript
- Backend: PHP
- Database: MySQL (phpMyAdmin)

---

## 🗃️ Database Setup

1. Open **phpMyAdmin** on `http://localhost/phpmyadmin`.
2. Import the file [`robot_arm.sql`](robot_arm.sql).
3. This will create:
   - Database: `robot_arm`
   - Table: `poses`
   - Columns: `motor1` to `motor6`

You can also create it manually using:
```sql
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
```

---

## 📂 Project Files Description

| File | Description |
|------|-------------|
| `index.php` | Main web interface for sliders and pose table |
| `save_pose.php` | Saves the current motor values to DB |
| `get_all_poses.php` | Fetches all saved poses in JSON format |
| `remove_pose.php` | Deletes a selected pose by ID |
| `get_run_pose.php` | Fetches the latest pose in hardware-readable format: `s90,s120,...` |
| `robot_arm.sql` | SQL script to create the database & table |

---

## 📸 Interface Preview

- 6 motor sliders (0–180)
- Save, Reset, and Run buttons
- Table showing saved poses with Load & Remove actions

---

## 🚀 How to Run Locally

1. Copy all files to your `htdocs/robot_arm` folder (if using XAMPP).
2. Start **Apache** and **MySQL** via XAMPP Control Panel.
3. Access: [http://localhost/robot_arm/index.php](http://localhost/robot_arm/index.php)
4. Done! 🎉

---

## 🛠 Future Enhancements (Optional)

- Add user authentication
- Limit saved poses
- Add labels or names to each pose
- Integrate with Arduino or ESP32 using serial or HTTP

---

## 📄 License

Free to use and modify for personal or educational projects. ⭐
