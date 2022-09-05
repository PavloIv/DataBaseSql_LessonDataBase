create database GrafProductCompany;

use GrafProductCompany;

create table developers(
 id int primary key,
 name varchar(40),
 age int,
 sex varchar(10));
 
create table skills (
 id int primary key,
 language varchar(50),
 level varchar(10)
 );
 
create table developers_skills(
 developer_id int,
 skill_id int,
 primary key(developer_id,skill_id),
 foreign key (developer_id)	
	references developers(id),
foreign key (skill_id)
	references skills(id)
 );
 
create table companies (
 id int primary key,
 Name varchar(255),
 year_of_foundation int
);

create table customers (
 id int primary key,
 Name varchar(50),
 Website varchar(50)	
);
 
create table projects (
 id int primary key,
 name varchar(100),
 description varchar(255),
 company_id int,
 customer_id int,
 foreign key (company_id)
	references companies(id),
 foreign key (customer_id)
	references customers(id)   
 );
 
create table developers_projects(
 developer_id int,
 project_id int,
 primary key (developer_id,project_id),
 foreign key (developer_id)
	references developers(id),
 foreign key (project_id)
	references projects(id)
 );

 