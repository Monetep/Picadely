USE [master]
GO
/****** Object:  Database [Picadely]    Script Date: 1/11/2019 22:04:10 ******/
CREATE DATABASE [Picadely]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Picadely', FILENAME = N'C:\Users\germa\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Picadely.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Picadely_log', FILENAME = N'C:\Users\germa\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Picadely.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Picadely] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Picadely].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Picadely] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Picadely] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Picadely] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Picadely] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Picadely] SET ARITHABORT ON 
GO
ALTER DATABASE [Picadely] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Picadely] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Picadely] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Picadely] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Picadely] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Picadely] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Picadely] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Picadely] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Picadely] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Picadely] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Picadely] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Picadely] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Picadely] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Picadely] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Picadely] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Picadely] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Picadely] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Picadely] SET RECOVERY FULL 
GO
ALTER DATABASE [Picadely] SET  MULTI_USER 
GO
ALTER DATABASE [Picadely] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Picadely] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Picadely] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Picadely] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Picadely] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Picadely] SET QUERY_STORE = OFF
GO
USE [Picadely]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Picadely]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 1/11/2019 22:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_Id] [int] NULL,
	[Picada_Id] [int] NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 1/11/2019 22:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [nvarchar](50) NULL,
	[Fecha] [date] NULL,
	[Email] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Digito] [nvarchar](max) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picadas]    Script Date: 1/11/2019 22:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picadas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Comensales] [int] NULL,
 CONSTRAINT [PK_Picadas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 1/11/2019 22:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Direccion] [nvarchar](50) NULL,
	[Tipo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Compras] ON 

INSERT [dbo].[Compras] ([Id], [Usuario_Id], [Picada_Id]) VALUES (1, 2, 1)
INSERT [dbo].[Compras] ([Id], [Usuario_Id], [Picada_Id]) VALUES (2, 2, 5)
INSERT [dbo].[Compras] ([Id], [Usuario_Id], [Picada_Id]) VALUES (3, 2, 5)
INSERT [dbo].[Compras] ([Id], [Usuario_Id], [Picada_Id]) VALUES (4, 2, 2)
INSERT [dbo].[Compras] ([Id], [Usuario_Id], [Picada_Id]) VALUES (5, 3, 5)
INSERT [dbo].[Compras] ([Id], [Usuario_Id], [Picada_Id]) VALUES (6, 3, 4)
INSERT [dbo].[Compras] ([Id], [Usuario_Id], [Picada_Id]) VALUES (7, 2, 1)
SET IDENTITY_INSERT [dbo].[Compras] OFF
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (1, N'Informacion', CAST(N'2019-11-01' AS Date), N'juan@juan.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (2, N'Alerta', CAST(N'2019-11-01' AS Date), N'juan@juan.com', N'Intento de login fallido', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (3, N'Informacion', CAST(N'2019-11-01' AS Date), N'juan@juan.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (4, N'Informacion', CAST(N'2019-11-01' AS Date), N'juan@juan.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (5, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (6, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (7, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (8, N'Alerta', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Intento de login fallido', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (9, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (10, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (11, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (12, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (13, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (14, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Se realizo una compra de Picada Chica', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (15, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (16, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (17, N'Informacion', CAST(N'2019-11-01' AS Date), N'admin@admin.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (18, N'Informacion', CAST(N'2019-11-01' AS Date), N'admin@admin.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (19, N'Informacion', CAST(N'2019-11-01' AS Date), N'admin@admin.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (20, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (21, N'Informacion', CAST(N'2019-11-01' AS Date), N'admin@admin.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (22, N'Informacion', CAST(N'2019-11-01' AS Date), N'roberto@gomez.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (23, N'Informacion', CAST(N'2019-11-01' AS Date), N'roberto@gomez.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (24, N'Informacion', CAST(N'2019-11-01' AS Date), N'roberto@gomez.com', N'Se realizo una compra de Quesos Grandes', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (25, N'Informacion', CAST(N'2019-11-01' AS Date), N'roberto@gomez.com', N'Se realizo una compra de Quesos', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (26, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (27, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Se realizo una compra de Picada Grande', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (28, N'Informacion', CAST(N'2019-11-01' AS Date), N'web@web.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (29, N'Informacion', CAST(N'2019-11-01' AS Date), N'web@web.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (30, N'Informacion', CAST(N'2019-11-01' AS Date), N'web@web.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (31, N'Informacion', CAST(N'2019-11-01' AS Date), N'web@web.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (32, N'Informacion', CAST(N'2019-11-01' AS Date), N'cliente@cliente.com', N'Login de Usuario', NULL)
INSERT [dbo].[Logs] ([Id], [Tipo], [Fecha], [Email], [Descripcion], [Digito]) VALUES (33, N'Informacion', CAST(N'2019-11-01' AS Date), N'web@web.com', N'Login de Usuario', NULL)
SET IDENTITY_INSERT [dbo].[Logs] OFF
SET IDENTITY_INSERT [dbo].[Picadas] ON 

INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (1, N'Picada Grande', 10)
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (2, N'Picada Chica', 2)
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (3, N'Picada Mediana', 6)
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (4, N'Quesos', 3)
INSERT [dbo].[Picadas] ([Id], [Nombre], [Comensales]) VALUES (5, N'Quesos Grandes', 12)
SET IDENTITY_INSERT [dbo].[Picadas] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Tipo]) VALUES (1, N'Juan', N'Martinez', N'admin@admin.com', N'827CCB0EEA8A706C4C34A16891F84E7B', NULL, N'Admin')
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Tipo]) VALUES (2, N'Pepe', N'Gonzales', N'cliente@cliente.com', N'827CCB0EEA8A706C4C34A16891F84E7B', N'Riobamba 3120', N'Cliente')
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Tipo]) VALUES (3, N'Roberto', N'Gomez', N'roberto@gomez.com', N'827CCB0EEA8A706C4C34A16891F84E7B', N'Rivadavia 2310', N'Cliente')
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [Email], [Password], [Direccion], [Tipo]) VALUES (4, N'Web', N'Master', N'web@web.com', N'827CCB0EEA8A706C4C34A16891F84E7B', NULL, N'WebMaster')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Compra] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compra_Compra]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Picadas] FOREIGN KEY([Picada_Id])
REFERENCES [dbo].[Picadas] ([Id])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compra_Picadas]
GO
USE [master]
GO
ALTER DATABASE [Picadely] SET  READ_WRITE 
GO
