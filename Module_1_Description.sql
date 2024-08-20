 /* First I have created tables for entities with primary keys and added attributes for those entities . If any attribute is
multivalued means , created a seperate table for those attributes with primary keys and also added foreign keys reference 
to the specific entity's primary key. */

-- Code : 

create database hospital; -- Created DB

use hospital; -- Change DB

create table Doctor ( D_name varchar primary key,Address varchar); -- Entity

create table Specialization (SP_ID int primary key , specialization char); -- Multivalued Attribute

create table Qualification (Q_ID char primary key , qualifications char); -- Multivalued Attribute

create table Patients ( P_Type char primary key , Details char); -- Entity

create table Tests ( T_Tests char primary key , Description char); -- Entity