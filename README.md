# Animal Adoption Database 🐶

## Project Description
This project represents the implementation of a database for managing an animal adoption center, developed using Oracle APEX and SQL.
The application allows managing animals, vaccines, adoption requests and generating statistical reports.

---

## Database Structure
The database contains the following tables:
- **aTip** - animal types
- **aAnimal** - animals from the shelter
- **aListaVaccin** - animal vaccines
- **aCerereAdoptie** - adoption requests

---

## APEX Application Pages
The Oracle APEX application contains the following pages:
- View Animals
- View Adoption Requests
- View Animals by Type
- View Animals by Age
- Add Animal
- View Vaccine History
- Adoption Requests Report
- Animals Statistics Report

---

## SQL Queries
The application contains the following SQL queries:
| File | Description |
|------|-------------|
| vizualizare_animale.sql | displays all animals |
| vizualizare_dupa_tip.sql | animals filtered by type |
| vizualizare_dupa_varsta.sql | animals filtered by age |
| vizualizare_istoric_vaccin.sql | animal vaccine history |
| raport_animale.sql | statistical report (number of animals and average age by type) |
| raport_cereri_adoptie.sql | adoption requests report |

---

## How to Run the Database Scripts
To create and populate the database, run the following scripts:

```sql
@database/drop_tables.sql
@database/create_tables.sql
@database/insert_data.sql
```
or
```sql
@database/run_all.sql
```

---

## Database Concepts Used

### Primary Keys
A primary key is a field that uniquely identifies each record in a table, ensuring that duplicate records cannot exist. Each table has a primary key.
- aTip.tip – identifies the type of animal
- aAnimal.coda – identifies each animal
- aCerereAdoptie.cID – identifies each adoption request
- aListaVaccin has a composite primary key (vaccin, coda, dataV) because an animal can receive multiple vaccines at different dates

### Foreign Keys
A foreign key is a field that creates a relationship between two tables.  
- aAnimal.tip references aTip.tip
- aListaVaccin.coda references aAnimal.coda
- aCerereAdoptie.coda references aAnimal.coda

The database uses one-to-many relationships:
- One animal type → Many animals
- One animal → Many vaccines
- One animal → Many adoption requests

These relationships were implemented using foreign keys.

### Constraints
Constraints are rules applied to table columns to ensure data integrity.
- PRIMARY KEY – ensures unique records
- FOREIGN KEY – ensures valid relationships between tables
- NOT NULL – ensures mandatory fields
- CHECK – restricts values


### SQL Aggregation and Reports
Aggregation functions were used to generate reports:
- COUNT() – counts the number of animals or adoption requests
- AVG() – calculates the average age of animals
- GROUP BY – groups animals by type to generate statistics

These queries are used for statistical reports in the APEX application.

---

## Conclusion
This project helped me understand how to design a relational database, create relationships between tables using primary and foreign keys, and generate reports using SQL queries.
I also learned how to build a database application using Oracle APEX.
