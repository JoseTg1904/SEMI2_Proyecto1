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
    tiempo, fecha
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