SELECT * FROM members;
SELECT * FROM members where email = 'omar.youssef@email.com';
SELECT class_name , max_capacity from class where max_capacity > 15;
SELECT first_name , last_name from trainers where specialty = 'Yoga';
SELECT plan_name , plan_cost from membership_plan ORDER BY plan_cost ASC;
SELECT locker_number from locker where member_id = 3;