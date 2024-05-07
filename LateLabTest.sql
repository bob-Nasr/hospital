    SELECT Patient.patient_ID, Patient.p_fname, Patient.p_lname, Laboratory.dateResult, Technician.t_name
    FROM Patient
    JOIN Laboratory ON Patient.patient_ID = Laboratory.patient_ID
    JOIN tech_lab ON Laboratory.lab_nb = tech_lab.lab_nb
    JOIN Technician ON tech_lab.tech_id = Technician.tech_id
    WHERE Laboratory.dateResult < DATEADD(day, -5, GETDATE())