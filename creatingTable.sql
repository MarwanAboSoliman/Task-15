CREATE TABLE memberShip_Plan(
plan_id SERIAL PRIMARY KEY,
plan_name varchar(255) NOT NULL,
plan_cost NUMERIC(10,2) NOT NULL,
duration INTERVAL NOT NULL
);


CREATE TABLE members(
member_id SERIAL PRIMARY KEY,
first_name varchar(255) NOT NULL,
last_name varchar(255) NOT NULL,
phone varchar(30) NOT NULL,
email varchar(255) NOT NULL UNIQUE,
start_date Date NOT NULL,
plan_id INT NOT NULL REFERENCES memberShip_Plan(plan_id)
);

CREATE TABLE locker(
locker_number VARCHAR(10)  PRIMARY KEY, --I made it Varchar bec the locker can have some symbols not only Numbers like (A1 , B21 , ...)
member_id INT UNIQUE NOT NULL REFERENCES members(member_id)
);

CREATE TABLE trainers (
trainer_id SERIAL PRIMARY KEY,
first_name varchar(255) NOT NULL,
last_name varchar(255) NOT NULL,
specialty VARCHAR(100),
xp_years INT
);

CREATE TABLE class(
class_name varchar(255) PRIMARY KEY,
class_duration INTERVAL NOT NULL,
scheduled_time TIMESTAMP NOT NULL,
max_capacity INT NOT NULL,
trainer_id INT NOT NULL REFERENCES trainers(trainer_id)
);

CREATE TABLE class_member(
member_id INT NOT NULL REFERENCES members(member_id),
class_name varchar(255)  NOT NULL REFERENCES class(class_name),
PRIMARY KEY(member_id , class_name)
);
