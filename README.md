Overview of the analysis:

In the beginning of this analysis we looked at the total number of employees per title who are reaching retirement age.  During the second half of the analysis we then looked at the employees who are ready to retire and eligible for mentorship.  These SQL queries were then exported to .csv files for later examination.

Results:

•	As seen in the query regarding the total number of people retiring from a given title Senior Engineers are going to need 25,916 new employees during this round of turnover see image.

![This is an image](https://github.com/BMoreland20/Pewlett_Hackard_Analysis/blob/main/Images/Retiring%20Titles.png)

•	Also worth noting from the same table Senor Staff will also be taking a very large hit in terms of turnover with 24,926 employees ready to leave the company for retirement see image above.

•	When taking a small sample of the employees who are ready to enter mentorship program, we can see that these employees have at least twenty years of experience. ![This is an image](https://github.com/BMoreland20/Pewlett_Hackard_Analysis/blob/main/Images/mentorship_eligibilty.png)

•	Lastly from this small sampling we can also see that many of the employees came to Pewlett Hackard in their thirties and have remained with the company for approximately 30 years, putting many of these employees at nearly sixty years of age these employees will be not far off from reaching retirement age as we can see from Lech Himler that  he has approximately ten years left before he is ready to retire, see image.  ![This is an image]( https://github.com/BMoreland20/Pewlett_Hackard_Analysis/blob/main/Images/Lech_Himler.png)

Summary: 

1)	During the upcoming “Silver Tsunami” there will be 72,458 employees leaving the company for retirement.  To mitigate the effects of these employees I would suggest that that at least 74,500 employees be hired during this time.  The reason I suggest nearly 2,000 more employees is that we may not retain all new hires to the company and a built in cushion of additional employees will help lessen the impact of those that do not stay with Pewlett Hackard.
	
2)	There are not enough employees who are ready for the mentorship program to reduce the burden of the “Silver Tsunami”.  The total number of mentorship ready employees comes to 1,549, see image and query `SELECT COUNT (*) FROM unique_titles`.

![This is an image](https://github.com/BMoreland20/Pewlett_Hackard_Analysis/blob/main/Images/mentorship_eligibilty_count.png)

This can be quickly looked up from the following SQL query `SELECT COUNT (*) FROM mentorship_eligibilty`
