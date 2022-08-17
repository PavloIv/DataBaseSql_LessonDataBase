create database GrafProductCompany;

use GrafProductCompany;

create table developers(
 developer_id int primary key,
 name varchar(40),
 age int,
 sex varchar(10));
 
create table skills (
 skills_id int primary key,
 language varchar(50),
 level varchar(10)
 );
 
create table developer_skills(
 developer_skills_id int primary key,
 developer_id int,
 skills_id int
 );
 
create table projects (
 projects_id int primary key,
 project varchar(255),
 projectDescription varchar(255)
 );
 
 create table developer_project(
 developer_project_id int primary key,
 developer_id int,
 projects_id int
 );
 
create table companies (
 company_id int primary key,
 companyName varchar(255),
 yearOfFoundation int
);

create table customers (
 customers_id int primary key,
 customersName varchar(50),
 customerWebsite varchar(50)	
);

alter table developer_skills
 add constraint skills_on_developer_fk
 foreign key (developer_id)
 references developers(developer_id);

alter table developer_skills
 add constraint developer_on_skills_fk
 foreign key (skills_id)
 references skills(skills_id);
 
 alter table developer_project
 add constraint project_on_developer_fk
 foreign key (developer_id)
 references developers(developer_id);

alter table developer_project
 add constraint developer_on_project_fk
 foreign key (projects_id)
 references projects(projects_id);
 
 alter table projects add column company_id int;
 alter table projects add column customers_id int;

alter table projects
 add constraint projects_on_companies_fk
 foreign key (company_id)
 references companies(company_id);
 
 alter table projects
 add constraint projects_on_customers_fk
 foreign key (customers_id)
 references customers(customers_id);
 