CREATE DATABASE Proyecto;

USE Proyecto;


/*Cliente*/
CREATE TABLE Cliente(
id_cliente int primary key not null,
usuario varchar(50)  not null,
contraseña varchar(50) not null,
nombre varchar(25),
colonia varchar(25), 
bloque varchar(25),
calle varchar(10),
numero_casa varchar(10), 
descripción varchar (25),
telefono_celular varchar(20),
telefono_fijo varchar(20),
correo varchar(50),
fecha_nacimineto datetime
); 

INSERT INTO Cliente Values(1234,'cmejiat','Tejada2000','Carlos','Col. Villa Olimpica', '1', '', '5220','', '3270-7836','', 'Carlos_tejada@hotmail.com','1996-10-1')
INSERT INTO Cliente Values(1235,'jose1234','Hond1234','Jose','Col. Centroamericana', '10', '8', '5890','casa color blanca', '3360-7606','', 'Jmejia@hotmail.com','1995-05-10')
INSERT INTO Cliente Values(1236,'alejandro205','matute2005','Alejandro','Col. Suyapa', '1', '5', '1980','', '3278-9854','', 'alejandro_205@gmail.com','2000-09-29')
INSERT INTO Cliente Values(1237,'favi','favi1519$','Faviola','Col. Villa Olimpica', '2', '3', '9148','Frente bibliteca', '9824-8471','', 'faviola_tejada2008@hotmail.com','1994-06-25')
INSERT INTO Cliente Values(1238,'karlatejada','','Karla','Col. La era', '1', '5', '1519','Calle de salida', '3985-7217','2791-6153', 'karla_15@gmail.com','1986-11-1')
INSERT INTO Cliente Values(1239,'azulceleste','Te4570','Celeste','Col. Universidad Norte', '1', '15', '3245','casa color verde', '3248-6336','', '2457Celes@gmail.com','1976-11-1')
INSERT INTO Cliente Values(1240,'mari354','amaria145','Maria','Col. El Hato', '1', '2', '2010','casa de esquina', '3280-6548','', 'mari1574@hotmail.com','1996-10-1')
INSERT INTO Cliente Values(1241,'alita1595','ales1254','Alejandra','Col. San Juan', '2', '5', '8910','frente pulperia maria', '8475-9547','', 'alita0987@hotmail.com','1988-08-5')
INSERT INTO Cliente Values(1242,'isco35','Fran1245','Francisco','Col. Kennedy', '5', '1', '5980','calle principal', '9548-7415','', 'francisco_mrjis257@hotmail.com','1999-11-15')
INSERT INTO Cliente Values(1243,'oskr1','os0014','Oscar','Col. Villa Olimpica', '6', '2', '6220','frente inglesia catolica', '9585-3648','2332-3610', 'oscar_di@hotmail.com','1996-01-24')
INSERT INTO Cliente Values(1244,'dgo2000','Tejada2140','Diego','Col. Suyapa', '2', '6', '2120','antes de ferreteria', '3548-8945','2359-2348', 'dsantos@hotmail.com','1995-02-19')
INSERT INTO Cliente Values(1245,'fer1915','santos1456','Fernando','Col. La era', '3', '1', '3223','casa color roja', '9693-5248','2314-2356', 'fer_tejada@gmail.com','1988-10-5')
INSERT INTO Cliente Values(1246,'jh322','juh1468','Judith','Col. EL Hato', '1', '2', '1220','', '9548-8512','', 'ju_tejada@yahoo.com','1994-03-10')
INSERT INTO Cliente Values(1247,'jo152','jocurioso','Jorge','Col. San Miguel', '7', '4', '7220','casa de dos plantas', '8916-6315','', 'albeño_145@hotmail.com','1998-12-14')
INSERT INTO Cliente Values(1248,'aam15','a151921','Andres','Col. Kennedy', '10', '3', '3220','', '9652-78952','', 'andresmejia@hotmail.com','1996-02-18')
INSERT INTO Cliente Values(1249,'dinoc478','dino1542','Dionicio','Col. Villa Olimpica', '4', '1', '2220','', '3339-458','2359-598', 'dionicio1519@yahoo.com','1975-10-12')
INSERT INTO Cliente Values(1250,'arma01','armado1050','Armando','Col. Suyapa', '7', '6', '6820','casa color verde', '3270-2145','2354-6497', 'mejia@hotmail.com','1969-06-19')
INSERT INTO Cliente Values(1251,'vida1519','1519vial','Vidal','Col. Monteverde', '3', '1', '9220','', '9654-7836','', 'vida@gmail.com','1996-05-11')
INSERT INTO Cliente Values(1252,'i201figueroa','figueroa1234','Iriss','Col. Pedregar', '11', '2', '1020','frente escuela morazan', '9650-7836','', 'iris@yahoo.com','1996-03-4')
INSERT INTO Cliente Values(1253,'sofia147','1975sofi','Sofia','Col. El Hato', '1', '3', '5235','casa color morada', '3874-5648','2359-7845', 'sofia@hotmail.com','1975-10-12')


