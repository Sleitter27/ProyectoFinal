
/*Nombre: Sleitter Trinidad Matricula: 16-EIIT-1-098 Seccion: 0541*/




USE [master]
GO
/****** Object:  Database [Game Art.]    Script Date: 12/22/2020 8:04:55 AM ******/
CREATE DATABASE [Game Art.]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tecno Tec.', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019CORE\MSSQL\DATA\Tecno Tec..mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tecno Tec._log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019CORE\MSSQL\DATA\Tecno Tec._log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Game Art.] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Game Art.].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Game Art.] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Game Art.] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Game Art.] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Game Art.] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Game Art.] SET ARITHABORT OFF 
GO
ALTER DATABASE [Game Art.] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Game Art.] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Game Art.] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Game Art.] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Game Art.] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Game Art.] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Game Art.] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Game Art.] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Game Art.] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Game Art.] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Game Art.] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Game Art.] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Game Art.] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Game Art.] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Game Art.] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Game Art.] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Game Art.] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Game Art.] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Game Art.] SET  MULTI_USER 
GO
ALTER DATABASE [Game Art.] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Game Art.] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Game Art.] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Game Art.] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Game Art.] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Game Art.] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Game Art.] SET QUERY_STORE = OFF
GO
USE [Game Art.]
GO
/****** Object:  Table [dbo].[Datos Empleados]    Script Date: 12/22/2020 8:04:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos Empleados](
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
	[Departamento] [varchar](25) NOT NULL,
	[Salario] [decimal](11, 2) NOT NULL,
	[Posicion] [varchar](40) NOT NULL,
	[Seguro Medico] [varchar](20) NOT NULL,
	[Jefe inmediato] [varchar](30) NULL,
	[Codigo de Empleado] [int] NOT NULL,
 CONSTRAINT [PK_Datos Empleados] PRIMARY KEY CLUSTERED 
(
	[Codigo de Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deduciones]    Script Date: 12/22/2020 8:04:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deduciones](
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
	[Ahorros] [numeric](11, 2) NULL,
	[Deudas] [numeric](11, 2) NULL,
	[Descuento seguro Medico] [numeric](11, 2) NOT NULL,
	[Codigo Empleado] [int] NOT NULL,
 CONSTRAINT [PK_Deduciones] PRIMARY KEY CLUSTERED 
(
	[Codigo Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 12/22/2020 8:04:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
	[Cedula] [numeric](11, 0) NOT NULL,
	[Fecha de Nacimiento] [date] NOT NULL,
	[Edad] [varchar](4) NOT NULL,
	[Sexo] [varchar](1) NOT NULL,
	[Tipo de Samgre] [varchar](3) NOT NULL,
	[Telefono] [numeric](12, 0) NOT NULL,
	[Codigo de Empleado] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Codigo de Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 12/22/2020 8:04:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[Consolas] [varchar](20) NOT NULL,
	[Modelo] [varchar](15) NULL,
	[Precios] [decimal](10, 2) NOT NULL,
	[Fecha de publicacion] [date] NOT NULL,
	[ConsolaID] [int] NOT NULL,
	[Codigo de Compra] [int] IDENTITY(14030,1) NOT NULL,
 CONSTRAINT [PK_Equipos] PRIMARY KEY CLUSTERED 
(
	[ConsolaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video Juegos]    Script Date: 12/22/2020 8:04:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video Juegos](
	[Juegos] [varchar](30) NOT NULL,
	[Consola] [varchar](20) NOT NULL,
	[Fecha de publicacion] [date] NOT NULL,
	[Formato] [varchar](15) NOT NULL,
	[Espacio de almacenamiento] [varchar](6) NOT NULL,
	[Precios] [decimal](8, 2) NOT NULL,
	[Genero] [varchar](15) NOT NULL,
	[Clasificacion] [varchar](3) NULL,
	[Codigo de Compra] [int] IDENTITY(18030,1) NOT NULL,
	[ConsolaID] [int] NOT NULL,
 CONSTRAINT [PK_Video Juegos] PRIMARY KEY CLUSTERED 
(
	[Codigo de Compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Mark', N'Smith', N'Administracion', CAST(500000.00 AS Decimal(11, 2)), N'CEO', N'SENASA', NULL, 1)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Oscar', N'Valdez', N'Produccion', CAST(350000.00 AS Decimal(11, 2)), N'Gerente', N'ARS PALIC', N'Mark', 2)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Rene', N'Sarante', N'Produccion', CAST(200000.00 AS Decimal(11, 2)), N'Ingeniero de planta', N'SENASA', N'Oscar', 3)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Estebania', N'Mendez', N'Publicidad', CAST(150000.00 AS Decimal(11, 2)), N'Diseñadora', N'SENASA', NULL, 4)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Judith', N'Torres', N'Publicidad', CAST(85000.00 AS Decimal(11, 2)), N'Diseñadora', N'ARS PALIC', N'Estebania', 5)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Jordan', N'Hernandez', N'Publicidad', CAST(85000.00 AS Decimal(11, 2)), N'Relaciones publicas', N'ARS PALIC', N'Estebania', 7)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Jaqueline', N'Torres', N'Recursos humanos', CAST(70000.00 AS Decimal(11, 2)), N'Reclutamiento', N'ARS PALIC', NULL, 8)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Jorge', N'Ramos', N'Recursos humanos', CAST(60000.00 AS Decimal(11, 2)), N'Reclutamiento', N'SENASA', N'Jaqueline', 9)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Bryan ', N'Medina', N'Fabricacion', CAST(45000.00 AS Decimal(11, 2)), N'Supervisor ensambles', N'SENASA', N'Oscar', 10)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Jose', N'Reyes', N'Fabricacion', CAST(35000.00 AS Decimal(11, 2)), N'fabricador consolas', N'ARS PALIC', N'Bryan', 11)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Alvin ', N'Cruz', N'Fabricacion', CAST(35000.00 AS Decimal(11, 2)), N'fabricador consolas', N'ARS PALIC', N'Bryan', 12)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Oscar ', N'Pellerano', N'Videos Juegos', CAST(100000.00 AS Decimal(11, 2)), N'Game Designer', N'SENASA', NULL, 13)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Sleitter', N'Trinidad', N'Videos Juegos', CAST(90000.00 AS Decimal(11, 2)), N'Game Designer', N'SENASA', N'Oscar P.', 14)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Michael', N'Ortega', N'Videos Juegos', CAST(150000.00 AS Decimal(11, 2)), N'Programador', N'SENASA', N'Oscar P.', 15)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Bob ', N'Cano', N'Videos Juegos', CAST(85000.00 AS Decimal(11, 2)), N'Game Tester', N'ARS PALIC', N'Oscar P.', 16)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Arianna', N'Rodriguez', N'Ventas', CAST(55000.00 AS Decimal(11, 2)), N'Vendedor', N'ARS PALIC', NULL, 17)
INSERT [dbo].[Datos Empleados] ([Nombre], [Apellido], [Departamento], [Salario], [Posicion], [Seguro Medico], [Jefe inmediato], [Codigo de Empleado]) VALUES (N'Sergio ', N'Almonte', N'Ventas', CAST(45000.00 AS Decimal(11, 2)), N'Vendedor', N'ARS PALIC', N'Arianna', 18)
GO
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Mark', N'Smith', CAST(500000.00 AS Numeric(11, 2)), NULL, CAST(1500.00 AS Numeric(11, 2)), 1)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Oscar', N'Valdez', CAST(600000.00 AS Numeric(11, 2)), CAST(50000.00 AS Numeric(11, 2)), CAST(1200.00 AS Numeric(11, 2)), 2)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Rene', N'Sarante', CAST(250000.00 AS Numeric(11, 2)), CAST(60000.00 AS Numeric(11, 2)), CAST(1000.00 AS Numeric(11, 2)), 3)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Estebania', N'Mendez', CAST(350000.00 AS Numeric(11, 2)), CAST(85000.00 AS Numeric(11, 2)), CAST(1000.00 AS Numeric(11, 2)), 4)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Judith', N'Torres', CAST(250000.00 AS Numeric(11, 2)), CAST(100000.00 AS Numeric(11, 2)), CAST(950.00 AS Numeric(11, 2)), 5)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Jordan', N'Hernandez', CAST(130000.00 AS Numeric(11, 2)), CAST(35000.00 AS Numeric(11, 2)), CAST(900.00 AS Numeric(11, 2)), 7)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Jaqueline', N'Torres', CAST(150000.00 AS Numeric(11, 2)), CAST(10000.00 AS Numeric(11, 2)), CAST(900.00 AS Numeric(11, 2)), 8)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Jorge', N'Ramos', CAST(95000.00 AS Numeric(11, 2)), CAST(23654.00 AS Numeric(11, 2)), CAST(800.00 AS Numeric(11, 2)), 9)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Bryan', N'Medina', CAST(50000.00 AS Numeric(11, 2)), CAST(31000.00 AS Numeric(11, 2)), CAST(750.00 AS Numeric(11, 2)), 10)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Jose', N'Reyes', CAST(40000.00 AS Numeric(11, 2)), CAST(23654.25 AS Numeric(11, 2)), CAST(750.00 AS Numeric(11, 2)), 11)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Alvin', N'Cruz', CAST(96000.00 AS Numeric(11, 2)), CAST(56000.00 AS Numeric(11, 2)), CAST(800.00 AS Numeric(11, 2)), 12)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Oscar', N'Pellerano', CAST(200000.00 AS Numeric(11, 2)), CAST(125000.00 AS Numeric(11, 2)), CAST(900.00 AS Numeric(11, 2)), 13)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Sleitter', N'Trinidad', CAST(180000.00 AS Numeric(11, 2)), NULL, CAST(500.00 AS Numeric(11, 2)), 14)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Michael ', N'Ortega', CAST(325000.00 AS Numeric(11, 2)), CAST(25000.00 AS Numeric(11, 2)), CAST(700.00 AS Numeric(11, 2)), 15)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Bob', N'Cano', CAST(145000.00 AS Numeric(11, 2)), CAST(38000.00 AS Numeric(11, 2)), CAST(450.00 AS Numeric(11, 2)), 16)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Arianna', N'Rodriguez', CAST(75000.00 AS Numeric(11, 2)), CAST(10000.00 AS Numeric(11, 2)), CAST(550.00 AS Numeric(11, 2)), 17)
INSERT [dbo].[Deduciones] ([Nombre], [Apellido], [Ahorros], [Deudas], [Descuento seguro Medico], [Codigo Empleado]) VALUES (N'Sergio', N'Almonte', CAST(65000.00 AS Numeric(11, 2)), CAST(15000.00 AS Numeric(11, 2)), CAST(600.00 AS Numeric(11, 2)), 18)
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Mark', N'Smith', CAST(40269753154 AS Numeric(11, 0)), CAST(N'1980-01-02' AS Date), N'40', N'M', N'AB-', CAST(8496753164 AS Numeric(12, 0)), 1)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Oscar', N'Valdez', CAST(20726431597 AS Numeric(11, 0)), CAST(N'1985-03-06' AS Date), N'35', N'M', N'A+', CAST(8296543791 AS Numeric(12, 0)), 2)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Rene', N'Sarante', CAST(40265489751 AS Numeric(11, 0)), CAST(N'1990-05-07' AS Date), N'30', N'M', N'A-', CAST(8497893164 AS Numeric(12, 0)), 3)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Estebania', N'Mendez', CAST(40264921648 AS Numeric(11, 0)), CAST(N'1980-12-12' AS Date), N'40', N'F', N'O-', CAST(8296543791 AS Numeric(12, 0)), 4)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Judith', N'Torres', CAST(40298763457 AS Numeric(11, 0)), CAST(N'1995-11-15' AS Date), N'25', N'F', N'O+', CAST(8095648282 AS Numeric(12, 0)), 5)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Jordan', N'Hernandez', CAST(85964975215 AS Numeric(11, 0)), CAST(N'2000-01-06' AS Date), N'20', N'M', N'O+', CAST(8095643791 AS Numeric(12, 0)), 7)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Jaqueline', N'Torres', CAST(40252569748 AS Numeric(11, 0)), CAST(N'1998-05-09' AS Date), N'22', N'F', N'A+', CAST(8295649797 AS Numeric(12, 0)), 8)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Jorge', N'Ramos', CAST(40265497514 AS Numeric(11, 0)), CAST(N'2000-08-07' AS Date), N'20', N'M', N'O-', CAST(8096549797 AS Numeric(12, 0)), 9)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Bryan', N'Medina', CAST(40298764975 AS Numeric(11, 0)), CAST(N'1999-05-08' AS Date), N'21', N'M', N'AB+', CAST(8496549999 AS Numeric(12, 0)), 10)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Jose ', N'Reyes', CAST(20761597614 AS Numeric(11, 0)), CAST(N'1996-05-12' AS Date), N'24', N'M', N'AB+', CAST(8096542121 AS Numeric(12, 0)), 11)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Alvin', N'Cruz', CAST(85961597548 AS Numeric(11, 0)), CAST(N'1997-06-12' AS Date), N'23', N'M', N'A-', CAST(8496543232 AS Numeric(12, 0)), 12)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Oscar', N'Pellerano', CAST(40298763154 AS Numeric(11, 0)), CAST(N'1994-05-06' AS Date), N'26', N'M', N'AB+', CAST(8096548297 AS Numeric(12, 0)), 13)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Sleitter', N'Trinidad', CAST(40264597548 AS Numeric(11, 0)), CAST(N'1997-05-06' AS Date), N'23', N'M', N'O-', CAST(8299873333 AS Numeric(12, 0)), 14)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Michael', N'Ortega', CAST(20764973154 AS Numeric(11, 0)), CAST(N'1993-05-06' AS Date), N'27', N'M', N'A-', CAST(8095648787 AS Numeric(12, 0)), 15)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Bob', N'Cano', CAST(40264597897 AS Numeric(11, 0)), CAST(N'1998-06-09' AS Date), N'22', N'M', N'O+', CAST(8096455555 AS Numeric(12, 0)), 16)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Arianna', N'Rodriguez', CAST(40263697594 AS Numeric(11, 0)), CAST(N'1995-05-09' AS Date), N'25', N'F', N'AB-', CAST(8499878787 AS Numeric(12, 0)), 17)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Cedula], [Fecha de Nacimiento], [Edad], [Sexo], [Tipo de Samgre], [Telefono], [Codigo de Empleado]) VALUES (N'Sergio', N'Almonte', CAST(40298745632 AS Numeric(11, 0)), CAST(N'1994-09-08' AS Date), N'26', N'M', N'AB+', CAST(8096549999 AS Numeric(12, 0)), 18)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipos] ON 

INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Action Max', N'GT315', CAST(90.00 AS Decimal(10, 2)), CAST(N'2007-05-15' AS Date), 524, 14045)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Amstrad ', N'GX1000', CAST(100.00 AS Decimal(10, 2)), CAST(N'2010-03-15' AS Date), 624, 14044)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Amstrad ', N'GX1500', CAST(125.00 AS Decimal(10, 2)), CAST(N'2014-05-13' AS Date), 724, 14043)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Amstrad ', N'GX2000', CAST(130.00 AS Decimal(10, 2)), CAST(N'2015-05-13' AS Date), 824, 14042)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Amstrad ', N'GX3000', CAST(150.00 AS Decimal(10, 2)), CAST(N'2016-05-13' AS Date), 900, 14041)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'

Amstrad ', N'GX4000 ', CAST(160.00 AS Decimal(10, 2)), CAST(N'2017-05-13' AS Date), 924, 14034)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Palmtex', N'IV', CAST(170.00 AS Decimal(10, 2)), CAST(N'2018-04-12' AS Date), 1024, 14033)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Pamltex', N'V', CAST(200.00 AS Decimal(10, 2)), CAST(N'2019-04-12' AS Date), 1124, 14032)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Vectrex', N'IX', CAST(300.00 AS Decimal(10, 2)), CAST(N'2019-02-12' AS Date), 1424, 14031)
INSERT [dbo].[Equipos] ([Consolas], [Modelo], [Precios], [Fecha de publicacion], [ConsolaID], [Codigo de Compra]) VALUES (N'Vectrex', N'X ', CAST(350.00 AS Decimal(10, 2)), CAST(N'2020-02-12' AS Date), 1524, 14030)
SET IDENTITY_INSERT [dbo].[Equipos] OFF
GO
SET IDENTITY_INSERT [dbo].[Video Juegos] ON 

INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Castlevania 3', N'Vectrex X', CAST(N'2020-04-15' AS Date), N'CD', N'85GB', CAST(85.00 AS Decimal(8, 2)), N'Accion', N'18+', 18032, 1524)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Ghost’n Goblins', N'Vectrex X', CAST(N'2020-04-15' AS Date), N'CD', N'80GB', CAST(80.00 AS Decimal(8, 2)), N'Accion', N'16+', 18033, 1524)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Operation Wolf', N'Vectrex X', CAST(N'2020-05-20' AS Date), N'CD', N'77GB', CAST(70.00 AS Decimal(8, 2)), N'Accion', N'16+', 18035, 1524)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Double Dribble', N'Vectrex IX', CAST(N'2019-06-20' AS Date), N'CD', N'75GB', CAST(70.00 AS Decimal(8, 2)), N'Estrategia', NULL, 18036, 1424)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Faxandu', N'Vectrex IX', CAST(N'2019-06-25' AS Date), N'CD', N'73GB', CAST(70.00 AS Decimal(8, 2)), N'Aventura', N'14+', 18037, 1424)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Castlevania 2', N'Vectrex IX', CAST(N'2019-06-28' AS Date), N'CD', N'70GB', CAST(75.00 AS Decimal(8, 2)), N'Accion', N'18+', 18038, 1424)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Castelvania ', N'Vectrex IX', CAST(N'2019-03-27' AS Date), N'CD', N'60GB', CAST(65.00 AS Decimal(8, 2)), N'Accion', N'18+', 18039, 1424)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Double Dragon 2', N'Pamltex V', CAST(N'2019-06-25' AS Date), N'CD', N'60GB', CAST(60.00 AS Decimal(8, 2)), N'Disparos', N'16+', 18041, 1124)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Punch Out', N'Pamltex V', CAST(N'2019-07-20' AS Date), N'CD', N'65GB', CAST(55.00 AS Decimal(8, 2)), N'Peleas', N'14+', 18042, 1124)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Bionic Commando', N'Pamltex V', CAST(N'2019-08-25' AS Date), N'CD', N'60GB', CAST(50.00 AS Decimal(8, 2)), N'Disparos', N'14+', 18044, 1124)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Street Gangs', N'Pamltex IV', CAST(N'2018-04-12' AS Date), N'CD', N'60GB', CAST(50.00 AS Decimal(8, 2)), N'Peleas', N'12+', 18045, 1024)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Probotector', N'Pamltex IV', CAST(N'2018-05-15' AS Date), N'CD', N'55GB', CAST(50.00 AS Decimal(8, 2)), N'Disparos', N'14+', 18046, 1024)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Blaster Master', N'Palmtex IV', CAST(N'2018-07-18' AS Date), N'CD', N'50GB', CAST(45.00 AS Decimal(8, 2)), N'Disparos', N'14+', 18047, 1024)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Baseball', N'Amstrad GX4000', CAST(N'2017-06-25' AS Date), N'Digital', N'40GB', CAST(50.00 AS Decimal(8, 2)), N'Deporte', NULL, 18049, 924)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Double Dragon ', N'Amstrad GX4000', CAST(N'2017-07-25' AS Date), N'Digital', N'45GB', CAST(55.00 AS Decimal(8, 2)), N'Disparos', N'18+', 18050, 924)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Adventure Island 2', N'Amstrad GX3000', CAST(N'2016-06-26' AS Date), N'CD', N'35GB', CAST(50.00 AS Decimal(8, 2)), N'Aventura', NULL, 18051, 900)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Battletoads', N'Amstrad GX3000', CAST(N'2016-08-25' AS Date), N'CD', N'25GB', CAST(40.00 AS Decimal(8, 2)), N'Accion', N'16+', 18052, 900)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Adventure Island ', N'Amstrad GX2000', CAST(N'2015-07-26' AS Date), N'Digital', N'30GB', CAST(35.00 AS Decimal(8, 2)), N'Aventura', NULL, 18053, 824)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Millon’s Secret Castle', N'Amstrad GX2000', CAST(N'2015-09-15' AS Date), N'Digital', N'25GB', CAST(30.00 AS Decimal(8, 2)), N'Aventura', NULL, 18054, 824)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Ninja Gaiden', N'Amstrad GX1500', CAST(N'2014-06-30' AS Date), N'CD', N'20GB', CAST(20.00 AS Decimal(8, 2)), N'Accion', N'14+', 18055, 724)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Zoda’s Revenge: Star Tropics 2', N'Amstrad GX1500', CAST(N'2014-08-31' AS Date), N'CD', N'15GB', CAST(20.00 AS Decimal(8, 2)), N'Aventura', N'12+', 18056, 724)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Zoda’s Revenge: Star Tropics', N'Amstrad GX1000', CAST(N'2010-04-26' AS Date), N'Cinta', N'10GB', CAST(15.00 AS Decimal(8, 2)), N'Aventura', N'12+', 18057, 624)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Parodius', N'Amstrad GX1000', CAST(N'2010-06-28' AS Date), N'Cinta', N'5GB', CAST(9.00 AS Decimal(8, 2)), N'Arcade', NULL, 18058, 624)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Xevious', N'Amstrad GX315', CAST(N'2007-06-25' AS Date), N'Cinta', N'2GB', CAST(8.00 AS Decimal(8, 2)), N'Pelea', N'14+', 18059, 524)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'Gradius', N'Amstrad GX315', CAST(N'2007-08-30' AS Date), N'Cinta', N'2GB', CAST(7.00 AS Decimal(8, 2)), N'Disparos', N'16+', 18060, 524)
INSERT [dbo].[Video Juegos] ([Juegos], [Consola], [Fecha de publicacion], [Formato], [Espacio de almacenamiento], [Precios], [Genero], [Clasificacion], [Codigo de Compra], [ConsolaID]) VALUES (N'City Connection', N'Amstrad GX315', CAST(N'2007-09-30' AS Date), N'Cinta', N'1GB', CAST(5.00 AS Decimal(8, 2)), N'Carreras', NULL, 18061, 524)
SET IDENTITY_INSERT [dbo].[Video Juegos] OFF
GO
ALTER TABLE [dbo].[Datos Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Datos Empleados_Empleados] FOREIGN KEY([Codigo de Empleado])
REFERENCES [dbo].[Empleados] ([Codigo de Empleado])
GO
ALTER TABLE [dbo].[Datos Empleados] CHECK CONSTRAINT [FK_Datos Empleados_Empleados]
GO
ALTER TABLE [dbo].[Deduciones]  WITH CHECK ADD  CONSTRAINT [FK_Deduciones_Empleados] FOREIGN KEY([Codigo Empleado])
REFERENCES [dbo].[Empleados] ([Codigo de Empleado])
GO
ALTER TABLE [dbo].[Deduciones] CHECK CONSTRAINT [FK_Deduciones_Empleados]
GO
ALTER TABLE [dbo].[Video Juegos]  WITH CHECK ADD  CONSTRAINT [FK_Video Juegos_Equipos] FOREIGN KEY([ConsolaID])
REFERENCES [dbo].[Equipos] ([ConsolaID])
GO
ALTER TABLE [dbo].[Video Juegos] CHECK CONSTRAINT [FK_Video Juegos_Equipos]
GO
USE [master]
GO
ALTER DATABASE [Game Art.] SET  READ_WRITE 
GO
