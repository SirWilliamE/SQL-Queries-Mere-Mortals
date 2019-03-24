SELECT StaffID 
FROM schoolschedulingexample.faculty
  WHERE faculty.StaffID IN 
    (SELECT StaffID 
      FROM faculty_classes 
      WHERE faculty_classes.ClassID IN 
  (SELECT ClassID 
    FROM classes 
    WHERE classes.MondaySchedule = 0));