SELECT * FROM Cliente


/*Compras*/
CREATE TABLE Compras(
id_compra int primary key not null,
cliente int,
fecha_realizo varchar(25),
cantida_producto int
CONSTRAINT fk_Cliente FOREIGN KEY (cliente) REFERENCES Cliente (id_cliente)
);


INSERT INTO Compras Values(1,1253,'2022-04-10',1)
INSERT INTO Compras Values(2,1234,'2022-04-11',2)
INSERT INTO Compras Values(3,1251,'2022-04-12',1)
INSERT INTO Compras Values(4,1236,'2022-04-9',2)
INSERT INTO Compras Values(5,1245,'2022-04-3',3)
INSERT INTO Compras Values(5,1234,'2022-04-1',1)
INSERT INTO Compras Values(6,1245,'2022-04-9',5)
INSERT INTO Compras Values(7,1236,'2022-04-11',1)
INSERT INTO Compras Values(8,1239,'2022-04-18',2)
INSERT INTO Compras Values(9,1235,'2022-04-16',1)
INSERT INTO Compras Values(10,1245,'2022-04-21',6)
INSERT INTO Compras Values(11,1244,'2022-04-18',1)
INSERT INTO Compras Values(12,1249,'2022-04-30',2)
INSERT INTO Compras Values(13,1251,'2022-04-14',1)
INSERT INTO Compras Values(14,1250,'2022-04-16',3)
INSERT INTO Compras Values(15,1251,'2022-04-12',1)
INSERT INTO Compras Values(16,1240,'2022-04-14',2)
INSERT INTO Compras Values(17,1243,'2022-04-13',9)
INSERT INTO Compras Values(18,1236,'2022-04-16',10)
INSERT INTO Compras Values(19,1252,'2022-04-18',12)
INSERT INTO Compras Values(20,1253,'2022-04-13',14)
INSERT INTO Compras Values(21,1241,'2022-04-12',3)
INSERT INTO Compras Values(22,1243,'2022-04-18',2)
SELECT * FROM Compras


/*Compra_Producto*/
CREATE TABLE Compra_Producto(
compra int,
producto int,
cantidad int,
CONSTRAINT fk_Compra FOREIGN KEY (compra) REFERENCES Compras(id_compra),
CONSTRAINT fk_Producto FOREIGN KEY (producto) REFERENCES Producto(codigo)
)


