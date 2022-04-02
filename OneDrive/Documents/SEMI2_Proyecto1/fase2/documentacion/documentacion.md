<p style="font-size: 18px">
Universidad de San Carlos de Guatemala
<br>
Facultad de Ingeniería
<br>
Escuela de Ciencias y Sistemas
<br>
Seminario de Sistemas 2
<br>
Ing. Luis Alberto Vettorazzi Espana
<br>
Aux. Gabriela Marilyn Orellana Solorzano
</p>

<br><br><br><br>



<h1 align="center" style="font-size: 40px; font-weight: bold;">OneSolution - BI | Fase 2</h1>

<br><br><br>


<div align="center">

| Carnet | Nombre |
| :-: | :-:| 
| 201700965 | José Carlos I Alonzo Colocho |

</div>

<br><br>

<h4 align="center" style="font-size: 18px; font-weight: bold;">Guatemala 04 de Abril 2022</h4>


*** 


<br><br><br><br>

*** 

<h1>Tabla de Contenido</h1>

- [**1. Datamarts**](#1-datamarts)
- [**2. Tableros de Power BI**](#2-tableros-de-power-bi)
- [**3. Comparacion de almacenamiento**](#3-comparacion-de-almacenamiento)

<br><br>

***
# **1. Datamarts**

1.1. Cubo de compras por filas

![cuboComprasNormal](./assets/cuboComprasNormal.PNG)

<br>

1.2. Cubo de ventas por filas

![cuboVentasNormal](./assets/cuboVentasNormal.PNG)

<br>

1.3. Cubo de compras columnar

![cuboComprasColumnar](./assets/cuboComprasColumnar.PNG)

<br>

1.4. Cubo de ventas columnar

![cuboVentasColumnar](./assets/cuboVentasColumnar.PNG)

<br><br>

***
# **2. Tableros de Power BI**

2.1. Tablero almacenamiento por filas

![tableroNormal](./assets/cuboNormal.PNG)

<br>

2.2. Tablero almacenamiento columnar

![tableroColumnar](./assets/cuboColumnar.PNG)

<br><br>

***
# **3. Comparacion de almacenamiento**

3.1. Reportes de compras

<div align="center">

| Reporte No. | Filas | Columnar |
| :-: | :-: | :-: | 
| 1 | 00:01.29 s | 00:01.20 s |
| 2 | 00:01.47 s | 00:01.13 s |
| 3 | 00:00.97 s | 00:00.95 s |

</div>

3.2. Reportes de ventas

<div align="center">

| Reporte No. |Filas | Columnar |
| :-: | :-: | :-: | 
| 1 | 00:01.38 s | 00:00.83 s |
| 2 | 00:01.50 s | 00:01.46 s |
| 3 | 00:01.19 s | 00:01.05 s |

</div>

Como se puede denotar el almacenamiento columnar es por unas cuantas centecimas en la mayoria de los casos mas rapida que el almacenamiento tradicional por filas, con lo cual al tener un volumen de datos mucho mayor o consultas mas complicadas esta ventaja de tiempo puede verse incrementada en mayor medida.