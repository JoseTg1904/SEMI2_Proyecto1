USE [seminario2_201700965]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Temporales
CREATE TABLE dbo.TemporalCompras (
    fecha              VARCHAR(512) NULL,
    codigoProveedor    VARCHAR(512) NULL,
    nombreProveedor    VARCHAR(512) NULL,
    direccionProveedor VARCHAR(512) NULL,
    numeroProveedor    VARCHAR(512) NULL,
    webProveedor       VARCHAR(512) NULL,
    codigoProducto     VARCHAR(512) NULL,
    nombreProducto     VARCHAR(512) NULL,
    marcaProducto      VARCHAR(512) NULL,
    categoria          VARCHAR(512) NULL,
    codigoSucursal     VARCHAR(512) NULL,
    nombreSucursal     VARCHAR(512) NULL,
    direccionSucursal  VARCHAR(512) NULL,
    region             VARCHAR(512) NULL,
    departamento       VARCHAR(512) NULL,
    unidades           VARCHAR(512) NULL,
    costoUnitario      VARCHAR(512) NULL
) ON [PRIMARY]
GO

CREATE TABLE dbo.TemporalVentas ( 
    fecha             VARCHAR(512) NULL,
    codigoCliente     VARCHAR(512) NULL,
    nombreCliente     VARCHAR(512) NULL,
    tipoCliente       VARCHAR(512) NULL,
    direccionCliente  VARCHAR(512) NULL,
    numeroCliente     VARCHAR(512) NULL,
    codigoVendedor    VARCHAR(512) NULL,
    nombreVendedor    VARCHAR(512) NULL,
    vacacionista      VARCHAR(512) NULL,
    codigoProducto    VARCHAR(512) NULL,
    nombreProducto    VARCHAR(512) NULL,
    marcaProducto     VARCHAR(512) NULL,
    categoria         VARCHAR(512) NULL,
    codigoSucursal    VARCHAR(512) NULL,
    nombreSucursal    VARCHAR(512) NULL,
    direccionSucursal VARCHAR(512) NULL,
    region            VARCHAR(512) NULL,
    departamento      VARCHAR(512) NULL,
    unidades          VARCHAR(512) NULL,
    precioUnitario    VARCHAR(512) NULL
) ON [PRIMARY]
GO

-- Datawarehouse
-- Dimensiones
CREATE TABLE dbo.Clientes (
    cliente       INT          NOT NULL IDENTITY,
    codigo        VARCHAR(10)   NOT NULL,
    nombre        VARCHAR(40)  NOT NULL,
    tipo          VARCHAR(10)  NOT NULL,
    direccion     VARCHAR(120) NOT NULL,
    numeroCliente VARCHAR(10)  NOT NULL,
    PRIMARY KEY (cliente)
)  ON [PRIMARY]
GO

CREATE TABLE dbo.Vendedores (
    vendedor     INT         NOT NULL IDENTITY,
    codigo       VARCHAR(10)  NOT NULL,
    nombre       VARCHAR(40) NOT NULL,
    vacacionista BIT         NOT NULL,
    PRIMARY KEY (vendedor)
) ON [PRIMARY]
GO

CREATE TABLE dbo.Sucursales (
    sucursal     INT          NOT NULL IDENTITY,
    codigo       VARCHAR(10)  NOT NULL,
    nombre       VARCHAR(20)  NOT NULL,
    direccion    VARCHAR(110) NOT NULL,
    region       VARCHAR(20)  NOT NULL,
    departamento VARCHAR(20)  NOT NULL,
    PRIMARY KEY (sucursal)
) ON [PRIMARY]
GO

CREATE TABLE dbo.Productos (
    producto  INT          NOT NULL IDENTITY,
    codigo    VARCHAR(10)  NOT NULL,
    nombre    VARCHAR(100) NOT NULL,
    marca     VARCHAR(20)  NOT NULL,
    categoria VARCHAR(20)  NOT NULL,
    PRIMARY KEY (producto)
) ON [PRIMARY]
GO

CREATE TABLE dbo.Proveedores (
    proveedor INT          NOT NULL IDENTITY,
    codigo    VARCHAR(10)  NOT NULL,
    nombre    VARCHAR(80)  NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    numero    VARCHAR(10)  NOT NULL,
    web       BIT          NOT NULL,
    PRIMARY KEY (proveedor)
) ON [PRIMARY]
GO

CREATE TABLE dbo.Tiempos (
    tiempo INT  NOT NULL IDENTITY,
    fecha  DATE NOT NULL,
    PRIMARY KEY (tiempo)
) ON [PRIMARY]
GO

-- Hechos
CREATE TABLE dbo.Compras (
    compra        INT   NOT NULL IDENTITY,
    unidades      INT   NOT NULL,
    costoUnitario FLOAT NOT NULL,
    proveedor     INT   NOT NULL,
    sucursal      INT   NOT NULL,
    producto      INT   NOT NULL,
    tiempo        INT   NOT NULL,
    PRIMARY KEY (compra),
    CONSTRAINT fk_1 FOREIGN KEY (proveedor) REFERENCES Proveedores(proveedor) ON DELETE CASCADE,
    CONSTRAINT fk_2 FOREIGN KEY (sucursal)  REFERENCES Sucursales(sucursal)   ON DELETE CASCADE,
    CONSTRAINT fk_3 FOREIGN KEY (producto)  REFERENCES Productos(producto)    ON DELETE CASCADE,
    CONSTRAINT fk_4 FOREIGN KEY (tiempo)    REFERENCES Tiempos(tiempo)        ON DELETE CASCADE
) ON [PRIMARY]
GO

CREATE TABLE dbo.Ventas (
    venta          INT   NOT NULL IDENTITY,
    unidades       INT   NOT NULL,
    precioUnitario FLOAT NOT NULL,
    cliente        INT   NOT NULL,
    producto       INT   NOT NULL,
    vendedor       INT   NOT NULL,
    sucursal       INT   NOT NULL,
    tiempo         INT   NOT NULL,
    PRIMARY KEY (venta),
    CONSTRAINT fk_5 FOREIGN KEY (cliente)  REFERENCES Clientes(cliente)    ON DELETE CASCADE,
    CONSTRAINT fk_6 FOREIGN KEY (producto) REFERENCES Productos(producto)  ON DELETE CASCADE,
    CONSTRAINT fk_7 FOREIGN KEY (vendedor) REFERENCES Vendedores(vendedor) ON DELETE CASCADE,
    CONSTRAINT fk_8 FOREIGN KEY (sucursal) REFERENCES Sucursales(sucursal) ON DELETE CASCADE,
    CONSTRAINT fk_9 FOREIGN KEY (tiempo)   REFERENCES Tiempos(tiempo)      ON DELETE CASCADE
) ON [PRIMARY]
GO
