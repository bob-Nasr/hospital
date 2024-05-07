INSERT INTO Nurse_room (nurse_id, room_nb)
VALUES (1, 2), (1, 3), (1, 4);

INSERT INTO Nurse_room (nurse_id, room_nb)
VALUES (2, 5);

INSERT INTO Nurse_room (nurse_id, room_nb)
VALUES (3, 6), (3, 7);


----We will see informations of nurses working in more than 3 room

SELECT Nurse.nurse_id, Nurse.n_name, COUNT(Nurse_room.room_nb) AS num_rooms
FROM Nurse
JOIN Nurse_room ON Nurse.nurse_id = Nurse_room.nurse_id
GROUP BY Nurse.nurse_id, Nurse.n_name
HAVING COUNT(Nurse_room.room_nb) > 3;

