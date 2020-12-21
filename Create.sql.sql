USE [master]
GO
/****** Object:  Database [Game Art.]    Script Date: 12/22/2020 6:33:42 AM ******/
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
/****** Object:  Table [dbo].[Datos Empleados]    Script Date: 12/22/2020 6:33:43 AM ******/
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
/****** Object:  Table [dbo].[Deduciones]    Script Date: 12/22/2020 6:33:43 AM ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 12/22/2020 6:33:43 AM ******/
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
/****** Object:  Table [dbo].[Equipos]    Script Date: 12/22/2020 6:33:43 AM ******/
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
/****** Object:  Table [dbo].[Video Juegos]    Script Date: 12/22/2020 6:33:43 AM ******/
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
