create table course(id int primary key, course_name varchar(25) unique, course_fee int, details varchar(50));
create table batch(batch_id int primary key, batch_name varchar(25), details varchar(50));
create table mentors(id int primary key, full_name varchar(50),  email varchar(30), contact int, course varchar(25), batch_id int, 
foreign key (course) references course(course_name), foreign key (batch_id) references batch(batch_id));
create table students(id int primary key, full_name varchar(50), email varchar(30), contact int, batch_id int, mentor_id int,
foreign key (batch_id) references batch(batch_id), 
foreign key (mentor_id) references mentors(id));

create table tasks(id int primary key, task_name varchar(25), task_link varchar(50),course varchar(25),foreign key (course) references course(course_name) );

create table marks ( student_id int, mentor_id int,task_id int, marks int, foreign key (student_id) references students(id), 
foreign key (mentor_id) references mentors(id),foreign key (task_id) references tasks(id));
