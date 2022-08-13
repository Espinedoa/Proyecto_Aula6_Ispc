create database Peluqueria_canina
use Peluqueria_canina

create table Dueno(
Dni int,
Nombre varchar(30)null,
Apellido varchar(30)null,
Telefono int,
Direccion varchar(30)null,
constraint pk_cdni primary key(Dni)
)

create table Perro (
ID_perro int NOT NULL AUTO_INCREMENT,
Nombre_p varchar(20) null,
Fecha_nac date null,
sexo varchar(7) null,
DNI_dueno int,
constraint pk_cid primary key(ID_perro),
constraint fk_cdni1 foreign key(DNI_dueno) references Dueno(Dni)
)

create table historial(
ID_historial int not null auto_increment,
fecha date null,
perro int null,
descripcion varchar(200) null,
monto int null,
constraint pk_ci primary key(ID_historial),
constraint fk_cp foreign key(perro) references Perro(ID_perro)
)

insert into Dueno values(36427463,"jimena","rodriguez",3689252,"maipu 755" )
insert into Dueno values(25155477,"mario","frutos",2065842,"salta 282")
insert into Dueno values(30555888,"josefina", "juarez",5584697,"quiroga 121" )
insert into Dueno values( 28957346, " Juan",  "Perez", 4789689,"  Belgrano 101")
insert into Dueno values(23546987,  "Maria",  "Perez", 4789689,  "Pueyrredon  811")
insert into Dueno values(15363444, "Pedro","Gomez",123654, "av.guemes 454")
insert into Dueno values(36427431,"Pedro", "Sanchez",745854, "Saavedra 42")
insert into Perro values(20,"simba","2018-08-20","Macho",36427431)
insert into Perro values(21,"sami","2016-06-19","hembra",15363444)
insert into Perro values(12,"tarzan","2021-04-01","Macho",25155477)
insert into Perro values(11,"mila","2005-05-05","Hembra",36427463)
insert into Perro values(10,"kuki", "2019-11-15","Hembra",30555888)
insert into Perro values(13,  "Puppy", "2012-12-15" , "Macho", 28957346)
insert into Perro values(14,  "Fido","2012-12-10" , "Macho", 23546987)  
insert into historial values(01,"2013-12-10",13,"consulta x exceso de peso", 500) 
insert into historial values(02,"2016-01-05",13,"consulta ecografia dolor abdominal", 2350)
insert into historial values(03,"2014-05-20",13,"castracion",23000)
insert into historial values(04,"2015-10-09",13,"limpieza , suturacion y antibioticos",8900)
insert into historial values(05,"2017-11-25",13,"vacunacion",5960) 
insert into historial values(06,"2012-12-25",14,"corte de pelo y baño ",2000)
insert into historial values(07,"2013-03-02",14,"consulta x ",2000)
insert into historial values(08,"2022-07-05",10,"vacunacion",5000)
insert into historial values(09,"2022-07-28",11,"operacion e internacion",11500)






 
/* CONSULTA NUMERO 3*/
select 	nombre_p,ID_perro from Perro inner join  historial on perro=ID_perro where fecha<("2015-01-01")
delete from Perro where ID_perro=13

/*consulta N.5*/
select nombre_p from Perro inner join Dueno on Perro.DNI_Dueno=DNI 
where Nombre="Pedro"

/* CONSULTA NUMERO 7*/
select sum(monto) from historial  where (fecha)<("2015-01-01") and fecha<=("2022-07-31")


/* CONSULTA NUMERO 9*/
update Dueno
set Direccion="Libertad 123"
where Dni=28957346
