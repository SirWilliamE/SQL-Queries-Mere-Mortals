SELECT subjects.SubjectName, 
		COUNT(classes.SubjectID) AS ClassesOffered 
        FROM schoolschedulingexample.subjects
			INNER JOIN schoolschedulingexample.classes
				ON subjects.SubjectID = 
                classes.SubjectID
			GROUP BY subjects.SubjectName;
