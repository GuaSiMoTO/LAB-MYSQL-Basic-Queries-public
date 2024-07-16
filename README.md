# LAB-MYSQL-Basic-Queries

<div style="background-image: url('https://github.com/user-attachments/assets/90ccf1f2-2fa0-48db-81e9-78e62b879fd2'); padding: 20px; background-size: cover;">
  
## Introduction
**Note:** This activity can be done in pairs or independently.

At Reboot Academy, our goal is to equip you with practical skills in database management. In this exercise, we will explore SQL, a fundamental tool for data management, within the exciting context of the Star Wars universe.
</div>
## Story:
You have been recruited by the Rebel Alliance as a data specialist. After proving your skills in handling crucial data, you have been promoted to a senior data analyst. Your new mission involves handling more confidential and advanced data files. The success of the Rebel Alliance in their fight against the Galactic Empire depends on your ability to manage and analyze this data efficiently.

Recently, the Rebel Intelligence has uncovered an opportunity to hack into an Imperial database. This mission is of utmost importance, as the data retrieved could turn the tide in favor of the Rebel Alliance. You are tasked with extracting, manipulating, and analyzing data from both the Rebel and Imperial databases. Your work will directly impact strategic decisions and operational effectiveness in key battles and missions.

During this mission, you uncover shocking personal information that could change everything. Step by step, through your queries, you discover that an Imperial named Kyra Vandar has a connection to your past. This revelation unfolds as you dig deeper into the data ...


<img src="https://github.com/user-attachments/assets/90ccf1f2-2fa0-48db-81e9-78e62b879fd2" alt="Descripción de la imagen" width="300" >



## Objectives:
- Define a schema that adheres to the operational requirements of the Rebel Alliance.
- Implement the schema in MySQL.
- Execute and capture the results of specific queries to gather intelligence.
- Utilize advanced SQL techniques to manipulate and retrieve data.
- Hack into the Imperial database and extract crucial information.

## Deliverables:
When you are done, please upload the following:
- ER diagram including attributes and data types
- Queries in markdown or Query result screenshots

## Iteration 0: Import the Imperial database 

## Iteration 1: Basic Select Queries

You need to familiarise yourself with the new imperial database although it does not look very different from the ones used before. Select the following information

1.1. Write a query to select distinct job titles from the `Characters` table.
  
1.2. Write a query to concatenate the `character_name` and `job_title` of all characters.
 

## Iteration 2: Where Queries

To conduct targeted searches within the Imperial database, you must master filtering data based on specific criteria. This skill is essential for retrieving relevant information swiftly.

1. Find planets whose names end with "ar" and have a population greater than 1,000,000
Using the LIKE clause and an additional condition on the population.
  
2. Find characters whose names contain the word "Skywalker" and were born after the year 2000
  
3. Find missions with a defined status (not NULL) that ended before the year 2000
  
4. Find starships whose names contain the word "Falcon", have a defined service (not NULL), and a capacity greater than 5

5. Find battles that occurred in the year 1983 and do not have a defined outcome (NULL value)
  
6. Find characters affiliated with the "Rebel Alliance" whose job title is not defined (NULL value) and were born on the planet "Tatooine"


## Iteration 3: Order and limit Queries

1. Order Battles by Date in Descending Order
2. Combine ORDER BY with WHERE to Find and Sort Characters Born After 2000
3. Limit the Number of Results for Planets to 5
4. Use LIMIT with OFFSET to Skip the First 5 Characters and Return the Next 5
5. Combine LIMIT with ORDER BY and WHERE to Find and Limit Battles

## Iteration 4: Copy Data from Planets to a New Table Old_Planets
First, create a new table Old_Planets with the same structure as Planets. Then,Combine INSERT with SELECT to insert data from Planets where the population is greater than 1,000,000.

## Iteration 5: Advanced Delete

1. Combine DELETE with LIMIT to Remove the First 2 Characters Born After the Year 2000
2. Combine DELETE with LIMIT and OFFSET to Skip the First 3 Characters and Remove the Next 2 with a Job Title of 'Captain' and Born After the Year 2000


## Iteration 7: The encrypted note

A suspicious note has ended up on your desk, it is written with many symbols that you don't understand and seems to have been sent by the empire. In it you manage to make out 3 words Murder , Fahter  y Vandar

![encrypt-letter](https://github.com/user-attachments/assets/320d1656-181a-4372-88b4-b753373b05d3)




7.1 Identifying Who is Vandar

7.2 search the database to see if she has had children.

7.3 search the database for any child born in 29 years ago since 2024, your age 

7.4 search if there are any missing after your 




## Bonus Queries
1. Write a query to find all characters affiliated with the Rebel Alliance and born before 20BBY.
    ```sql
    SELECT * FROM Characters
