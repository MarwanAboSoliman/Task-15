INSERT INTO memberShip_Plan (plan_name, plan_cost, duration) VALUES
('Basic',   19.99, '1 month'),
('Premium', 39.99, '1 month'),
('VIP',     79.99, '1 month'),
('Basic Annual', 199.99, '1 year');
 
INSERT INTO members (first_name, last_name, phone, email, start_date, plan_id) VALUES
('Ahmed',  'Hassan',   '01012345678', 'ahmed.hassan@email.com',   '2025-01-10', 2),
('Sara',   'Mahmoud',  '01098765432', 'sara.mahmoud@email.com',   '2025-02-15', 1),
('Omar',   'Youssef',  '01123456789', 'omar.youssef@email.com',   '2025-03-01', 3),
('Nour',   'Ali',      '01234567890', 'nour.ali@email.com',       '2025-03-20', 1),
('Laila',  'Ibrahim',  '01011122233', 'laila.ibrahim@email.com',  '2025-04-05', 4),
('Karim',  'Adel',     '01555566677', 'karim.adel@email.com',     '2025-05-12', 2);
 
INSERT INTO locker (locker_number, member_id) VALUES
('A1',  1),
('A2',  2),
('B21', 3),
('B22', 4),
('C10', 5),
('C11', 6);
 
INSERT INTO trainers (first_name, last_name, specialty, xp_years) VALUES
('Mona',  'Tarek',   'Yoga',      5),
('Hassan','Fathy',   'Cardio',    3),
('Yasmin','Kamal',   'Weights',   7),
('Tamer', 'Nabil',   'HIIT',      4);
 
INSERT INTO class (class_name, class_duration, scheduled_time, max_capacity, trainer_id) VALUES
('Morning Yoga',    '1 hour',    '2025-06-01 07:00:00', 15, 1),
('HIIT Bootcamp',   '45 minutes','2025-06-01 09:00:00', 20, 4),
('Cardio Blast',    '1 hour',    '2025-06-01 18:00:00', 25, 2),
('Strength Training','1 hour',   '2025-06-02 17:00:00', 12, 3),
('Evening Yoga',     '1 hour',   '2025-06-02 19:00:00', 15, 1);
 
INSERT INTO class_member (member_id, class_name) VALUES
(1, 'Morning Yoga'),
(1, 'Evening Yoga'),
(2, 'HIIT Bootcamp'),
(3, 'Cardio Blast'),
(3, 'Strength Training'),
(4, 'Morning Yoga'),
(5, 'Strength Training'),
(6, 'HIIT Bootcamp'),
(6, 'Cardio Blast');