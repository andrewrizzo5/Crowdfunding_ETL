SET search_path TO crowdfunding_schema;

drop table if exists contacts;
drop table if exists category;
drop table if exists dsubcategory;
drop table if exists campaign;


CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (100)  NOT NULL,
    last_name varchar (100)  NOT NULL,
    email varchar (100)  NOT NULL,
	primary key (contact_id)
);


CREATE TABLE category (
    category_id varchar (150)   NOT NULL,
    category varchar (150)  NOT NULL,
	primary key (category_id)
);


CREATE TABLE subcategory (
    subcategory_id varchar (150)  NOT NULL,
    subcategory varchar (150)  NOT NULL,
	primary key (subcategory_id)
);


CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (300) NOT NULL,
    description varchar (300) NOT NULL,
    goal decimal(10,2) NOT NULL,
    pledged decimal(10,2) NOT NULL,
    outcome varchar (100)  NOT NULL,
    backers_count int NOT NULL,
    country varchar (100)  NOT NULL,
    currency varchar (100)  NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar (100)  NOT NULL,
    subcategory_id varchar (100)  NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from contacts limit 10;
select * from category limit 10;
select * from subcategory limit 10;
select * from campaign limit 10;