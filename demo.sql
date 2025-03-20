CREATE DATABASE IF NOT EXISTS test001;
USE test001;

CREATE TABLE IF NOT EXISTS test_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO test_table (name, age, email) VALUES
('Ahmed Ali', 25, 'ahmed.ali@example.com'),
('Sara Mohamed', 30, 'sara.mohamed@example.com'),
('Omar Hassan', 22, 'omar.hassan@example.com'),
('Hala Tarek', 28, 'hala.tarek@example.com'),
('Youssef Adel', 35, 'youssef.adel@example.com'),
('Mariam Mostafa', 27, 'mariam.mostafa@example.com'),
('Khaled Gamal', 26, 'khaled.gamal@example.com'),
('Fatma Saeed', 24, 'fatma.saeed@example.com'),
('Mohamed Tamer', 29, 'mohamed.tamer@example.com'),
('Laila Ahmed', 23, 'laila.ahmed@example.com'),
('Ali Hassan', 31, 'ali.hassan@example.com'),
('Nourhan Hossam', 21, 'nourhan.hossam@example.com'),
('Mahmoud Saleh', 33, 'mahmoud.saleh@example.com'),
('Salma Fathy', 26, 'salma.fathy@example.com'),
('Ramy Khalil', 28, 'ramy.khalil@example.com'),
('Eman Reda', 32, 'eman.reda@example.com'),
('Hesham Nabil', 29, 'hesham.nabil@example.com'),
('Dalia Adel', 25, 'dalia.adel@example.com'),
('Tamer Osama', 30, 'tamer.osama@example.com'),
('Nadia Helmy', 27, 'nadia.helmy@example.com'),
('Wael Samir', 24, 'wael.samir@example.com'),
('Ghada Younis', 35, 'ghada.younis@example.com'),
('Mostafa Yasser', 22, 'mostafa.yasser@example.com'),
('Rana Mahmoud', 29, 'rana.mahmoud@example.com'),
('Sherif Amr', 26, 'sherif.amr@example.com'),
('Nour Tamer', 28, 'nour.tamer@example.com'),
('Hossam Kamal', 31, 'hossam.kamal@example.com'),
('Reem Adel', 23, 'reem.adel@example.com'),
('Karim Hassan', 32, 'karim.hassan@example.com'),
('Shady Wael', 25, 'shady.wael@example.com'),
('Nahla Nasser', 27, 'nahla.nasser@example.com'),
('Ola Mohamed', 24, 'ola.mohamed@example.com'),
('Amal Ibrahim', 30, 'amal.ibrahim@example.com'),
('Hani Youssef', 29, 'hani.youssef@example.com'),
('Basem Lotfy', 31, 'basem.lotfy@example.com'),
('Nermin Salah', 26, 'nermin.salah@example.com'),
('Adham Fathy', 22, 'adham.fathy@example.com'),
('Ziad Samy', 33, 'ziad.samy@example.com'),
('Samar Reda', 28, 'samar.reda@example.com'),
('Ramy Farid', 25, 'ramy.farid@example.com'),
('Dina Mohamed', 27, 'dina.mohamed@example.com'),
('Mostafa Gamal', 30, 'mostafa.gamal@example.com'),
('Salma Ehab', 21, 'salma.ehab@example.com'),
('Ahmed Tarek', 29, 'ahmed.tarek@example.com'),
('Lina Hossam', 24, 'lina.hossam@example.com'),
('Nourhan Adel', 26, 'nourhan.adel@example.com'),
('Hassan Saeed', 32, 'hassan.saeed@example.com'),
('Manal Yasser', 31, 'manal.yasser@example.com'),
('Yasmine Khaled', 28, 'yasmine.khaled@example.com'),
('Tamer Sameh', 27, 'tamer.sameh@example.com'),
('Gamal Lotfy', 30, 'gamal.lotfy@example.com'),
('Ehab Mohamed', 23, 'ehab.mohamed@example.com'),
('Fatma Khaled', 25, 'fatma.khaled@example.com'),
('Sherif Younis', 29, 'sherif.younis@example.com'),
('Nahla Mahmoud', 26, 'nahla.mahmoud@example.com'),
('Hesham Zaki', 31, 'hesham.zaki@example.com'),
('Sarah Fathy', 24, 'sarah.fathy@example.com'),
('Mostafa Samir', 28, 'mostafa.samir@example.com'),
('Amira Hassan', 27, 'amira.hassan@example.com'),
('Khaled Ehab', 30, 'khaled.ehab@example.com'),
('Laila Gamal', 21, 'laila.gamal@example.com'),
('Omar Salah', 32, 'omar.salah@example.com'),
('Dalia Mohamed', 29, 'dalia.mohamed@example.com'),
('Hany Kamal', 31, 'hany.kamal@example.com'),
('Yara Wael', 25, 'yara.wael@example.com'),
('Tariq Reda', 27, 'tariq.reda@example.com'),
('Hanan Mostafa', 26, 'hanan.mostafa@example.com'),
('Ahmed Nabil', 30, 'ahmed.nabil@example.com'),
('Zeinab Khaled', 22, 'zeinab.khaled@example.com'),
('Mohamed Gamal', 28, 'mohamed.gamal@example.com'),
('Salma Hassan', 24, 'salma.hassan@example.com'),
('Sherif Nasser', 29, 'sherif.nasser@example.com'),
('Dina Amr', 25, 'dina.amr@example.com'),
('Tamer Ibrahim', 27, 'tamer.ibrahim@example.com'),
('Hossam Adel', 30, 'hossam.adel@example.com'),
('Hala Mostafa', 23, 'hala.mostafa@example.com'),
('Wael Gamal', 31, 'wael.gamal@example.com'),
('Rasha Younis', 26, 'rasha.younis@example.com'),
('Mostafa Khalil', 28, 'mostafa.khalil@example.com'),
('Karim Ehab', 24, 'karim.ehab@example.com'),
('Nada Mohamed', 27, 'nada.mohamed@example.com'),
('Omar Samir', 30, 'omar.samir@example.com'),
('Sami Khaled', 22, 'sami.khaled@example.com'),
('Fatma Tamer', 28, 'fatma.tamer@example.com'),
('Lina Lotfy', 31, 'lina.lotfy@example.com'),
('Hesham Salah', 29, 'hesham.salah@example.com'),
('Rana Hassan', 25, 'rana.hassan@example.com'),
('Amira Saeed', 27, 'amira.saeed@example.com'),
('Khaled Tarek', 30, 'khaled.tarek@example.com'),
('Yasser Hany', 23, 'yasser.hany@example.com'),
('Dalia Wael', 26, 'dalia.wael@example.com'),
('Tariq Gamal', 28, 'tariq.gamal@example.com'),
('Laila Kamal', 24, 'laila.kamal@example.com'),
('Omar Nasser', 27, 'omar.nasser@example.com'),
('Salma Ehab', 30, 'salma.ehab@example.com'),
('Sherif Mostafa', 21, 'sherif.mostafa@example.com'),
('Hossam Reda', 32, 'hossam.reda@example.com');
