SELECT fName , Amount_paid
FROM Student
WHERE Amount_Paid > (SELECT AVG(Amount_Paid) FROM Student);