INSERT INTO Compra_Producto Values(1,101,1)
INSERT INTO Compra_Producto Values(2,117,2)
INSERT INTO Compra_Producto Values(3,118,1)
INSERT INTO Compra_Producto Values(4,107,2)
INSERT INTO Compra_Producto Values(5,115,3)
INSERT INTO Compra_Producto Values(6,110,2)
INSERT INTO Compra_Producto Values(7,101,5)
INSERT INTO Compra_Producto Values(8,110,1)
INSERT INTO Compra_Producto Values(9,105,2)
INSERT INTO Compra_Producto Values(10,120,1)
INSERT INTO Compra_Producto Values(11,125,6)
INSERT INTO Compra_Producto Values(12,112,1)
INSERT INTO Compra_Producto Values(13,107,2)
INSERT INTO Compra_Producto Values(14,102,1)
INSERT INTO Compra_Producto Values(15,106,3)
INSERT INTO Compra_Producto Values(16,115,1)
INSERT INTO Compra_Producto Values(17,101,2)
INSERT INTO Compra_Producto Values(18,119,9)
INSERT INTO Compra_Producto Values(19,103,10)
INSERT INTO Compra_Producto Values(20,102,12)
INSERT INTO Compra_Producto Values(21,101,14)
INSERT INTO Compra_Producto Values(22,130,3)

SELECT * FROM Compra_Producto


/*Promocion*/
CREATE TABLE Promocion(
id_promocion int primary key not null identity (1,1),
compra int,
fecha_inicio varchar(20),
fecha_final varchar(20),
porcentaje varchar(10)
CONSTRAINT fk_Compras FOREIGN KEY (compra) REFERENCES Compras(id_compra)
);


INSERT INTO Promocion Values(8,'2022-04-15', '2022-04-30','10%')
INSERT INTO Promocion Values(9,'2022-04-15', '2022-04-30','10%')
INSERT INTO Promocion Values(10,'2022-04-15', '2022-04-30','10%')
INSERT INTO Promocion Values(11,'2022-04-15', '2022-04-30','10%')
INSERT INTO Promocion Values(12,'2022-04-15', '2022-04-30','10%')

SELECT * FROM Promocion


/*Producto*/
CREATE TABLE Producto(
codigo int primary key not null,
nombre_producto varchar(25),
precio_compra money,
precio_venta money,
descripcion varchar(50),
fotografia varchar(30),
laboratorio varchar(25),
categotia int,
inventario varchar(25),
sucursal_n int,
CONSTRAINT fk_Farmacia FOREIGN KEY (sucursal_n) REFERENCES Farmacia(id_farmacia),
CONSTRAINT fk_Categoria FOREIGN KEY (categotia) REFERENCES Categoria(id_categoria),
CONSTRAINT fk_Laboratorio FOREIGN KEY (laboratorio) REFERENCES Laboratorio(rtn)
);


