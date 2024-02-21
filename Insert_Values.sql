INSERT INTO Patient (patient_ID, p_fname, p_lname, p_addr, p_age, p_gender, dateOfBirth, bld_type)
VALUES
  (1, 'Ibrahim', 'Nasr', 'Beirut', 21, 'M', '2001-09-30', 'O+'),
  (2, 'Maria', 'Keirouz', 'Fanar', 25, 'F', '1995-02-20', 'A-'),
  (3, 'Mohammed', 'Ahmed', 'Fanar', 45, 'M', '1978-09-10', 'B+'),
  (4, 'Melissa', 'Bshara', 'Saida', 35, 'F', '1987-07-03', 'AB-'),
  (5, 'Ali', 'Khalil', 'Tripoli', 50, 'M', '1973-12-18', 'O-');

INSERT INTO Doctor (doctor_ID, d_name, phoneNumber, d_gender, d_age, d_address)
VALUES (1, 'Fouad Adaimi', 76019446, 'M', 35, 'Achrafieh');

INSERT INTO Nurse (nurse_id, n_name, n_age, n_gender, shift)
VALUES 
  (1, 'Lea Yazbeck', 30, 'F', 'A'),
  (2, 'Odelia Al Ashy', 28, 'F', 'P'),
  (3, 'Ali Tawil', 32, 'M', 'AP');

INSERT INTO Technician (tech_id, t_name, t_age)
VALUES
  (1, 'Fadia Keirouz', 25),
  (2, 'Hanady Tawk', 27);

INSERT INTO Room (room_nb, disease_type_room, capacity)
VALUES
  (1, 'Cardiology', 2),
  (2, 'Neurology', 3),
  (3, 'Pediatrics', 4),
  (4, 'Orthopedics', 2),
  (5, 'Newborn', 2),
  (6, 'Dermatology', 3),
  (7, 'Cardiology', 1),
  (8, 'Psychiatry', 1);
