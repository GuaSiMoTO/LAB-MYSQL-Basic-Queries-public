![](https://user-images.githubusercontent.com/970858/63474771-d6734700-c469-11e9-83bb-9429da563909.png)

# LAB-MYSQL-Basic-Queries
  
## Introduction
**Note:** This activity can be done in pairs or independently.

At Reboot Academy, our goal is to equip you with practical skills in database management. In this exercise, we will explore SQL, a fundamental tool for data management, within the exciting context of the Star Wars universe.

## Requirements
- Learn how to fork this repo.
- Clone this repo into your `code/labs` folder.
- Have MySQL installed.
- Have MySQL Workbench installed or any other MySQL client.

## Story:

<img src="https://github.com/user-attachments/assets/8a6749c3-7281-4345-a4e9-40dfe7167906" alt="Descripción de la imagen" width="200" align="right">

You have been recruited by the Rebel Alliance as a data specialist. After proving your skills in handling crucial data, you have been promoted to a senior data analyst. Your new mission involves handling more confidential and advanced data files. The success of the Rebel Alliance in their fight against the Galactic Empire depends on your ability to manage and analyze this data efficiently.

Recently, the Rebel Intelligence has uncovered an opportunity to hack into an Imperial database. This mission is of utmost importance, as the data retrieved could turn the tide in favor of the Rebel Alliance. You are tasked with extracting, manipulating, and analyzing data from both the Rebel and Imperial databases. Your work will directly impact strategic decisions and operational effectiveness in key battles and missions.

During this mission, you uncover shocking personal information that could change everything. Step by step, through your queries, you discover that an Imperial named Kyra Vandar has a connection to your past. This revelation unfolds as you dig deeper into the data ...

## Deliverables:
When you are done, please upload the following:
- Queries in markdown or Query result screenshots

## Iteration 0: Import the Imperial database 

## Iteration 1: Basic Select Queries

You need to familiarise yourself with the new imperial database although it does not look very different from the ones used before. Select the following information

1.1. Write a query to select distinct job titles from the `Characters` table.
  
1.2. Write a query to concatenate the `character_name` and `job_title` of all characters.
 

## Iteration 2: Where,Order and limit Queries

<img src="https://github.com/user-attachments/assets/7670c093-d18f-4b79-862c-704ade74f109" alt="Descripción de la imagen" width="330" height="620" align="right">

To conduct targeted searches within the Imperial database, you must master filtering data based on specific criteria. This skill is essential for retrieving relevant information swiftly.

1. Find planets whose names end with "ar" and have a population greater than 1,000,000
Using the LIKE clause and an additional condition on the population.
  
2. Find characters whose names contain the word "Skywalker" and were born after the year 2000

3. Find missions with a defined status (not NULL) that ended before the year 2000
  
4. Find starships whose names contain the word "Falcon", have a defined service (not NULL), and a capacity greater than 5

5. Find battles that occurred in the year 1983 and do not have a defined outcome (NULL value)
  
6. Find characters affiliated with the "Rebel Alliance" whose job title is not defined (NULL value) and were born on the planet "Tatooine"

7. Order Battles by Date in Descending Order

8. Combine ORDER BY with WHERE to Find and Sort Characters Born After 200

9. Limit the Number of Results for Planets to 5

10. Use LIMIT with OFFSET to Skip the First 5 Characters and Return the Next 5
    
11. Combine LIMIT with ORDER BY and WHERE to Find and Limit Battles
 
  
## Iteration 3: Copy Data from Planets to a New Table Old_Planets

First, create a new table Old_Planets with the same structure as Planets. Then,Combine INSERT with SELECT to insert data from Planets where the population is greater than 1,000,000.

<img src="https://github.com/user-attachments/assets/2f0d551e-d85e-4342-bdc8-f5779bc53152" alt="Descripción de la imagen" width="600" >

## Iteration 4: Advanced Delete

1. Combine DELETE with LIMIT to Remove the First 2 Characters Born After the Year 2000
2. Combine DELETE with LIMIT and OFFSET to Skip the First 3 Characters and Remove the Next 2 with a Job Title of 'Captain' and Born After the Year 2000

## Iteration 5: The encrypted note

A suspicious note has ended up on your desk, it is written with many symbols that you don't understand and seems to have been sent by the empire. In it you manage to make out 3 words Murder , Fahter  y Vandar

<img src="https://github.com/user-attachments/assets/320d1656-181a-4372-88b4-b753373b05d3" width="600" >

5.1 Identifying whith a query Who is Vandar in the the characters table.

5.2 Search in the children table to see if Vandar has had any children or if there are any with a null name.

5.3 There are many children with null in the database, see if there are any that also match your date of birth 1995-09-21

5.4 Search with id_Character for a match in the characters table to confirm your suspicions.

There is no doubt, the note was right, your father is Kyra Vandar and belonged to the dark side, the anger invades you, you leave the rebel alliances and start a long road alone with no direction....

## Bonus 

1. Write a query to find the total population of all planets in the 'Core Worlds' region.
2. Write a query to find the maximum and minimum capacities of ships in service with the Rebel Alliance.

## Submission

Upon completion, run the following commands:

```
$ git add .
$ git commit -m "done"
$ git push origin main
```

Then create a Pull Request!!

![happy_coding](https://user-images.githubusercontent.com/970858/63899010-c23fc480-c9ea-11e9-84a2-542907e42362.png)
