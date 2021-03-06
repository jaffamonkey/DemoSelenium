USE [master]
GO
/****** Object:  Database [DemoSelenium]    Script Date: 9/29/2020 11:46:25 AM ******/
CREATE DATABASE [DemoSelenium]
GO
ALTER DATABASE [DemoSelenium] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoSelenium].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoSelenium] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoSelenium] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoSelenium] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoSelenium] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoSelenium] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoSelenium] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoSelenium] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoSelenium] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoSelenium] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoSelenium] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoSelenium] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoSelenium] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoSelenium] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoSelenium] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoSelenium] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoSelenium] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoSelenium] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoSelenium] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoSelenium] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoSelenium] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoSelenium] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoSelenium] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoSelenium] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemoSelenium] SET  MULTI_USER 
GO
ALTER DATABASE [DemoSelenium] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoSelenium] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoSelenium] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoSelenium] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemoSelenium] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoSelenium] SET QUERY_STORE = OFF
GO
USE [DemoSelenium]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DemoSelenium]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 9/29/2020 11:46:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[Phone] [nvarchar](50) NULL,
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DemoSelenium] SET  READ_WRITE 
GO
