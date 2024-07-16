# LAB-MYSQL-Basic-Queries

## Introduction
**Note:** This activity can be done in pairs or independently.

At Reboot Academy, our goal is to equip you with practical skills in database management. In this exercise, we will explore SQL, a fundamental tool for data management, within the exciting context of the Star Wars universe.

## Story:
You have been recruited by the Rebel Alliance as a data specialist. After proving your skills in handling crucial data, you have been promoted to a senior data analyst. Your new mission involves handling more confidential and advanced data files. The success of the Rebel Alliance in their fight against the Galactic Empire depends on your ability to manage and analyze this data efficiently.

Recently, the Rebel Intelligence has uncovered an opportunity to hack into an Imperial database. This mission is of utmost importance, as the data retrieved could turn the tide in favor of the Rebel Alliance. You are tasked with extracting, manipulating, and analyzing data from both the Rebel and Imperial databases. Your work will directly impact strategic decisions and operational effectiveness in key battles and missions.

During this mission, you uncover shocking personal information that could change everything. Step by step, through your queries, you discover that an Imperial named Kyra Vandar has a connection to your past. This revelation unfolds as you dig deeper into the data, revealing that he is your father.

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

## Iteration 1: Basic Select Queries
As a new recruit, you need to familiarize yourself with the Rebel Alliance's database structure. Understanding the existing data is crucial for effective analysis and decision-making.

1.1. Write a query to select distinct job titles from the `Characters` table.
  
1.2. Write a query to concatenate the `character_name` and `job_title` of all characters.
 

## Iteration 2: Where Queries

To conduct targeted searches within the Rebel database, you must master filtering data based on specific criteria. This skill is essential for retrieving relevant information swiftly.

1. Write a query to select all ships that are in service with the Rebel Alliance.
  
2. Write a query to select all characters born between 50BBY and 20BBY.
  
3. Write a query to select all planets in the 'Outer Rim' region.
  
4. Write a query to select all characters where the job title is either 'Jedi Knight' or 'Captain'.










## Iteration 8: Hacking the Imperial Database
**Purpose:** The Rebel Alliance has tasked you with hacking into the Imperial database to retrieve sensitive information. During this mission, you uncover that Kyra Vandar, an Imperial, shares your last name and has a connection to your past. Through a series of queries, you discover he is your father.

### Step 1: Identifying Imperial Commanders
**Mission:** Find all Imperial commanders to see if there are any familiar names.

1. Write a query to extract the names and ranks of all Imperial commanders.
    ```sql
    SELECT commander_name, status FROM ImperialCommanders;
    ```

### Step 2: Narrowing Down by Last Name
**Mission:** Focus on commanders who share your last name, Vandar.

2. Write a query to find Imperial commanders with the last name 'Vandar'.
    ```sql
    SELECT commander_name, status FROM ImperialCommanders WHERE commander_name LIKE '%Vandar';
    ```

### Step 3: Investigating Family Ties
**Mission:** Determine if Kyra Vandar has any family members in the Imperial records.

3. Write a query to find any children of Kyra Vandar who match your birth date.
    ```sql
    SELECT child_name, birth_date, home_planet FROM ImperialFamilyRecords WHERE parent_name = 'Kyra Vandar' AND birth_date = '[Your Birth Date]';
    ```

### Step 4: Confirming the Connection
**Mission:** Verify the home planet and other details to confirm that the child of Kyra Vandar is you.

4. Write a query to retrieve details about the child of Kyra Vandar, including home planet and birth date.
    ```sql
    SELECT child_name, birth_date, home_planet FROM ImperialFamilyRecords WHERE parent_name = 'Kyra Vandar';
    ```

### Step 5: Final Revelation
**Mission:** Cross-reference the information with your own records to confirm that Kyra Vandar is your father.

5. Write a final query to match your details with the Imperial records.
    ```sql
    SELECT * FROM RebelPersonalRecords WHERE name = '[Your Name]' AND birth_date = '[Your Birth Date]' AND home_planet = '[Your Home Planet]';
    ```

## Bonus Queries
1. Write a query to find all characters affiliated with the Rebel Alliance and born before 20BBY.
    ```sql
    SELECT * FROM Characters