/*Medicamentos*/
INSERT INTO Producto Values(101,'Mentolina', 15.5, 20, 'Para alivio del dolor', 'Imagen 1', '0801-1989-043071',0102,'55',15)
INSERT INTO Producto Values(102,'Panadol', 5.90, 10, 'Pastillas', 'Imagen 2', '0801-1989-043071',0102,'25',15)
INSERT INTO Producto Values(103,'Tosan', 35, 49, 'Jarabe para la tos', 'Imagen 3', '0801-1989-043071',0102,'10',12)
INSERT INTO Producto Values(104,'Simvastatina', 48.2, 60, 'Para controlar el colesterol', 'Imagen 4', '1519-1945-013274',0102,'65',12)
INSERT INTO Producto Values(105,'Omeprazol', 10, 26, 'Para la acidez de estómago', 'Imagen 5', '1519-1996-003070',0102,'25',13)
INSERT INTO Producto Values(106,'Lexotiroxina sódica', 15.5, 20, 'Para reemplazar la tiroxina', 'Imagen 6', '0801-1989-043071',0102,'15',13)
INSERT INTO Producto Values(107,'Ramipril', 12, 16, 'Para la hipertensión', 'Imagen 7', '1519-1969-014373',0102,'13',14)
INSERT INTO Producto Values(108,'Amlodipina', 17.5, 20, 'Para la hipertensión y la angina', 'Imagen 8', '0801-1989-043071',0102,'55',14)
INSERT INTO Producto Values(109,'Salbutamol', 55.2, 70, 'Para el asma', 'Imagen 9', '1519-1945-013274',0102,'20',16)
INSERT INTO Producto Values(110,'Lansoprazol', 65.5, 80, 'Para controlar el ácido del estómago', 'Imagen 10', '1519-1969-014373',0102,'95',16)
/*Cuidado personal*/
INSERT INTO Producto Values(111, 'Javon', 12, 15.5, 'Para el cuerpo','Imagen 11','1519-1996-022176',0103,'25',15)
INSERT INTO Producto Values(112, 'Crema', 50, 75.5, 'Para el cuerpo','Imagen 12','1519-1969-014373',0103,'20',12)
INSERT INTO Producto Values(113, 'Enjuague bucal', 55, 89.5, 'Para la boca','Imagen 13','1519-1978-032172',0103,'25',14)
INSERT INTO Producto Values(114, 'Desodorante ', 65, 76, 'Para el cuerpo','Imagen 14','0801-1989-043071',0103,'25',15)
INSERT INTO Producto Values(115, 'Talco', 29, 36, 'Para los pies','Imagen 15','1519-1986-102371',0103,'25',16)
INSERT INTO Producto Values(116, 'Máscara', 10, 15.5, 'Para la cara','Imagen 16','1519-1996-003070',0103,'25',16)
/*Electronicos*/
INSERT INTO Producto Values(117, 'Cable Cargador', 70, 90.5,'Cargador para telefono','Imagen 17',NULL,0104,'10',15)
INSERT INTO Producto Values(118, 'Ventilador', 452, 564,'Ventilador escritorio','Imagen 18',NULL,0104,'12',12)
INSERT INTO Producto Values(119, 'Auxialar', 70, 85.5,'Cable para Celular','Imagen 19',NULL,0104,'19',13)
INSERT INTO Producto Values(120, 'Adaptador', 60, 88,'Adt. Para parede','Imagen 20',NULL,0104,'14',15)
INSERT INTO Producto Values(121, 'Cable Cargador', 80, 115.5,'Cargador Tipo C','Imagen 21',NULL,0104,'10',12)
/*Lentes*/
INSERT INTO Producto Values(122, 'Gafas',95, 125, 'Gafas para sol','Imagen 22', NULL, 0105, '5', 13)
INSERT INTO Producto Values(123, 'Lentes',100, 150, 'Para lecturas','Imagen 22', NULL, 0105, '3', 15)
INSERT INTO Producto Values(124, 'Lentes',86, 115, 'Para luces','Imagen 22', NULL, 0105, '7', 14)
INSERT INTO Producto Values(125, 'Franela',56, 80, 'Limpieza para lentes','Imagen 22', NULL, 0105, '8', 12)
/*Abarroteria*/
INSERT INTO Producto Values(126, 'Refresco', 15, 18, 'Coca Cola','Imagen 23', NULL, 0106, '24',13)
INSERT INTO Producto Values(127, 'Harina', 8, 12, 'Doña Blanca','Imagen 24', NULL, 0106, '24',14)
INSERT INTO Producto Values(128, 'Frutas', 15, 20, 'Mango','Imagen 25', NULL, 0106, '10',15)
INSERT INTO Producto Values(129, 'Botanas', 7, 15, 'Doritos','Imagen 26', NULL, 0106, '32',12)
INSERT INTO Producto Values(130, 'Lacteos', 15, 25, 'Leche Entera','Imagen 27', NULL, 0106, '2',14)


SELECT * FROM Producto

/*Laboratorio*/
CREATE TABLE Laboratorio(
rtn  varchar(25) primary key not null,
nombre_laboratorio varchar(25),
nombre_duenho varchar(25),
telefono varchar(15),
correo varchar(25),
direccion varchar(50)
);

