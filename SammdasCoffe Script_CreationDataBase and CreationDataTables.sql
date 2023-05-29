Create Database SammdasCoffee
Use SammdasCoffe

-- Tabla Categoría
CREATE TABLE Categoria (
  idCategoria INT PRIMARY KEY identity(1,1),
  nombreCategoria VARCHAR(255)
);

-- Tabla Producto
CREATE TABLE Producto (
  idProducto INT PRIMARY KEY identity(1,1),
  idCategoria INT,
  nombreProducto VARCHAR(255),
  precioProducto DECIMAL(10, 2),
  FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
);

-- Tabla DetalleProducto
CREATE TABLE DetalleProducto (
  idDetalle INT PRIMARY KEY,
  idProducto INT,
  tamaño VARCHAR(50),
  reseta VARCHAR(465),
  FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
);


-- Tabla Rol
CREATE TABLE Rol (
  idRol INT PRIMARY KEY identity(1,1),
  nombreRol VARCHAR(255)
);

-- Tabla Usuario
CREATE TABLE Usuario (
  idUsuario INT PRIMARY KEY identity(1,1),
  nombre VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  idRol INT,
  FOREIGN KEY (idRol) REFERENCES Rol(idRol)
);
