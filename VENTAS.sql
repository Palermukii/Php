    DROP DATABASE IF EXISTS VENTAS;
    CREATE DATABASE VENTAS;
    USE VENTAS;
    CREATE TABLE CLIENTES (
        Id_Cliente INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        Nombre VARCHAR(50) NOT NULL,
        Apellido VARCHAR(60) NOT NULL,
        F_Nac DATE NOT NULL,
        Telefono INT(10) NOT NULL
    );
    CREATE TABLE PRODUCTOS (
        Id_Prod INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        Nombre VARCHAR(20) NOT NULL,
        Descrip VARCHAR(60) ,
        Precio INT(3) NOT NULL
        
    );
    CREATE TABLE PEDIDOS (
        Id_pedido INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        Fecha DATE NOT NULL,
        Cantidad INT(3) NOT NULL,
        Id_Cliente INT(3) NOT NULL,
        Id_Prod INT(3) NOT NULL,
        FOREIGN KEY (Id_Cliente) REFERENCES CLIENTES(Id_Cliente),
        FOREIGN KEY (Id_Prod) REFERENCES PRODUCTOS(Id_Prod)
    );
    INSERT INTO CLIENTES ( Nombre, Apellido, F_Nac, Telefono)
    VALUES ('Jano', 'Fuertes', '1990-07-08', 1123331123),
    ('Tomas', 'Fuertes', '1990-12-09', 1124671113),
    ('Marrabello', 'Nagito', '2007-12-09', 1124671443),
    ('Maxmiliano', 'Fuertes', '1390-12-09', 1124671653),
    ('Alcoholico', 'Montesano', '1390-12-09', 1133371653)
    ;
    INSERT INTO PRODUCTOS (Nombre, Descrip, Precio)
     VALUES ('Teclado', 'RGB', 150),
      ('Auriculares', 'RGB', 250),
      ('Mouse', 'RGB', 350),
      ('Placa de Video', '8GB', 550)
    ;
        INSERT INTO PEDIDOS (Fecha, Cantidad, Id_Cliente, Id_Prod)
     VALUES ('2023-06-09', 4, '1', '3'),
      ('2023-06-03', 2, '5', '1')
    ;