INSERT INTO Laboratorio Values('1519-1996-003070','CMT','Carlos MEjia', '3270-7836','cm0813@gmail.com','Col. Prados Universitarios')
INSERT INTO Laboratorio Values('0801-1989-043071','Anpfor','Francisco Tejada', '3254-7156','fran_tejada208@gmail.com','Col. Monteverde')
INSERT INTO Laboratorio Values('1519-1996-022176','ANAPROFARH','Alejandra Mejia', '8916-6325','alita@yahoo.com','Col. Godoy')
INSERT INTO Laboratorio Values('1519-1986-102371','GRUPO HASTHER','Natalie Ulloa', '3385-0904','natal@hotmail.com','Col. Ciudad Nueva')
INSERT INTO Laboratorio Values('1519-1969-014373','Drogueria Nacional','Alejandro Matute', '3872-9715','ale12@yahoo.com','Col. Villa olimpica')
INSERT INTO Laboratorio Values('1519-1945-013274','Laboratorios Farsiman','Diego Santos', '9570-7816','Dfsanto@gmail.com','Recidencial Venecia')
INSERT INTO Laboratorio Values('1519-1978-032172','Infarma','Oscar Figueroa', '9270-7475','Figuos145@hotmail.com','Recidencial Hadas')

SELECT * FROM Laboratorio

/*Categoria*/
CREATE TABLE Categoria(
id_categoria  int primary key not null,
nombre_categoria varchar(25),
descrpcion varchar(100)
);

INSERT INTO Categoria Values (0102,'Meicamentos', 'toda preparación o producto farmacéutico')
INSERT INTO Categoria Values (0103,'Cuidado personal', 'dentifricos, productos de estética, pediculicidas y productos de higiene')
INSERT INTO Categoria Values (0104,'Electronicos', 'computador personal, los teléfonos, los MP3, los equipos de audio, televisores, calculadoras, GPS')
INSERT INTO Categoria Values (0105,'Lentes', 'gafas, también lentes, anteojos, antiparras, binóculos y espejuelos,')
INSERT INTO Categoria Values (0106,'Abarroteria', 'Aceites comestibles, Aderezos, Arroz, Consomé, Crema de cacahuate, Crema para café')


SELECT * FROM Categoria


/*Farmacia*/
CREATE TABLE Farmacia(
id_farmacia int primary key not null,
sucursal varchar(25),
descripcion varchar(100),
inventario  varchar(25) 
);


INSERT INTO Farmacia Values(12,'Mall Multiplaza','Segunda planta Mall Multiplza', 'I01')
INSERT INTO Farmacia Values(13,'Plaza Loarque','Centro Comercial Plaza Loarque', 'I02')
INSERT INTO Farmacia Values(14,'FA57',' Av Los Próceres', 'I03')
INSERT INTO Farmacia Values(15,'Sucursal Las Torres','3Q5C+PGW, Tegucigalpa', 'I04')
INSERT INTO Farmacia Values(16,'Plaza Linda','Centro Comercial Plaza Linda frente a Aeroplaza', 'I05')

SELECT * FROM Farmacia



/*CONSULTAS*/
/*Edad promedio de los clientes*/
SELECT AVG(DATEDIFF(YEAR,fecha_nacimineto,GETDATE())) as Edad FROM Cliente

/*10 productos más vendidos*/

SELECT TOP 10 * FROM Compra_Producto
order by cantidad desc;

SELECT * FROM Compra_Producto

/*Cantidad de productos por categoría*/
SELECT nombre_categoria,  p.nombre_producto, p.categotia, p.inventario FROM Producto as p
inner join Categoria as c on p.categotia = c.id_categoria
inner join Farmacia as f on p.sucursal_n = f.id_farmacia

SELECT * FROM Producto
/*Listar los productos más bajos en ventas*/
SELECT TOP 10 * FROM Compras ORDER BY cantida_producto
SELECT * FROM Compras ORDER BY cantida_producto


/*Listado de productos agrupados por categoría*/
SELECT  nombre_producto,nombre_categoria FROM Producto as p
inner join Categoria as C on p.categotia = C.id_categoria

