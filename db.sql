Employee:
create table Employee(
empid int primary key,
ename varchar(20),
email varchar(20),
rid int,
constraint fk_r foreign key (rid) references role(rid)
);

create table Recruiter (
id int primary key,
rname varchar(20),
email varchar(20),
rid int,
constraint fk_rid foreign key (rid) references role(rid)
);

create table Role(
rid int primary key,
role varchar(20)
);

create table Status(
sid int primary key,
status varchar(20),
empid int,
recid int,
constraint fk_emp foreign key (empid) references Employee(empid),
constraint fk_recid foreign key (recid) references Recruiter (id)
);