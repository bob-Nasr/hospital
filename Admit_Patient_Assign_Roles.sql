INSERT INTO Nurse_room (nurse_id, room_nb)
VALUES (1, 1);

INSERT INTO Enter_patient (patient_ID, entrance_date, room_nb)
VALUES (5, '2023-06-28', 1);

INSERT INTO Dr_treat_patient (patient_id, doctor_id)
VALUES (5, 1);

INSERT INTO Laboratory (lab_nb, patient_ID, doctor_ID, dateresulttest)
VALUES (1, 5, 1, '2023-06-30');

INSERT INTO tech_lab (tech_id, lab_nb)
VALUES (1, 1);


----We check if there are pending tests before exiting


IF NOT EXISTS (
  SELECT *
  FROM Laboratory
  WHERE patient_ID = 5
)
BEGIN
  INSERT INTO Exit_patient (patient_ID, exit_date)
  VALUES (5, GETDATE());
END