/*VISTAS*/
/*Reporte mensual de ventas por sucursal*/
CREATE VIEW VenrasSucursal as
(
    SELECT fecha_realizo, P.nombre_producto , p.sucursal_n FROM Compras as c
	inner join Producto as P on P.sucursal_n = c.id_compra
	inner join Farmacia as  F on F.id_farmacia= p.sucursal_n
	where Month(fecha_realizo) = ('05')	)
SELECT * FROM VenrasSucursal

/*Reporte de ventas mensual por producto*/
CREATE View VentaProdu as
( 
    SELECT cantida_producto, p.nombre_producto, fecha_realizo, sucursal FROM Compras as c
	inner join Producto as P on P.sucursal_n = C.id_compra
	inner join Farmacia as F on F.id_farmacia = P.sucursal_n
	where Month(fecha_realizo) = ('04')	
)
SELECT * FROM VentaProdu

/*Total ventas por categoría*/
CREATE VIEW VentaCate as 
(
SELECT SUM(precio_venta )as total_ventas, P.categotia AS Categoria FROM Compras C
inner join Compra_Producto Cp on Cp.compra = c.id_compra
INNER JOIN Producto P on Cp.producto = p.codigo
inner join Categoria Ca on p.categotia = Ca.id_categoria
GROUP BY p.categotia
)

SELECT * FROM VentaCate


/*Productos en el inventario con cantidad menor que 10 unidades por sucursal*/
CREATE VIEW InventaCant as (
    SELECT id_farmacia, f.sucursal, p.inventario, p.codigo, nombre_producto FROM Farmacia F
	inner join Producto p on F.id_farmacia = P.sucursal_n 
	where p.inventario < 10
)
SELECT * FROM InventaCant

/*Listado de clientes que no han realizado ningún pedido durante el mes*/
CREATE VIEW NingunPedio as
(
  SELECT c.nombre as Cliente FROM Cliente c
  where not exists (SELECT co.cliente from Compras co 
   where Month(fecha_realizo) = '03' and c.id_cliente = co.cliente)
)
SELECT * FROM NingunPedio

/*PROCEDIMIENTO ALMACENADOS*/
/*Función para búsqueda de clientes por nombre*/
CREATE PROCEDURE ClienteN @nombre char(25) as
SELECT * FROM Cliente where nombre = @nombre

EXECUTE ClienteN @Nombre = 'Carlos'
/*Eliminar clientes por id*/
CREATE PROCEDURE ElimaCliente @id char(25) as
DELETE FROM Cliente where id_cliente = @id

EXECUTE ElimaCliente  @id = 1237
SELECT * FROM Cliente


/*Actualizar clientes por id*/
CREATE PROCEDURE ActCliente @nombre char(25), @id int as

UPDATE Cliente SET nombre = @nombre where id_cliente = @id


EXECUTE ActCliente @nombre = 'JOSE', @ID = 1235
SELECT * FROM Cliente


/*Listado de todos los pedidos realizados por un cliente*/
CREATE PROCEDURE PedidosCliente @id int as
(
SELECT f.id_farmacia ,f.sucursal,c.cliente,cantida_producto ,nombre_producto ,fecha_realizo FROM Farmacia as F
	inner join Producto as P on F.id_farmacia = p.sucursal_n
	inner join Compra_Producto as ca on  ca.producto = P.codigo
	inner join Compras as C on C.id_compra = ca.compra
	where cliente= @id
	)
EXECUTE PedidosCliente @id = 1236

/*Total de ventas de un producto en una fecha determinada*/
CREATE PROCEDURE VentaProdutos @fecha char(25) as
(
SELECT * FROM Compras c
inner join Compra_Producto as ca on  ca.producto = c.id_compra
inner join Producto p on p.codigo = ca.producto
where fecha_realizo = @fecha 
)


EXECUTE VentaProdutos @fecha= '2022-04-10'
