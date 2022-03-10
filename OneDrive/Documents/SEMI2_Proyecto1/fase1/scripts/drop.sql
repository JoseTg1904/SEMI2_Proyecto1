USE [seminario2_201700965]
GO

ALTER TABLE dbo.Compras DROP CONSTRAINT fk_1, fk_2, fk_3, fk_4
GO

ALTER TABLE dbo.Ventas DROP CONSTRAINT fk_5, fk_6, fk_7, fk_8, fk_9
GO

TRUNCATE TABLE dbo.TemporalVentas;
TRUNCATE TABLE dbo.TemporalCompras;
TRUNCATE TABLE dbo.Clientes;
TRUNCATE TABLE dbo.Vendedores;
TRUNCATE TABLE dbo.Sucursales;
TRUNCATE TABLE dbo.Productos;
TRUNCATE TABLE dbo.Proveedores;
TRUNCATE TABLE dbo.Compras;
TRUNCATE TABLE dbo.Ventas;
TRUNCATE TABLE dbo.Tiempos;

ALTER TABLE dbo.Compras ADD
    CONSTRAINT fk_1 FOREIGN KEY (proveedor) REFERENCES Proveedores(proveedor) ON DELETE CASCADE,
    CONSTRAINT fk_2 FOREIGN KEY (sucursal)  REFERENCES Sucursales(sucursal)   ON DELETE CASCADE,
    CONSTRAINT fk_3 FOREIGN KEY (producto)  REFERENCES Productos(producto)    ON DELETE CASCADE,
    CONSTRAINT fk_4 FOREIGN KEY (tiempo)    REFERENCES Tiempos(tiempo)        ON DELETE CASCADE
GO

ALTER TABLE dbo.Ventas ADD 
    CONSTRAINT fk_5 FOREIGN KEY (cliente)  REFERENCES Clientes(cliente)    ON DELETE CASCADE,
    CONSTRAINT fk_6 FOREIGN KEY (producto) REFERENCES Productos(producto)  ON DELETE CASCADE,
    CONSTRAINT fk_7 FOREIGN KEY (vendedor) REFERENCES Vendedores(vendedor) ON DELETE CASCADE,
    CONSTRAINT fk_8 FOREIGN KEY (sucursal) REFERENCES Sucursales(sucursal) ON DELETE CASCADE,
    CONSTRAINT fk_9 FOREIGN KEY (tiempo)   REFERENCES Tiempos(tiempo)      ON DELETE CASCADE
GO