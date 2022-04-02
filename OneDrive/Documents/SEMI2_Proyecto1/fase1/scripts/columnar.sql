USE [seminario2Columnar_201700965]
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX indice1 
ON dbo.Clientes (
    cliente, codigo, nombre, tipo,
    direccion, numeroCliente    
);
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX indice2
ON dbo.Vendedores (
    vendedor, codigo, nombre, vacacionista
)
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX indice3
ON dbo.Sucursales (
    sucursal, codigo, nombre, direccion, region,
    departamento
)
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX indice4
ON dbo.Productos (
    producto, codigo, nombre, marca,
    categoria
)
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX indice5
ON dbo.Tiempos (
    tiempo, fecha, anio, semestre, mes, dia
)
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX indice6
ON dbo.Compras (
    compra, unidades, costoUnitario, proveedor,
    sucursal, producto, tiempo
)
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX indice7
ON dbo.Ventas (
    venta, unidades, precioUnitario, cliente,
    producto, vendedor, sucursal, tiempo
)
GO

ALTER TABLE dbo.Clientes ADD
    CONSTRAINT pk_1 PRIMARY KEY (cliente)
GO

ALTER TABLE dbo.Vendedores ADD
    CONSTRAINT pk_2 PRIMARY KEY (vendedor)
GO

ALTER TABLE dbo.Sucursales ADD
    CONSTRAINT pk_3 PRIMARY KEY (sucursal)
GO

ALTER TABLE dbo.Productos ADD
    CONSTRAINT pk_4 PRIMARY KEY (producto)
GO

ALTER TABLE dbo.Proveedores ADD
    CONSTRAINT pk_5 PRIMARY KEY (proveedor)
GO

ALTER TABLE dbo.Tiempos ADD
    CONSTRAINT pk_6 PRIMARY KEY (tiempo)
GO

ALTER TABLE dbo.Compras ADD
    CONSTRAINT pk_7 PRIMARY KEY (compra),
    CONSTRAINT fk_1 FOREIGN KEY (proveedor) REFERENCES Proveedores(proveedor) ON DELETE CASCADE,
    CONSTRAINT fk_2 FOREIGN KEY (sucursal)  REFERENCES Sucursales(sucursal)   ON DELETE CASCADE,
    CONSTRAINT fk_3 FOREIGN KEY (producto)  REFERENCES Productos(producto)    ON DELETE CASCADE,
    CONSTRAINT fk_4 FOREIGN KEY (tiempo)    REFERENCES Tiempos(tiempo)        ON DELETE CASCADE
GO

ALTER TABLE dbo.Ventas ADD 
    CONSTRAINT pk_8 PRIMARY KEY (venta),
    CONSTRAINT fk_5 FOREIGN KEY (cliente)  REFERENCES Clientes(cliente)    ON DELETE CASCADE,
    CONSTRAINT fk_6 FOREIGN KEY (producto) REFERENCES Productos(producto)  ON DELETE CASCADE,
    CONSTRAINT fk_7 FOREIGN KEY (vendedor) REFERENCES Vendedores(vendedor) ON DELETE CASCADE,
    CONSTRAINT fk_8 FOREIGN KEY (sucursal) REFERENCES Sucursales(sucursal) ON DELETE CASCADE,
    CONSTRAINT fk_9 FOREIGN KEY (tiempo)   REFERENCES Tiempos(tiempo)      ON DELETE CASCADE
GO