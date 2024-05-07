SELECT Doctor.doctor_ID, Doctor.d_name, 
           (SELECT COUNT(*) 
            FROM Dr_treat_patient 
            WHERE doctor_id = Doctor.doctor_ID) AS patient_count
 FROM Doctor