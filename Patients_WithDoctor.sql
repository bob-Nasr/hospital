INSERT INTO Dr_treat_patient (patient_id, doctor_id)
VALUES 
(3, 1),
(4, 1);

----We want to see the information of patients of Doctor with ID 1

SELECT P.*
FROM Patient P
JOIN Dr_treat_patient DTP ON P.patient_ID = DTP.patient_id
WHERE DTP.doctor_id = 1;