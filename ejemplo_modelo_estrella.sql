-- Creación de la tabla de hechos ventas
CREATE TABLE ventas (
    v_id INT AUTO_INCREMENT PRIMARY KEY,
    v_fecha_id INT,
    v_producto_id INT,
    v_cliente_id INT,
    v_cantidad INT,
    v_precio DECIMAL(10, 2)
    FOREIGN KEY (v_fecha_id) REFERENCES fechas(f_id),
    FOREIGN KEY (v_producto_id) REFERENCES productos(pro_id),
    FOREIGN KEY (v_cliente_id) REFERENCES clientes(cli_id)
);

-- Creación de la tabla dimensión de productos
CREATE TABLE productos (
    pro_id INT PRIMARY KEY,
    pro_nombre VARCHAR(50),
    pro_categoria VARCHAR(50),
    pro_precio DECIMAL(10, 2)
);

-- Creación de la tabla dimensión de clientes
CREATE TABLE clientes (
    cli_id INT PRIMARY KEY,
    cli_nombre VARCHAR(50),
    cli_ciudad VARCHAR(50),
    cli_edad INT
);

-- Creación de la tabla dimensión de tiempo: fechas de las ventas
CREATE TABLE fechas (
    f_id INT PRIMARY KEY,
    f_fecha DATE,
    f_nombre_dia VARCHAR(10),
    f_mes VARCHAR(10),
    f_anio INT
);

-- Inserción de registros a la tabla ventas
INSERT INTO ventas (v_id, v_fecha_id, v_producto_id, v_cliente_id, v_cantidad, v_precio) 
VALUES 
(1, 101, 201, 301, 2, 90),
(2, 102, 202, 302, 1, 50),
(3, 103, 201, 303, 3, 135),
(4, 104, 203, 301, 2, 70);

-- Inserción de registros a la tabla productos
INSERT INTO productos (pro_id, pro_nombre, por_categoria, pro_precio)
VALUES 
(201, 'Los colonos de Catán', 'Economía, Negociación', 45),
(202, '¡Aventureros al tren!', 'Trenes', 50),
(203, 'Carcassonne', 'Colocación de losetas, Medieval', 35);

-- Inserción de registros a la tabla clientes
INSERT INTO clientes (cli_id, cli_nombre, cli_ciudad, cli_edad)
VALUES 
(301, 'Juan', 'Badajoz', 35),
(302, 'Susana', 'Madrid', 28),
(303, 'Alex', 'Chicago', 40);

-- Inserción de registros a la tabla fechas
INSERT INTO fechas (f_id, f_fecha, f_nombre_dia, f_mes, f_anio)
VALUES 
(101, '2023-01-01', 'Lunes', 'Enero', 2023),
(102, '2023-02-15', 'Miércoles', 'Febrero', 2023),
(103, '2023-03-10', 'Viernes', 'Marzo', 2023),
(104, '2023-04-22', 'Sábado', 'Abril', 2023);