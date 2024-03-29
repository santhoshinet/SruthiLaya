USE [master]
GO
/****** Object:  Database [SruthiOrchestraDL]    Script Date: 11/04/2011 14:09:51 ******/
CREATE DATABASE [SruthiOrchestraDL] ON  PRIMARY 
( NAME = N'SruthiOrchestraDL', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\SruthiOrchestraDL.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SruthiOrchestraDL_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\SruthiOrchestraDL_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SruthiOrchestraDL] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SruthiOrchestraDL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SruthiOrchestraDL] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET ARITHABORT OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET AUTO_CLOSE ON
GO
ALTER DATABASE [SruthiOrchestraDL] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SruthiOrchestraDL] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SruthiOrchestraDL] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SruthiOrchestraDL] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET  ENABLE_BROKER
GO
ALTER DATABASE [SruthiOrchestraDL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SruthiOrchestraDL] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SruthiOrchestraDL] SET  READ_WRITE
GO
ALTER DATABASE [SruthiOrchestraDL] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SruthiOrchestraDL] SET  MULTI_USER
GO
ALTER DATABASE [SruthiOrchestraDL] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SruthiOrchestraDL] SET DB_CHAINING OFF
GO
USE [SruthiOrchestraDL]
GO
/****** Object:  Table [dbo].[voa_keygen]    Script Date: 11/04/2011 14:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[voa_keygen](
	[table_name] [varchar](64) NOT NULL,
	[last_used_id] [int] NOT NULL,
 CONSTRAINT [pk_voa_keygen] PRIMARY KEY CLUSTERED 
(
	[table_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fle]    Script Date: 11/04/2011 14:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fle](
	[fle_id] [int] NOT NULL,
	[<_filedata>k___backing_field] [image] NULL,
	[<_filename>k___backing_field] [varchar](255) NULL,
	[<_i_d>k___backing_field] [varchar](255) NULL,
	[<_mime_type>k___backing_field] [varchar](255) NULL,
	[voa_version] [smallint] NOT NULL,
 CONSTRAINT [pk_fle] PRIMARY KEY CLUSTERED 
(
	[fle_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[content_page]    Script Date: 11/04/2011 14:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[content_page](
	[content_page_id] [int] NOT NULL,
	[<_content>k___backing_field] [varchar](MAX) NULL,
	[<_i_d>k___backing_field] [varchar](255) NULL,
	[<_name>k___backing_field] [varchar](255) NULL,
	[voa_version] [smallint] NOT NULL,
 CONSTRAINT [pk_content_page] PRIMARY KEY CLUSTERED 
(
	[content_page_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
