This repository contains SQL scripts for creating and managing a database for volunteer management. The database is designed to track volunteers, their assignments, events, societies, feedback, skills, and more.

## Database Schema

The database consists of the following tables:

- **Volunteer**: Stores information about volunteers.
- **Volunteer_Assignment**: Tracks assignments given to volunteers.
- **Society**: Contains details about various societies.
- **Event_Type**: Defines different types of events.
- **Event**: Stores event details.
- **Event_Task**: Contains tasks associated with events.
- **Volunteer_Event**: Establishes relationships between volunteers and events.
- **Leadership_Position**: Tracks leadership positions held by volunteers in societies.
- **Teams**: Contains team details within societies.
- **Team_Member**: Tracks members and their roles in teams.
- **Feedback**: Stores feedback provided by volunteers for events.
- **Skill**: Defines various skills.
- **Volunteer_Skills_Map**: Maps volunteers to their skills.
- **Mentorship**: Tracks mentorship relationships between volunteers.

## SQL Scripts

### Table Creation

The SQL scripts create the tables mentioned above with appropriate primary and foreign keys to establish relationships between them.

### Data Insertion

The scripts insert initial data into the tables to demonstrate the database's functionality.

### Data Modification

The scripts include examples of how to delete and update data in the tables.

### Simple Queries

Examples of simple SQL queries, including select operations, projection, Cartesian product, views, renaming attributes, aggregation functions, and the use of the LIKE keyword.

### Complex Queries

Examples of complex SQL queries, including UNION operations.

## How to Use

1. **Create Database**: Run the script to create the `Volunteer` database.
2. **Create Tables**: Run the scripts to create all the necessary tables.
3. **Insert Data**: Insert the initial data into the tables.
4. **Modify Data**: Perform data deletion and updates as needed.
5. **Run Queries**: Execute simple and complex queries to retrieve and analyze data.

## Sample Queries

### Simple Queries

1. **Select Operation**:
    ```sql
    SELECT * FROM event;
    ```

2. **Projection**:
    ```sql
    SELECT EventId, Title FROM Event;
    ```

3. **Cartesian Product**:
    ```sql
    SELECT * FROM Volunteer, Event;
    ```

4. **View Creation and Querying**:
    ```sql
    CREATE VIEW VolunteerNames AS
    SELECT VolunteerID, First_name, Last_name FROM Volunteer;
    SELECT * FROM VolunteerNames;
    ```

5. **Renaming Attributes**:
    ```sql
    SELECT VolunteerID AS ID, First_name AS FirstName, Last_name AS LastName FROM Volunteer;
    ```

6. **Renaming Column**:
    ```sql
    ALTER TABLE Skill CHANGE COLUMN Skill_Name SkillName VARCHAR(100);
    ```

7. **Aggregation Function**:
    ```sql
    SELECT AVG(Age) AS AverageAge FROM Volunteer;
    ```

8. **LIKE Keyword**:
    ```sql
    SELECT * FROM Volunteer WHERE Last_name LIKE 'S%';
    ```

### Complex Queries

1. **Union Operation**:
    ```sql
    SELECT VolunteerID, First_name, Last_name FROM Volunteer WHERE Age > 20
    UNION
    SELECT VolunteerID, First_name, Last_name FROM Volunteer WHERE Gender = 'Female';
    ```
