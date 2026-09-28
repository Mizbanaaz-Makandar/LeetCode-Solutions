# LeetCode SQL Solutions

This repository contains my **SQL solutions to LeetCode problems**, organized by problem difficulty and SQL concepts.

The goal of this repository is to strengthen my **SQL, problem-solving, and data-analysis skills** through consistent practice.

---

##  About This Repository

I am using LeetCode to practice SQL problems ranging from beginner to advanced level.

The solutions cover important SQL concepts such as:

* `SELECT` and `WHERE`
* `GROUP BY` and `HAVING`
* `ORDER BY`
* Aggregate Functions
* `JOIN`
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* `CASE WHEN`
* String Functions
* Date & Time Functions
* NULL Handling
* Ranking
* Duplicate Detection
* Data Aggregation
* Advanced SQL Logic

---

## Repository Structure

```text
leetcode-sql-solutions/
│
├── Easy/
│   ├── 175-combine-two-tables.sql
│   ├── 181-employees-earning-more-than-their-managers.sql
│   └── ...
│
├── Medium/
│   ├── 176-second-highest-salary.sql
│   ├── 177-nth-highest-salary.sql
│   └── ...
│
├── Hard/
│   ├── problem-name.sql
│   └── ...
│
└── README.md
```

---

##  Progress

| Difficulty | Solved         |
| ---------- | -------------- |
|  Easy    |  In Progress |
|  Medium  |  In Progress |
|  Hard    |  In Progress |
| **Total**  |  Updating    |

---

##  SQL Concepts Practiced

### Basic SQL

* SELECT
* WHERE
* DISTINCT
* ORDER BY
* LIMIT
* BETWEEN
* IN
* LIKE

### Aggregation

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY
* HAVING

### Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* SELF JOIN
* CROSS JOIN

### Advanced SQL

* Subqueries
* CTEs
* CASE statements
* Window Functions
* RANK()
* DENSE_RANK()
* ROW_NUMBER()
* LEAD()
* LAG()

---

##  Solution Format

Each SQL file contains the solution for one LeetCode problem.

Example:

```sql
-- LeetCode Problem: 175
-- Combine Two Tables
-- Difficulty: Easy

SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a
    ON p.personId = a.personId;
```

---

## Learning Objectives

Through these problems, I aim to improve:

* SQL query writing
* Database understanding
* Data manipulation
* Logical thinking
* Query optimization
* Problem-solving skills
* Interview preparation

---

##  My Practice Strategy

I am following this approach for each problem:

1. Understand the problem statement.
2. Identify the required output.
3. Understand the tables and relationships.
4. Break the problem into smaller steps.
5. Write the SQL query.
6. Test the query against different cases.
7. Optimize the query when possible.
8. Add the solution to this repository.
9. Record important SQL concepts learned.

---

## Why This Repository?

This repository documents my continuous SQL learning and provides a record of the problems I have solved while preparing for **Data Analyst and Data Science roles**.

It also demonstrates practical experience with SQL concepts commonly used in data-related roles.

---

##  LeetCode

My solutions are based on problems available on:

**LeetCode:** https://leetcode.com/

---

## Future Goals

* [ ] Complete all Easy SQL problems
* [ ] Complete Medium SQL problems
* [ ] Practice Hard SQL problems
* [ ] Master Window Functions
* [ ] Practice SQL interview questions
* [ ] Solve real-world SQL case studies
* [ ] Build SQL projects using real datasets
* [ ] Improve query optimization skills

---

##  Note

These solutions represent my learning and problem-solving approach. There may be multiple valid ways to solve the same SQL problem.

I may update solutions over time as I learn more efficient SQL techniques.

---

⭐ **Learning SQL one problem at a time.**
