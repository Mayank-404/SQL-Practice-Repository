/*
=============================================================================
 Script:    Duplicate_Emails.sql
 Purpose:   Write a solution to report all the duplicate emails
=============================================================================

-- Table: Person
-- Columns: id (PK), email
*/
Select DISTINCT p.email 
from person as p cross join person as e
where p.email = e.email and p.id != e.id
