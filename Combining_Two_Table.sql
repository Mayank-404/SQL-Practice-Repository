/*
=============================================================================
 Script:    Combining_Two_Table.sql
 Purpose:   Report the first name, last name, city, and state of each person
            from the Person table, including address information if available.
 Link:      https://leetcode.com/problems/combine-two-tables/description/
=============================================================================

-- Table: Person
-- Columns: personId (PK), lastName, firstName

-- Table: Address
-- Columns: addressId (PK), personId (FK), city, state

-- Requirement:
-- For each person, show their first name, last name, city, and state.
-- If an address does not exist for a person, return NULL for city and state.
*/

SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM
    Person AS p
    LEFT JOIN Address AS a ON p.personId = a.personId
