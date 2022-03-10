USE [seminario2_201700965]
GO

SELECT 
COUNT(*) AS temporalCompras,
(SELECT COUNT(*) FROM dbo.TemporalVentas) AS TemporalVentas,
(SELECT COUNT(*) FROM dbo.Clientes) AS Clientes,
(SELECT COUNT(*) FROM dbo.Vendedores) AS Vendedores,
(SELECT COUNT(*) FROM dbo.Sucursales) AS Sucursales,
(SELECT COUNT(*) FROM dbo.Productos) AS Productos,
(SELECT COUNT(*) FROM dbo.Proveedores) AS Proveedores,
(SELECT COUNT(*) FROM dbo.Tiempos) AS Tiempos,
(SELECT COUNT(*) FROM dbo.Compras) AS Compras,
(SELECT COUNT(*) FROM dbo.Ventas) AS Ventas
FROM dbo.TemporalCompras;