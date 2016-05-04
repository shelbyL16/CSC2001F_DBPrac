SELECT Department, FORMAT(AVG(Amount_Paid),0)
FROM Student
GROUP BY Department;

