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
**Purpose:** As a new recruit, you need to familiarize yourself with the Rebel Alliance's database structure. Understanding the existing data is crucial for effective analysis and decision-making.

1. Write a query to select all columns from the `Planets` table.
    ```sql
    SELECT * FROM Planets;
    ```
2. Write a query to select distinct job titles from the `Characters` table.
    ```sql
    SELECT DISTINCT job_title FROM Characters;
    ```
3. Write a query to concatenate the `character_name` and `job_title` of all characters.
    ```sql
    SELECT character_name || ' - ' || job_title AS character_job FROM Characters;
    ```

## Iteration 2: Where Queries
**Purpose:** To conduct targeted searches within the Rebel database, you must master filtering data based on specific criteria. This skill is essential for retrieving relevant information swiftly.

1. Write a query to select all ships that are in service with the Rebel Alliance.
    ```sql
    SELECT * FROM Ships WHERE 'Rebel Alliance' = ANY(in_service);
    ```
2. Write a query to select all characters born between 50BBY and 20BBY.
    ```sql
    SELECT * FROM Characters WHERE birth_date BETWEEN '50BBY' AND '20BBY';
    ```
3. Write a query to select all planets in the 'Outer Rim' region.
    ```sql
    SELECT * FROM Planets WHERE region = 'Outer Rim';
    ```
4. Write a query to select all characters where the job title is either 'Jedi Knight' or 'Captain'.
    ```sql
    SELECT * FROM Characters WHERE job_title IN ('Jedi Knight', 'Captain');
    ```

## Iteration 3: Advanced Select Queries
**Purpose:** Advanced queries allow you to extract more complex and detailed information, which is critical for strategic planning and intelligence gathering.

1. Write a query to select the names of all characters along with the name of their home planet.
    ```sql
    SELECT character_name, home_planet FROM Characters;
    ```
2. Write a query to count the number of ships by type.
    ```sql
    SELECT ship_type, COUNT(*) AS ship_count FROM Ships GROUP BY ship_type;
    ```
3. Write a query to find the average capacity of all ships.
    ```sql
    SELECT AVG(capacity) AS average_capacity FROM Ships;
    ```

## Iteration 4: Inserting Data
**Purpose:** The ability to insert new data into the database is crucial for keeping records up-to-date and expanding the dataset with new information as it becomes available.

1. Write a query to insert a new planet into the `Planets` table.
    ```sql
    INSERT INTO Planets (planet_id, planet_name, region, population, discovered_date)
    VALUES (11, 'Dagobah', 'Outer Rim', 0, '1980-05-21');
    ```
2. Write a query to insert a new character into the `Characters` table.
    ```sql
    INSERT INTO Characters (character_id, character_name, affiliation, home_planet, birth_date, job_title)
    VALUES (12, 'Ahsoka Tano', 'Rebel Alliance', 'Shili', '36BBY', 'Jedi Knight');
    ```

## Iteration 5: Updating and Deleting Data
**Purpose:** As the data evolves, you need to be able to update or delete records to maintain the accuracy and relevance of the database.

1. Write a query to update the population of 'Coruscant' to 1,200,000,000.
    ```sql
    UPDATE Planets SET population = 1200000000 WHERE planet_name = 'Coruscant';
    ```
2. Write a query to delete all battles that resulted in a 'Stalemate'.
    ```sql
    DELETE FROM Battles WHERE outcome = 'Stalemate';
    ```

## Iteration 6: Data Aggregation and Analysis
**Purpose:** Aggregating data helps in summarizing vast amounts of information, making it easier to interpret and analyze for strategic decisions.

1. Write a query to find the total population of all planets in the 'Core Worlds' region.
    ```sql
    SELECT SUM(population) AS total_population FROM Planets WHERE region = 'Core Worlds';
    ```
2. Write a query to find the maximum and minimum capacities of ships in service with the Rebel Alliance.
    ```sql
    SELECT MAX(capacity) AS max_capacity, MIN(capacity) AS min_capacity FROM Ships WHERE 'Rebel Alliance' = ANY(in_service);
    ```

## Iteration 7: Complex Queries and Joins
**Purpose:** Understanding relationships between different data tables allows you to perform complex queries that can reveal critical insights about the interconnected data.

1. Write a query to find all characters who participated in a mission, including their mission names and outcomes.
    ```sql
    SELECT c.character_name, m.mission_name, b.outcome
    FROM Characters c
    JOIN Commanders cm ON c.character_id = cm.commander_id
    JOIN Missions m ON cm.assigned_mission = m.mission_id
    JOIN Battles b ON m.mission_id = b.battle_id;
    ```
2. Write a query to list all missions led by a specific commander, including mission names and their start and end dates.
    ```sql
    SELECT m.mission_name, m.start_date, m.end_date
    FROM Missions m
    JOIN Commanders cm ON m.mission_id = cm.assigned_mission
    WHERE cm.commander_name = 'Lando Calrissian';
    ```

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
