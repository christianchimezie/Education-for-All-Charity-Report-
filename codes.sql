SELECT *           /* to view all Donation_Data*/
FROM Donation_Data;

SELECT * 			 /* to view all Donor_Data*/
FROM Donor_Data;

SELECT state, SUM(donation), COUNT(donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
GROUP by state
ORDER by sum(donation) asc
limit 10;

SELECT state, SUM(donation), COUNT(donation)  /* Top 10 States with high Donations*/
FROM Donation_Data
GROUP by state
ORDER by sum(donation) DESC
limit 10;

SELECT Donation_Data.state, Donor_Data.donation_frequency,Donation_Data.job_field,SUM(Donation_Data.donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
JOIN Donor_Data on Donation_Data.id = Donor_Data.id
GROUP by state
ORDER by sum(Donation_Data.donation) asc
limit 10;

SELECT Donation_Data.state, Donor_Data.donation_frequency,Donation_Data.job_field,SUM(Donation_Data.donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
JOIN Donor_Data on Donation_Data.id = Donor_Data.id
GROUP by state
ORDER by sum(Donation_Data.donation) DESC
limit 10;

SELECT Donation_Data.job_field, Donor_Data.university, SUM(Donation_Data.donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
JOIN Donor_Data on Donation_Data.id = Donor_Data.id
WHERE Donation_Data.state = 'Wyoming' or Donation_Data.state = 'maine'
		or Donation_Data.state = 'South Dakota' or Donation_Data.state = 'North Dakota'
        or Donation_Data.state = 'Alaska' or Donation_Data.state = 'West Virginia' 
        or Donation_Data.state = 'South Carolina'  or Donation_Data.state = 'New Hampshire'  
        or Donation_Data.state = 'Hawaii'  or Donation_Data.state = 'Montana' 
GROUP by Donation_Data.job_field
ORDER by sum(Donation_Data.donation) ASC
limit 10;

SELECT Donation_Data.job_field, Donor_Data.university, SUM(Donation_Data.donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
JOIN Donor_Data on Donation_Data.id = Donor_Data.id
WHERE Donation_Data.state = 'California' or Donation_Data.state = 'Texas'
		or Donation_Data.state = 'Florida' or Donation_Data.state = 'New York'
        or Donation_Data.state = 'Virginia' or Donation_Data.state = 'Illinois' 
        or Donation_Data.state = 'District of Columbia'  or Donation_Data.state = 'Tennessee'  
        or Donation_Data.state = 'Georgia'  or Donation_Data.state = 'Ohio' 
GROUP by Donation_Data.job_field
ORDER by sum(Donation_Data.donation) DESC
limit 10;

SELECT  Donor_Data.university, Donation_Data.job_field, SUM(Donation_Data.donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
JOIN Donor_Data on Donation_Data.id = Donor_Data.id
WHERE Donation_Data.state = 'California' or Donation_Data.state = 'Texas'
		or Donation_Data.state = 'Florida' or Donation_Data.state = 'New York'
        or Donation_Data.state = 'Virginia' or Donation_Data.state = 'Illinois' 
        or Donation_Data.state = 'District of Columbia'  or Donation_Data.state = 'Tennessee'  
        or Donation_Data.state = 'Georgia'  or Donation_Data.state = 'Ohio' 
GROUP by Donor_Data.university
ORDER by sum(Donation_Data.donation) DESC
limit 10;

SELECT Donor_Data.university,Donation_Data.job_field,SUM(Donation_Data.donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
JOIN Donor_Data on Donation_Data.id = Donor_Data.id
WHERE Donation_Data.state = 'Wyoming' or Donation_Data.state = 'maine'
		or Donation_Data.state = 'South Dakota' or Donation_Data.state = 'North Dakota'
        or Donation_Data.state = 'Alaska' or Donation_Data.state = 'West Virginia' 
        or Donation_Data.state = 'South Carolina'  or Donation_Data.state = 'New Hampshire'  
        or Donation_Data.state = 'Hawaii'  or Donation_Data.state = 'Montana' 
GROUP by Donor_Data.university
ORDER by sum(Donation_Data.donation) ASC
limit 10;

SELECT Donor_Data.car, SUM(Donation_Data.donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
JOIN Donor_Data on Donation_Data.id = Donor_Data.id
WHERE Donation_Data.state = 'California' or Donation_Data.state = 'Texas'
		or Donation_Data.state = 'Florida' or Donation_Data.state = 'New York'
        or Donation_Data.state = 'Virginia' or Donation_Data.state = 'Illinois' 
        or Donation_Data.state = 'District of Columbia'  or Donation_Data.state = 'Tennessee'  
        or Donation_Data.state = 'Georgia'  or Donation_Data.state = 'Ohio' 
GROUP by Donor_Data.car
ORDER by sum(Donation_Data.donation) DESC
limit 10;

SELECT Donor_Data.car, SUM(Donation_Data.donation)   /* Top 10 States with low Donations*/
FROM Donation_Data
JOIN Donor_Data on Donation_Data.id = Donor_Data.id
WHERE  Donation_Data.state = 'Wyoming' or Donation_Data.state = 'maine'
		or Donation_Data.state = 'South Dakota' or Donation_Data.state = 'North Dakota'
        or Donation_Data.state = 'Alaska' or Donation_Data.state = 'West Virginia' 
        or Donation_Data.state = 'South Carolina'  or Donation_Data.state = 'New Hampshire'  
        or Donation_Data.state = 'Hawaii'  or Donation_Data.state = 'Montana' 
GROUP by Donor_Data.car
ORDER by sum(Donation_Data.donation) DESC
limit 10;