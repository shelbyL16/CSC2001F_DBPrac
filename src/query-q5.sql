SELECT SUM(Amount_Paid), Department
FROM Student
GROUP BY Department
HAVING SUM(Amount_Paid) > 3000;

