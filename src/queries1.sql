create table students
(
    id serial primary key,
    first_name    varchar,
    last_name     varchar,
    gender  varchar,
    date_of_birth date,
    email  varchar unique,
    course varchar,
    payment numeric,
    duration int

);
insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
VALUES ('Manas', 'Abdugani U', 'Male', '2000-1-12', 'manas@gmail.com', 'Java', 12000.500, 9),
       ('Temiclan', 'Luzukulov', 'Male', '2001-4-17', 'temirlan@gmail.com', 'Java', 10000.300, 6), ('Gulmica', 'Ismenova', 'Female', '1999-7-20', 'gulmira@gmail.com', 'JS', 9000.800, 9), ('Ainazik', 'Amangeldieva', 'Female', '2002-1-12', 'ainazik@gmail.com', 'JS', 10000, 3),
       ('Adilet', 'Istanbek', 'Male',
        '1998-9-4', 'adilet@gmail.com', 'JS', 6000, 3),
       ('Aizat', 'Duisheeva', 'Female',
        '2002-1-12', 'aizat@gmail.com', 'Java', 8000, 6),
       ('Baytik', 'Taalaybekov', 'Male', '2003-7-5', 'baytik@gmail.com', 'Java', 12000, 9), ('Saniar', 'Abdynonunov', 'Male', '2004-1-3', 'sanjar@gmail.com', 'Java', 8000.500, 6),
       ('Eckänbek', 'Keshaliex', 'Male',  '1999-1-12', 'erkinbek@gmail.com', 'JS' ,6000, 3),
       ('Khafiz', 'Turushek U',
        'Male',
        '1999-7-19', 'hafiz@gmail.com', 'JS', 12000, 7);
insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration) VALUES
    ('Ulan','Jumabekov','male','1997-1-1',null,'JS',12000,9);
select * from students;
select first_name as name from students;
select first_name,last_name ,payment*duration as total from students;
select concat(last_name ,' ', first_name) as full_name from students;
select first_name, last_name from students order by  last_name desc;--sirturovka kylup beret
select distinct gender from students; --okshoshtordu bir kylyp chygarat
select * from students where id=1; --bir ele adamdy tandap aldyk
select * from students where course='Java';
select * from students where course='Java' and payment>10000;-- 10000 oidolordu chygaryp berdi
select *from students where course='Java'or payment>9000;-- kursu java bolsun je 9000 oido bolsun
select * from students limit 4; -- limitti 4 adamdy chygardy
select *from students offset 5; -- 5 ten kiyinki adamdy chygaryp berdi aldynky adamdardy kesip salat
select * from students limit 6 offset 3;
select * from students fetch first 4 rows only ; -- birinchi 4 strakany alyp beret
select * from students where email in ('manas.@gmail.com');
select * from students where email not in ('manas.@gmail.com');
select * from students where date_of_birth between  '2000-1-1' and '2004-1-1';
select * from students where last_name like '%va';-- va menen butkondordu chygaryp beret
select * from students where first_name like 'T%'; -- t dan bashtalgandardy chygaryp beret
select * from students where first_name like '______'; -- 6 tamgadan turgan studenterdi chygaryp beret
select * from students where last_name like 'A%'; -- ilike-ignorCase
select course from students group by course;-- grupirovka kylyp saldy okshohstordu bir kylyp chygarat
select course, count(course)from students group by course; --gruppadan kancha bar ekenin sanap beret
select gender ,count(gender) from students group by  gender having  count(gender)>5;
select gender, count(*) from students group by gender;--strakany sanap beret
select max(payment)from students; --max paymant
select min(payment)from students; --min paymant
select avg(payment)from students;--ortocho summany chygaryp beret
select round(avg(payment))from students; --okruglyaet
select sum(payment)from students;--bardyk paymenti koshup berdi
select coalesce(email,'email is not privided')from students;--agrefatnyi funtion message beret
--date kiret
select now();--azyrky ubakytty chygarat
select now()-interval '10 year';--10 murdakyny chygaryp beret
select now()+interval '10 year';--10 aldynkyny  chygaryp beret
select now()::date;--jyldy chygarat
select now()::time;
select  extract( day from now());
select  extract( dow from now());
select  extract( century from now());
delete from students where first_name='Aizat'; --aizatty ochurup salat
select * from students;
delete from students where gender='Male'; -- ochurup salat
update students set course= 'Python' where course='JS';--update kylat
update students set last_name='Abdymomunov' where last_name='Jumabekov';



