# Tennis Results Management System

A relational database developed in **PostgreSQL** as part of my first-year Computer Science coursework.

The project models a professional tennis environment by storing information about players, coaches, tournaments, matches and rankings within a fully normalised relational database.

The project demonstrates database design, SQL development, entity relationship modelling, normalisation and query optimisation.

---

# Project Overview

The database was designed using the complete database development lifecycle:

- Requirements analysis
- Entity-Relationship modelling
- Relational schema design
- Database normalisation
- SQL implementation
- Data population
- Query development
- Testing and validation

Comprehensive supporting documentation is provided in REPORT.pdf and APPENDIX.pdf, including the database design process, ER diagrams, SQL implementation and validation evidence.

---

# Documentation

Project documentation is included within the repository.

- **REPORT.pdf** – Complete project report covering design decisions, implementation and evaluation.
- **APPENDIX.pdf** – Supporting evidence including ER diagrams, entity specifications, SQL validation and query results.

---

# SQL Scripts

The repository includes all SQL implementation files.

```
sql
├── create_tables.sql
├── insert_data.sql
└── queries.sql
```

### create_tables.sql

Creates the complete relational database schema including tables, primary keys, foreign keys and constraints.

### insert_data.sql

Populates the database with representative tennis players, tournaments, matches and related records.

### queries.sql

Contains both simple and complex SQL queries used to retrieve and analyse database information.

---

# Features

- Relational database design
- PostgreSQL implementation
- Entity Relationship (ER) modelling
- Third Normal Form (3NF) database design
- Primary and foreign key constraints
- Many-to-many relationship modelling
- Tournament and match management
- Player and coach records
- SQL-DDL implementation
- SQL-DML data population
- Simple and advanced SQL queries
- Database validation and testing

---

# Database Design

The system models several related entities including:

- Players
- Coaches
- Tournaments
- Tournament Editions
- Matches
- Rankings

Relationships are enforced through primary keys, foreign keys and junction tables to maintain referential integrity throughout the database.

The complete ER model and relational design are included in **APPENDIX.pdf**.

---

# Technologies

- PostgreSQL
- SQL
- pgAdmin 4
- Database Normalisation
- Entity Relationship Modelling
- Git
- GitLab

---

# Project Structure

```
Tennis-Results-Management-System
├── sql
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── queries.sql
├── REPORT.pdf
├── APPENDIX.pdf
└── README.md
```

---

# Skills Demonstrated

- Relational Database Design
- SQL Development
- PostgreSQL
- Entity Relationship Modelling
- Database Normalisation
- SQL (DDL)
- SQL (DML)
- Primary & Foreign Key Design
- Query Development
- Database Testing
- Technical Documentation
- Version Control with Git

---

# Testing

The database was validated throughout development by testing:

- Table creation
- Primary key constraints
- Foreign key relationships
- Data insertion
- Query correctness
- Referential integrity
- Database normalisation

Validation evidence is included within **APPENDIX.pdf**.

---

# Future Improvements

Potential future improvements include:

- Stored procedures
- Database triggers
- Views for common queries
- User authentication
- Performance optimisation
- Additional tournament statistics
- Automated ranking calculations

---

# Author

**Khuma Sharneck**

Computer Science student at the University of Reading

Aspiring Software Engineer
