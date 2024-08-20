/* After creating tables for entities , created tables for relations and added their attributes and also added foreign keys reference to the entities which are related . This is many to many relationship so , referred two entities primary key to this relation table */

-- code :

alter table Specialization add foreign key (specialization) references Doctor(D_name); -- Added FK referenced Doctor tables PK

alter table Qualification add foreign key (qualifications) references Doctor(D_name); -- -- Added FK referenced Doctor tables PK

create table Log (log_ID int primary key , fk1 char , fk2 char); -- Created table for Relation

alter table Log add constraint con_1 foreign key (fk1) references Patients (P_Type), add constraint con_2 foreign key (fk2) references Tests (T_Tests); -- Referenced PK from Tests , Patients

alter table Log add Report char; -- Added attribute in Log table

alter table Log add Date char; -- Added attribute in Log table   

create table Treats ( TR_ID int primary key , Disease char , Treatment char , Date int); -- Created table for Relation

alter table treats add fk1 char; -- Added FK

alter table treats add fk2 char; -- Added Fk

alter table Treats add constraint con_3 foreign key (fk1) references Patients (P_Type), add constraint con_4 foreign key (fk2) references Doctor (D_name);  -- Referenced PK from Doctor , Patients