create database Shop



create Table Categories(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),

)
insert into Categories(
[Name]
)values('books'),
('clothes'),
('technologies'),
('food')

drop table Categories

select * from Categories

create Table Products(
[Id] int primary key identity(1,1) ,
[Name] nvarchar(50),
[Count] int,
[Price] decimal,
[CategoryId] int foreign key references Categories(Id)
)
insert into Products(
[CategoryId],
[Name],
[Count],
[Price]
)values(1,'phone',1,1000),
(2,'microphone',3,1500),
(3,'notebook',1,100),
(4,'shoes',2,300)

drop table Products

select * from Products


select * from Products product
inner join Categories category
on product.id=category.id

select * from Products product
left join Categories category
on product.id=category.id

select * from Products product
right join Categories category
on product.id=category.id

select * from Products product
full join Categories category
on product.id=category.id


create table Users(
[Id] int primary key identity(1,1),
[Name] nvarchar(50)
)
create table Roles(
[Id] int primary key identity(1,1),
[Name] nvarchar(50)
)
create table UserRoles(
[Id] int primary key identity(1,1),
[RoleId] int foreign key references Roles(Id),
[UserId] int foreign key references Users(Id)
)
select * from UserRoles userrole
Inner Join Roles role ON role.id = role.id
Inner Join Users user ON role.id = user.id