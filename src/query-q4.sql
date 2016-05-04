SELECT SUM(Amount_Paid) AS Total, Department
FROM Student
GROUP BY Department;
