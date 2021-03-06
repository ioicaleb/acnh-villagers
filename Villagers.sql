USE [master]
GO
/****** Object:  Database [villagers]    Script Date: 11/16/2021 8:52:59 PM ******/
CREATE DATABASE [villagers]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'villagers', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\villagers.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'villagers_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\villagers_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [villagers] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [villagers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [villagers] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [villagers] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [villagers] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [villagers] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [villagers] SET ARITHABORT OFF 
GO
ALTER DATABASE [villagers] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [villagers] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [villagers] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [villagers] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [villagers] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [villagers] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [villagers] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [villagers] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [villagers] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [villagers] SET  ENABLE_BROKER 
GO
ALTER DATABASE [villagers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [villagers] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [villagers] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [villagers] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [villagers] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [villagers] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [villagers] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [villagers] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [villagers] SET  MULTI_USER 
GO
ALTER DATABASE [villagers] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [villagers] SET DB_CHAINING OFF 
GO
ALTER DATABASE [villagers] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [villagers] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [villagers] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [villagers] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [villagers] SET QUERY_STORE = OFF
GO
USE [villagers]
GO
/****** Object:  Table [dbo].[color]    Script Date: 11/16/2021 8:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_color] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[style]    Script Date: 11/16/2021 8:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[style](
	[style_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_style] PRIMARY KEY CLUSTERED 
(
	[style_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[villager]    Script Date: 11/16/2021 8:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[villager](
	[name] [nvarchar](20) NOT NULL,
	[gender] [nvarchar](10) NOT NULL,
	[birthday] [nvarchar](20) NOT NULL,
	[catchphrase] [nvarchar](20) NOT NULL,
	[personality] [nvarchar](10) NOT NULL,
	[species] [nvarchar](20) NOT NULL,
	[style1] [nvarchar](20) NULL,
	[style2] [nvarchar](20) NULL,
	[color1] [nvarchar](20) NULL,
	[color2] [nvarchar](20) NULL,
 CONSTRAINT [PK_villager] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[villager_of_the_day]    Script Date: 11/16/2021 8:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[villager_of_the_day](
	[name] [nvarchar](20) NOT NULL,
	[picked] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[color] ON 

INSERT [dbo].[color] ([color_id], [name]) VALUES (1, N'Aqua')
INSERT [dbo].[color] ([color_id], [name]) VALUES (2, N'Beige')
INSERT [dbo].[color] ([color_id], [name]) VALUES (3, N'Black')
INSERT [dbo].[color] ([color_id], [name]) VALUES (4, N'Blue')
INSERT [dbo].[color] ([color_id], [name]) VALUES (5, N'Brown')
INSERT [dbo].[color] ([color_id], [name]) VALUES (6, N'Colorful')
INSERT [dbo].[color] ([color_id], [name]) VALUES (7, N'Gray')
INSERT [dbo].[color] ([color_id], [name]) VALUES (8, N'Green')
INSERT [dbo].[color] ([color_id], [name]) VALUES (9, N'Orange')
INSERT [dbo].[color] ([color_id], [name]) VALUES (10, N'Pink')
INSERT [dbo].[color] ([color_id], [name]) VALUES (11, N'Purple')
INSERT [dbo].[color] ([color_id], [name]) VALUES (12, N'Red')
INSERT [dbo].[color] ([color_id], [name]) VALUES (13, N'White')
INSERT [dbo].[color] ([color_id], [name]) VALUES (14, N'Yellow')
SET IDENTITY_INSERT [dbo].[color] OFF
GO
SET IDENTITY_INSERT [dbo].[style] ON 

INSERT [dbo].[style] ([style_id], [name]) VALUES (1, N'Active')
INSERT [dbo].[style] ([style_id], [name]) VALUES (2, N'Cool')
INSERT [dbo].[style] ([style_id], [name]) VALUES (3, N'Cute')
INSERT [dbo].[style] ([style_id], [name]) VALUES (4, N'Elegant')
INSERT [dbo].[style] ([style_id], [name]) VALUES (5, N'Gorgeous')
INSERT [dbo].[style] ([style_id], [name]) VALUES (6, N'Simple')
SET IDENTITY_INSERT [dbo].[style] OFF
GO
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ace', N'Male', N'August 11th', N'ace', N'Jock', N'Bird', N'Active', N'Cute', N'Aqua', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Admiral', N'Male', N'January 27th', N'aye aye', N'Cranky', N'Bird', N'Cool', N'None', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Agent S', N'Female', N'July 2nd', N'sidekick', N'Peppy', N'Squirrel', N'Active', N'Simple', N'Blue', N'Black')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Agnes', N'Female', N'April 21st', N'snuffle', N'Big Sister', N'Pig', N'Elegant', N'Simple', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Al', N'Male', N'October 18th', N'ayyyeee', N'Lazy', N'Gorilla', N'Active', N'None', N'Red', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Alfonso', N'Male', N'June 9th', N'it''sa me', N'Lazy', N'Alligator', N'Simple', N'None', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Alice', N'Female', N'August 19th', N'guvnor', N'Normal', N'Koala', N'Cute', N'None', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Alli', N'Female', N'November 8th', N'graaagh', N'Snooty', N'Alligator', N'Elegant', N'Gorgeous', N'Brown', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Amelia', N'Female', N'November 19th', N'cuz', N'Snooty', N'Bird', N'Cool', N'Elegant', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Anchovy', N'Male', N'March 4th', N'chuurp', N'Lazy', N'Bird', N'Simple', N'None', N'Colorful', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Angus', N'Male', N'April 30th', N'macmoo', N'Cranky', N'Cow', N'Cool', N'None', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Anicotti', N'Female', N'February 24th', N'cannoli', N'Peppy', N'Mouse', N'Elegant', N'Simple', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ankha', N'Female', N'September 22nd', N'me meow', N'Snooty', N'Cat', N'Gorgeous', N'Simple', N'Brown', N'Colorful')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Annabelle', N'Female', N'February 16th', N'snorty', N'Peppy', N'Anteater', N'Cute', N'Simple', N'Blue', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Annalisa', N'Female', N'February 6th', N'gumdrop', N'Normal', N'Anteater', N'Elegant', N'Gorgeous', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Annalise', N'Female', N'December 2nd', N'nipper', N'Normal', N'Horse', N'Active', N'Elegant', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Antonio', N'Male', N'October 20th', N'honk', N'Jock', N'Anteater', N'Simple', N'None', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Apollo', N'Male', N'July 4th', N'pah', N'Cranky', N'Eagle', N'Cool', N'Simple', N'Black', N'None')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Apple', N'Female', N'September 24th', N'cheekers', N'Peppy', N'Hamster', N'Cute', N'Simple', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Astrid', N'Female', N'September 8th', N'my pet', N'Snooty', N'Kangaroo', N'Active', N'Cool', N'Black', N'Colorful')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Audie', N'Female', N'August 31st', N'foxtrot', N'Peppy', N'Wolf', N'Active', N'Cute', N'Green', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Aurora', N'Female', N'January 27th', N'b-b-baby', N'Normal', N'Penguin', N'Cute', N'Elegant', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ava', N'Female', N'April 28th', N'beaker', N'Normal', N'Chicken', N'Cute', N'Elegant', N'Gray', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Avery', N'Male', N'February 22nd', N'skreehaw', N'Cranky', N'Eagle', N'Gorgeous', N'Simple', N'Brown', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Axel', N'Male', N'March 23rd', N'WHONK', N'Jock', N'Elephant', N'Active', N'Simple', N'Green', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Azalea', N'Female', N'December 18th', N'merci', N'Snooty', N'Rhinoceros', N'Elegant', N'Gorgeous', N'Purple', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Baabara', N'Female', N'March 28th', N'daahling', N'Snooty', N'Sheep', N'Elegant', N'Gorgeous', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bam', N'Male', N'November 7th', N'kablang', N'Jock', N'Deer', N'Active', N'Simple', N'Brown', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bangle', N'Female', N'August 27th', N'growf', N'Peppy', N'Tiger', N'Cute', N'Gorgeous', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Barold', N'Male', N'March 2', N'cubby', N'Lazy', N'Bear Cub', N'Cool', N'Simple', N'Black', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bea', N'Female', N'October 15th', N'bingo', N'Normal', N'Dog', N'Cool', N'Simple', N'Aqua', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Beardo', N'Male', N'September 27th', N'whiskers', N'Smug', N'Bear', N'Elegant', N'None', N'Blue', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Beau', N'Male', N'April 5th', N'saltlick', N'Lazy', N'Deer', N'Cute', N'SImple', N'Beige', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Becky', N'Female', N'December 9th', N'chicklet', N'Snooty', N'Chicken', N'Elegant', N'Gorgeous', N'Pink', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bella', N'Female', N'December 28th', N'eeks', N'Peppy', N'Mouse', N'Active', N'Cool', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Benedict', N'Male', N'October 10th', N'uh-hoo', N'Lazy', N'Chicken', N'Simple', N'None', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Benjamin', N'Male', N'August 3rd', N'alrighty', N'Lazy', N'Dog', N'Simple', N'None', N'Red', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bertha', N'Female', N'April 25th', N'bloop', N'Normal', N'Hippo', N'Cute', N'Elegant', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bettina', N'Female', N'June 12th', N'eekers', N'Normal', N'Mouse', N'Elegant', N'Simple', N'Red', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bianca', N'Female', N'December 13th', N'glimmer', N'Peppy', N'Tiger', N'Cute', N'None', N'Orange', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Biff', N'Male', N'March 29th', N'squirt', N'Jock', N'Hippo', N'Active', N'Gorgeous', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Big Top', N'Male', N'October 3rd', N'villain', N'Lazy', N'Elephant', N'Active', N'Simple', N'Green', N'None')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bill', N'Male', N'February 1st', N'quacko', N'Jock', N'Duck', N'Active', N'None', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Billy', N'Male', N'March 25th', N'dagnaabit', N'Jock', N'Goat', N'Active', N'Simple', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Biskit', N'Male', N'May 13th', N'dawg', N'Lazy', N'Dog', N'Gorgeous', N'Simple', N'Colorful', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bitty', N'Female', N'October 6th', N'my dear', N'Snooty', N'Hippo', N'Cute', N'Elegant', N'Orange', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Blaire', N'Female', N'July 3rd', N'nutlet', N'Snooty', N'Squirrel', N'Elegant', N'Gorgeous', N'Brown', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Blanche', N'Female', N'December 21st', N'quite so', N'Snooty', N'Ostrich', N'Elegant', N'Gorgeous', N'Black', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bluebear', N'Female', N'June 24th', N'peach', N'Peppy', N'Bear Cub', N'Cute', N'Simple', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bob', N'Male', N'January 1st', N'pthhpth', N'Lazy', N'Cat', N'Cute', N'Simple', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bonbon', N'Female', N'March 3rd', N'deelish', N'Peppy', N'Rabbit', N'Cute', N'Elegant', N'Aqua', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bones', N'Male', N'August 4th', N'yip yip', N'Lazy', N'Dog', N'Cute', N'Simple', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Boomer', N'Male', N'February 7th', N'human', N'Lazy', N'Penguin', N'Cool', N'Simple', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Boone', N'Male', N'September 12th', N'baboom', N'Jock', N'Gorilla', N'Cool', N'Elegant', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Boots', N'Male', N'August 7th', N'munchie', N'Jock', N'Alligator', N'Active', N'Gorgeous', N'Colorful', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Boris', N'Male', N'November 6th', N'schnort', N'Cranky', N'Pig', N'Cool', N'Gorgeous', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Boyd', N'Male', N'October 1st', N'uh-oh', N'Cranky', N'Gorilla', N'Cool', N'Simple', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bree', N'Female', N'July 7th', N'cheeseball', N'Snooty', N'Mouse', N'Elegant', N'Gorgeous', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Broccolo', N'Male', N'June 30th', N'eat it', N'Lazy', N'Mouse', N'Cute', N'Simple', N'Colorful', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Broffina', N'Female', N'October 24th', N'cluckadoo', N'Snooty', N'Chicken', N'Elegant', N'Gorgeous', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bruce', N'Male', N'May 26th', N'gruff', N'Cranky', N'Deer', N'Cool', N'Simple', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bubbles', N'Female', N'September 18', N'hipster', N'Peppy', N'Hippo', N'Active', N'Cute', N'Pink', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Buck', N'Male', N'April 4th', N'pardner', N'Jock', N'Horse', N'Active', N'Simple', N'Brown', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bud', N'Male', N'August 8th', N'shredded', N'Jock', N'Lion', N'Active', N'Simple', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Bunnie', N'Female', N'May 9th', N'tee-hee', N'Peppy', N'Rabbit', N'Cute', N'None', N'Green', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Butch', N'Male', N'November 1st', N'ROOOOOWF', N'Cranky', N'Dog', N'Cool', N'Simple', N'Blue', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Buzz', N'Male', N'December 7th', N'captain', N'Cranky', N'Eagle', N'Active', N'Simple', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cally', N'Female', N'September 4th', N'WHEE', N'Normal', N'Squirrel', N'Cute', N'Elegant', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Camofrog', N'Male', N'June 5th', N'ten-hut', N'Cranky', N'Frog', N'Active', N'Cool', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Canberra', N'Female', N'May 14th', N'nuh uh', N'Big Sister', N'Koala', N'Active', N'Cool', N'Green', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Candi', N'Female', N'April 13th', N'sweetie', N'Peppy', N'Mouse', N'Cute', N'Simple', N'Aqua', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Carmen', N'Female', N'January 6th', N'nougat', N'Peppy', N'Rabbit', N'Cute', N'Elegant', N'Beige', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Caroline', N'Female', N'July 15th', N'hulaaaa', N'Normal', N'Squirrel', N'Cute', N'Gorgeous', N'Colorful', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Carrie', N'Female', N'December 5th', N'little one', N'Normal', N'Kangaroo', N'Cute', N'None', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cashmere', N'Female', N'April 2nd', N'baaaby', N'Snooty', N'Sheep', N'Elegant', N'Gorgeous', N'Beige', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Celia', N'Female', N'March 25th', N'feathers', N'Normal', N'Eagle', N'Cute', N'Elegant', N'Green', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cephalobot', N'Male', N'April 1st', N'donk donk', N'Smug', N'Octopus', N'Simple', N'Active', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cesar', N'Male', N'September 6th', N'highness', N'Cranky', N'Gorilla', N'Cool', N'Elegant', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chabwick', N'Male', N'December 24th', N'blargh', N'Lazy', N'Penguin', N'Cute', N'Active', N'Yellow', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chadder', N'Male', N'December 15th', N'fromage', N'Smug', N'Mouse', N'Elegant', N'Gorgeous', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chai', N'Female', N'March 6th', N'flap flap', N'Peppy', N'Elephant', N'Cute', N'Elegant', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Charlise', N'Female', N'April 17th', N'urgh', N'Big Sister', N'Bear', N'Active', N'Cute', N'Orange', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chelsea', N'Female', N'January 18th', N'pound cake', N'Normal', N'Deer', N'Cute', N'Gorgeous', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cheri', N'Female', N'March 17th', N'tralala', N'Peppy', N'Bear Cub', N'Cute', N'Simple', N'Aqua', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cherry', N'Female', N'May 11th', N'what what', N'Big Sister', N'Dog', N'Cool', N'Elegant', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chester', N'Male', N'August 6th', N'rookie', N'Lazy', N'Bear Cub', N'Simple', N'None', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chevre', N'Female', N'March 6th', N'la baa', N'Normal', N'Goat', N'Cute', N'Elegant', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chief', N'Male', N'December 19th', N'harrumph', N'Cranky', N'Wolf', N'Cool', N'Simple', N'Gray', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chops', N'Male', N'October 13th', N'zoink', N'Smug', N'Pig', N'Elegant', N'Gorgeous', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chow', N'Male', N'July 22nd', N'aiya', N'Cranky', N'Bear', N'Cool', N'Gorgeous', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Chrissy', N'Female', N'August 28th', N'', N'Peppy', N'Rabbit', N'Cute', N'None', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Claude', N'Male', N'December 3rd', N'', N'Lazy', N'Rabbit', N'Simple', N'None', N'Black', N'Colorful')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Claudia', N'Female', N'November 22nd', N'', N'Snooty', N'Tiger', N'Elegant', N'Gorgeous', N'Purple', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Clay', N'Male', N'October 19th', N'thump', N'Lazy', N'Hamster', N'Elegant', N'Simple', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cleo', N'Female', N'February 9th', N'sugar', N'Snooty', N'Horse', N'Cute', N'Elegant', N'Aqua', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Clyde', N'Male', N'May 1st', N'clip clawp', N'Lazy', N'Horse', N'Cute', N'Simple', N'Green', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Coach', N'Male', N'April 29th', N'stubble', N'Jock', N'Bull', N'Active', N'None', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cobb', N'Male', N'October 7th', N'hot dog', N'Jock', N'Pig', N'Active', N'Simple', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Coco', N'Female', N'March 1st', N'doyoing', N'Normal', N'Rabbit', N'Cute', N'Simple', N'Beige', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cole', N'Male', N'August 10th', N'coooooool', N'Lazy', N'Rabbit', N'Cute', N'Simple', N'Colorful', N'Simple')
GO
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Colton', N'Male', N'May 22nd', N'check it', N'Smug', N'Horse', N'Elegant', N'Gorgeous', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cookie', N'Female', N'June 18th', N'arfer', N'Peppy', N'Dog', N'Cute', N'None', N'Green', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cousteau', N'Male', N'December 17th', N'oui oui', N'Jock', N'Frog', N'Elegant', N'Gorgeous', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cranston', N'Male', N'September 23rd', N'sweatband', N'Lazy', N'Ostrich', N'Cool', N'Simple', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Croque', N'Male', N'July 18th', N'as if', N'Cranky', N'Frog', N'Cool', N'Elegant', N'Orange', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cube', N'Male', N'January 29th', N'brainfreeze', N'Lazy', N'Penguin', N'Cute', N'Simple', N'Colorful', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Curlos', N'Male', N'May 8th', N'shearly', N'Smug', N'Sheep', N'Active', N'Gorgeous', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Curly', N'Male', N'July 26th', N'nyoink', N'Jock', N'Pig', N'Active', N'Simple', N'Colorful', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Curt', N'Male', N'July 1st', N'fuzzball', N'Cranky', N'Bear', N'Cool', N'None', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cyd', N'Male', N'June 9th', N'rockin''', N'Cranky', N'Elephant', N'Active', N'Cool', N'Black', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Cyrano', N'Male', N'March 9th', N'ah-CHOO', N'Cranky', N'Anteater', N'Active', N'Cool', N'Beige', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Daisy', N'Female', N'November 16th', N'bow-WOW', N'Normal', N'Dog', N'Cute', N'Simple', N'Blue', N'Colorful')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Deena', N'Female', N'June 27th', N'woowoo', N'Normal', N'Duck', N'Cute', N'Simple', N'Blue', N'Colorful')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Deirdre', N'Female', N'May 4th', N'whatevs', N'Big Sister', N'Deer', N'Simple', N'None', N'Orange', N'None')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Del', N'Male', N'May 27th', N'gronk', N'Cranky', N'Alligator', N'Cool', N'Simple', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Deli', N'Male', N'May 24th', N'monch', N'Lazy', N'Monkey', N'Elegant', N'Gorgeous', N'Brown', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Derwin', N'Male', N'May 25th', N'derrrr', N'Lazy', N'Duck', N'Elegant', N'Simple', N'Beige', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Diana', N'Female', N'January 4th', N'no doy', N'Snooty', N'Deer', N'Elegant', N'Gorgeous', N'Pink', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Diva', N'Female', N'October 2nd', N'ya know', N'Big Sister', N'Frog', N'Elegant', N'Gorgeous', N'Aqua', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Dizzy', N'Male', N'July 14th', N'woo-oo', N'Lazy', N'Elephant', N'Simple', N'None', N'Blue', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Dobie', N'Male', N'February 17th', N'ohmmm', N'Cranky', N'Wolf', N'Cool', N'Simple', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Doc', N'Male', N'March 16th', N'old bunny', N'Lazy', N'Rabbit', N'Elegant', N'Simple', N'Beige', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Dom', N'Male', N'March 18th', N'indeedaroo', N'Jock', N'Sheep', N'Active', N'Cute', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Dora', N'Female', N'February 18th', N'squeaky', N'Normal', N'Mouse', N'Elegant', N'Simple', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Dotty', N'Female', N'March 14th', N'wee one', N'Peppy', N'Rabbit', N'Cute', N'Simple', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Drago', N'Male', N'February 12th', N'burrrn', N'Lazy', N'Alligator', N'Elegant', N'Gorgeous', N'Orange', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Drake', N'Male', N'June 25th', N'quacko', N'Lazy', N'Duck', N'Cool', N'Simple', N'Brown', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Drift', N'Male', N'October 9th', N'dribbit', N'Jock', N'Frog', N'Active', N'Simple', N'Orange', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ed', N'Male', N'September 16th', N'greenhorn', N'Smug', N'Horse', N'Elegant', N'Gorgeous', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Egbert', N'Male', N'October 14th', N'doodle-duh', N'Lazy', N'Chicken', N'Simple', N'None', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Elise', N'Male', N'March 21st', N'puh-lease', N'Snooty', N'Monkey', N'Elegant', N'Gorgeous', N'Purple', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ellie', N'Female', N'May 12th', N'li''l one', N'Normal', N'Elephant', N'Cute', N'Simple', N'Gray', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Elmer', N'Male', N'October 5th', N'tenderfoot', N'Lazy', N'Horse', N'Cool', N'Simple', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Eloise', N'Female', N'December 8th', N'tooooot', N'Snooty', N'Elephant', N'Elegant', N'Simple', N'Green', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Elvis', N'Male', N'July 23rd', N'unh-hunh', N'Cranky', N'Lion', N'Elegant', N'Gorgeous', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Erik', N'Male', N'July 27th', N'chow down', N'Lazy', N'Deer', N'Simple', N'None', N'Beige', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Etoile', N'Female', N'December 25th', N'fuzzy', N'Normal', N'Sheep', N'Cute', N'Gorgeous', N'Aqua', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Eugene', N'Male', N'October 26th', N'yeah buddy', N'Smug', N'Koala', N'Cool', N'Gorgeous', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Eunice', N'Female', N'March 21st', N'lambchop', N'Normal', N'Sheep', N'Elegant', N'Simple', N'Beige', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Faith', N'Female', N'March 21st', N'aloha', N'Big Sister', N'Koala', N'Elegant', N'Gorgeous', N'Red', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Fang', N'Male', N'December 18th', N'cha-chomp', N'Cranky', N'Wolf', N'Cool', N'Simple', N'Aqua', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Fauna', N'Female', N'March 26th', N'dearie', N'Normal', N'Deer', N'Cute', N'Simple', N'Beige', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Felicity', N'Female', N'March 30th', N'mimimi', N'Peppy', N'Cat', N'Cute', N'None', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Filbert', N'Male', N'June 3rd', N'bucko', N'Lazy', N'Squirrel', N'Simple', N'Cute', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Flip', N'Male', N'November 21st', N'rerack', N'Jock', N'Monkey', N'Active', N'Simple', N'Blue', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Flo', N'Female', N'September 2nd', N'cha', N'Big Sister', N'Penguin', N'Cool', N'Gorgeous', N'Purple', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Flora', N'Female', N'February 9th', N'pinky', N'Peppy', N'Ostrich', N'Active', N'Cute', N'Colorful', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Flurry', N'Female', N'January 30th', N'powderpuff', N'Normal', N'Hamster', N'Cute', N'Elegant', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Francine', N'Female', N'January 22nd', N'karat', N'Snooty', N'Rabbit', N'Elegant', N'Gorgeous', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Frank', N'Male', N'July 30th', N'crushy', N'Cranky', N'Eagle', N'Cool', N'Gorgeous', N'Brown', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Freckles', N'Female', N'February 19th', N'ducky', N'Peppy', N'Duck', N'Cute', N'Simple', N'Colorful', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Frett', N'Male', N'October 30th', N'goshers', N'Cranky', N'Dog', N'Cool', N'Active', N'Gray', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Freya', N'Female', N'December 14th', N'uff da', N'Snooty', N'Wolf', N'Cool', N'Elegant', N'Blue', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Friga', N'Female', N'October 16th', N'brrrmph', N'Snooty', N'Penguin', N'Elegant', N'Gorgeous', N'Black', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Frita', N'Female', N'July 16th', N'oh ewe', N'Big Sister', N'Sheep', N'Active', N'Cute', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Frobert', N'Male', N'February 8th', N'fribbit', N'Jock', N'Frog', N'Active', N'Simple', N'Blue', N'Colorful')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Fuchsia', N'Female', N'September 19th', N'precious', N'Big Sister', N'Deer', N'Cool', N'None', N'Pink', N'None')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gabi', N'Female', N'December 16th', N'honeybun', N'Peppy', N'Rabbit', N'Cute', N'Gorgeous', N'Brown', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gala', N'Female', N'March 5th', N'snortie', N'Normal', N'Pig', N'Cute', N'Elegant', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gaston', N'Male', N'October 28th', N'mon chou', N'Cranky', N'Rabbit', N'Gorgeous', N'Simple', N'Brown', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gayle', N'Female', N'May 17th', N'snacky', N'Normal', N'Alligator', N'Cute', N'None', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Genji', N'Male', N'January 21st', N'mochi', N'Jock', N'Rabbit', N'Elegant', N'Simple', N'Green', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gigi', N'Female', N'August 11th', N'ribbette', N'Snooty', N'Frog', N'Elegant', N'Gorgeous', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gladys', N'Female', N'January 15th', N'stretch', N'Normal', N'Ostrich', N'Cute', N'Elegant', N'Green', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gloria', N'Female', N'August 12th', N'quacker', N'Snooty', N'Duck', N'Elegant', N'Gorgeous', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Goldie', N'Female', N'December 27th', N'woof', N'Normal', N'Dog', N'Cute', N'Simple', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gonzo', N'Male', N'October 13th', N'mate', N'Cranky', N'Koala', N'Cool', N'Simple', N'Black', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Goose', N'Male', N'October 4th', N'buh-kay', N'Jock', N'Chicken', N'Active', N'Simple', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Graham', N'Male', N'June 20th', N'indeed', N'Smug', N'Hamster', N'Cool', N'Simple', N'Green', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Greta', N'Female', N'September 5th', N'yelp', N'Snooty', N'Mouse', N'Elegant', N'Simple', N'Pink', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Grizzly', N'Male', N'July 31st', N'grrr', N'Cranky', N'Bear', N'Cool', N'Simple', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Groucho', N'Male', N'OCtober 23rd', N'grumble', N'Cranky', N'Bear', N'Cool', N'Simple', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gruff', N'Male', N'August 29th', N'bleh eh eh', N'Cranky', N'Goat', N'Cool', N'Gorgeous', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Gwen', N'Female', N'January 23rd', N'h-h-h-hon', N'Snooty', N'Penguin', N'Elegant', N'Gorgeous', N'Green', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hamlet', N'Male', N'May 30th', N'hammie', N'Jock', N'Hamster', N'Active', N'Simple', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hamphrey', N'Male', N'February 25th', N'snort', N'Cranky', N'Hamster', N'Cool', N'Simple', N'Beige', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hans', N'Male', N'December 5th', N'groovy', N'Smug', N'Gorilla', N'Elegant', N'Gorgeous', N'Blue', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Harry', N'Male', N'January 7th', N'beach bum', N'Cranky', N'Hippo', N'Cool', N'Simple', N'Green', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hazel', N'Female', N'August 30th', N'uni-wow', N'Big Sister', N'Squirrel', N'Active', N'Cute', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Henry', N'Male', N'September 21st', N'snoozit', N'Smug', N'Frog', N'Cool', N'Simple', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hippeux', N'Male', N'October 15th', N'natch', N'Smug', N'Hippo', N'Elegant', N'Gorgeous', N'Brown', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hopkins', N'Male', N'March 11th', N'thumper', N'Lazy', N'Rabbit', N'Active', N'Simple', N'Blue', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hopper', N'Male', N'April 6th', N'slushie', N'Cranky', N'Penguin', N'Cool', N'Simple', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hornsby', N'Male', N'March 20th', N'schnozzle', N'Lazy', N'Rhinoceros', N'Simple', N'None', N'Brown', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Huck', N'Male', N'July 9th', N'hopper', N'Smug', N'Frog', N'Cool', N'Simple', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Hugh', N'Male', N'December 30th', N'snortle', N'Lazy', N'Pig', N'Active', N'Simple', N'Beige', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Iggly', N'Male', N'November 2nd', N'waddler', N'Jock', N'Penguin', N'Active', N'Simple', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ike', N'Male', N'May 16th', N'roadie', N'Cranky', N'Bear', N'Cool', N'None', N'Blue', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ione', N'Female', N'September 11th', N'gleam', N'Normal', N'Squirrel', N'Cool', N'Cute', N'White', N'Black')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Jacob', N'Male', N'August 24th', N'ya feel', N'Lazy', N'Bird', N'Simple', N'None', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Jacques', N'Male', N'June 22nd', N'zut alors', N'Smug', N'Bird', N'Cool', N'Simple', N'Green', N'Black')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Jambette', N'Female', N'October 27th', N'croak-kay', N'Normal', N'Frog', N'Cool', N'None', N'Brown', N'None')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Jay', N'Male', N'July 17th', N'heeeeeyy', N'Jock', N'Bird', N'Active', N'None', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Jeremiah', N'Male', N'July 8th', N'nee-deep', N'Lazy', N'Frog', N'Simple', N'None', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Jitters', N'Male', N'February 2nd', N'bzzert', N'Jock', N'Bird', N'Active', N'None', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Joey', N'Male', N'January 3rd', N'bleeeeeck', N'Lazy', N'Duck', N'Simple', N'None', N'Blue', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Judy', N'Female', N'March 10th', N'myohmy', N'Snooty', N'Cub', N'Cute', N'Elegant', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Julia', N'Female', N'July 31st', N'dahling', N'Snooty', N'Ostrich', N'Elegant', N'Gorgeous', N'Purple', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Julian', N'Male', N'March 15th', N'glitter', N'Smug', N'Horse', N'Cool', N'Gorgeous', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'June', N'Female', N'May 21st', N'rainbow', N'Normal', N'Bear Cub', N'Cute', N'Simple', N'Red', N'White')
GO
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kabuki', N'Male', N'November 29th', N'meooo-OH', N'Cranky', N'Cat', N'Simple', N'None', N'Purple', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Katt', N'Female', N'April 27th', N'purrty', N'Big Sister', N'Cat', N'Cool', N'None', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Keaton', N'Male', N'June 1st', N'wingo', N'Smug', N'Eagle', N'Cool', N'Gorgeous', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ken', N'Male', N'December 23rd', N'no doubt', N'Smug', N'Chicken', N'Cool', N'Simple', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ketchup', N'Female', N'July 27th', N'bitty', N'Peppy', N'Duck', N'Cute', N'None', N'Aqua', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kevin', N'Male', N'April 26th', N'weeweewee', N'Jock', N'Pig', N'Active', N'Simple', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kid Cat', N'Male', N'August 1st', N'psst', N'Jock', N'Cat', N'Active', N'Simple', N'Red', N'None')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kidd', N'Male', N'June 18th', N'wut', N'Smug', N'Goat', N'Cool', N'Elegant', N'Gray', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kiki', N'Female', N'October 8th', N'kitty cat', N'Normal', N'Cat', N'Simple', N'None', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kitt', N'Female', N'October 11th', N'child', N'Normal', N'Kangaroo', N'Elegant', N'Simple', N'Purple', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kitty', N'Female', N'February 15th', N'mrowrr', N'Snooty', N'Cat', N'Elegant', N'Gorgeous', N'Gray', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Klaus', N'Male', N'March 31st', N'strudel', N'Smug', N'Bear', N'Simple', N'None', N'Gray', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Knox', N'Male', N'November 23rd', N'cluckling', N'Cranky', N'Chicken', N'Elegant', N'Gorgeous', N'Brown', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kody', N'Male', N'September 28th', N'grah grah', N'Jock', N'Bear Cub', N'Active', N'Simple', N'Colorful', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Kyle', N'Male', N'December 6th', N'alpha', N'Smug', N'Wolf', N'Cool', N'Gorgeous', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Leonardo', N'Male', N'May 15th', N'flexin''', N'Jock', N'Tiger', N'Active', N'Gorgeous', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Leopold', N'Male', N'August 14th', N'lion cub', N'Smug', N'Lion', N'Elegant', N'Gorgeous', N'Green', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lily', N'Female', N'February 4th', N'toady', N'Normal', N'Frog', N'Cute', N'Simple', N'Yellow', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Limberg', N'Male', N'October 17th', N'squinky', N'Cranky', N'Mouse', N'Cool', N'Simple', N'Blue', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lionel', N'Male', N'July 29th', N'precisely', N'Smug', N'Lion', N'Active', N'Gorgeous', N'Gray', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lobo', N'Male', N'November 5th', N'ah-rooooo', N'Cranky', N'Wolf', N'Active', N'Cool', N'Beige', N'Black')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lolly', N'Female', N'March 27th', N'bonbon', N'Normal', N'Cat', N'Simple', N'None', N'Gray', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lopez', N'Male', N'August 20th', N'badoom', N'Smug', N'Deer', N'Gorgeous', N'None', N'Gray', N'None')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Louie', N'Male', N'March 26th', N'hoo hoo ha', N'Jock', N'Gorilla', N'Active', N'Simple', N'Gray', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lucha', N'Male', N'December 12th', N'cacaw', N'Smug', N'Bird', N'Active', N'Cool', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lucky', N'Male', N'November 4th', N'rrr-owch', N'Lazy', N'Dog', N'Simple', N'None', N'Beige', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lucy', N'Female', N'June 2nd', N'snoooink', N'Normal', N'Pig', N'Cute', N'Elegant', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Lyman', N'Male', N'October 12th', N'chips', N'Jock', N'Koala', N'Active', N'Simple', N'Aqua', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Mac', N'Male', N'November 11th', N'woo woof', N'Jock', N'Dog', N'Active', N'Cool', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Maddie', N'Female', N'January 11th', N'yippee', N'Peppy', N'Dog', N'Cute', N'Simple', N'Pink', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Maelle', N'Female', N'April 8th', N'duckling', N'Snooty', N'Duck', N'Cool', N'Simple', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Maggie', N'Female', N'September 3rd', N'schlep', N'Normal', N'Pig', N'Cute', N'Elegant', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Mallary', N'Female', N'November 17th', N'quckpth', N'Snooty', N'Duck', N'Cool', N'Gorgeous', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Maple', N'Female', N'June 15th', N'honey', N'Normal', N'Bear Cub', N'Cute', N'Simple', N'Beige', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Marcel', N'Male', N'December 31st', N'non', N'Lazy', N'Dog', N'Cool', N'Simple', N'Blue', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Marcie', N'Female', N'May 31st', N'pouches', N'Normal', N'Kangaroo', N'Cute', N'Elegant', N'Beige', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Margie', N'Female', N'January 28th', N'tootie', N'Normal', N'Elephant', N'Cute', N'Elegant', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Marina', N'Female', N'June 26th', N'blurb', N'Normal', N'Octopus', N'Cute', N'None', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Marlo', N'Male', N'June 26th', N'gabeesh', N'Cranky', N'Hamster', N'Cool', N'Gorgeous', N'Black', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Marshal', N'Male', N'September 29th', N'sulky', N'Smug', N'Squirrel', N'Cool', N'Elegant', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Marty', N'Male', N'April 16th', N'pompom', N'Lazy', N'Bear Cub', N'Cute', N'Elegant', N'Brown', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Mathilda', N'Female', N'November 12th', N'wee baby', N'Snooty', N'Kangaroo', N'Cool', N'Gorgeous', N'Red', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Megan', N'Female', N'March 13th', N'sundae', N'Normal', N'Bear', N'Cute', N'Simple', N'Aqua', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Melba', N'Female', N'April 12th', N'toasty', N'Normal', N'Koala', N'Cute', N'None', N'Green', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Merengue', N'Female', N'March 19th', N'shortcake', N'Normal', N'Rhinoceros', N'Cute', N'Simple', N'Red', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Merry', N'Female', N'June 29th', N'mweee', N'Peppy', N'Cat', N'Cute', N'None', N'Aqua', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Midge', N'Female', N'March 12th', N'tweedledee', N'Normal', N'Bird', N'Cute', N'Simple', N'Pink', N'None')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Mint', N'Female', N'May 2nd', N'ahhhhhh', N'Snooty', N'Squirrel', N'Cute', N'Gorgeous', N'Pink', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Mira', N'Female', N'July 6th', N'cottontail', N'Big Sister', N'Rabbit', N'Active', N'Cool', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Miranda', N'Female', N'April 23rd', N'quackulous', N'Snooty', N'Duck', N'Elegant', N'Gorgeous', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Mitzi', N'Female', N'September 25th', N'mew', N'Normal', N'Cat', N'Simple', N'None', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Moe', N'Male', N'January 12th', N'myawn', N'Lazy', N'Cat', N'Active', N'Simple', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Molly', N'Female', N'March 7th', N'quackidee', N'Normal', N'Duck', N'Cute', N'Simple', N'Pink', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Monique', N'Female', N'September 30th', N'pffffft', N'Snooty', N'Cat', N'Elegant', N'Gorgeous', N'Pink', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Monty', N'Male', N'December 7th', N'g''tang', N'Cranky', N'Monkey', N'Cool', N'None', N'Gray', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Moose', N'Male', N'September 13th', N'shorty', N'Jock', N'Mouse', N'Cool', N'Gorgeous', N'Purple', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Mott', N'Male', N'July 10th', N'cagey', N'Jock', N'Lion', N'Active', N'Elegant', N'Blue', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Muffy', N'Female', N'February 14th', N'nightshade', N'Big Sister', N'Sheep', N'Elegant', N'Gorgeous', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Murphy', N'Male', N'', N'malarkey', N'Cranky', N'Bear Cub', N'Cool', N'Simple', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Nan', N'Female', N'August 24th', N'kid', N'Normal', N'Goat', N'Elegant', N'Simple', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Nana', N'Female', N'August 23rd', N'po po', N'Normal', N'Monkey', N'Cute', N'None', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Naomi', N'Female', N'February 28th', N'moolah', N'Snooty', N'Cow', N'Elegant', N'Gorgeous', N'Colorful', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Nate', N'Male', N'August 16th', N'yawwwn', N'Lazy', N'Bear', N'Simple', N'None', N'Green', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Nibbles', N'Male', N'July 19th', N'niblet', N'Peppy', N'Squirrel', N'Active', N'Cute', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Norma', N'Female', N'September 20th', N'hoof hoo', N'Normal', N'Cow', N'Cute', N'Simple', N'Aqua', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Octavian', N'Male', N'September 20th', N'sucker', N'Cranky', N'Octopus', N'Cool', N'Simple', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'O''Hare', N'Male', N'July 24th', N'amigo', N'Smug', N'Rabbit', N'Active', N'Cool', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Olaf', N'Male', N'May 19th', N'whiffa', N'Smug', N'Anteater', N'Elegant', N'Gorgeous', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Olive', N'Female', N'July 12th', N'sweet pea', N'Normal', N'Bear Cub', N'Simple', N'None', N'Brown', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Olivia', N'Female', N'February 3rd', N'purrr', N'Snooty', N'Cat', N'Cool', N'Elegant', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Opal', N'Female', N'January 20th', N'snoot', N'Snooty', N'Elephant', N'Cool', N'Elegant', N'Black', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ozzie', N'Male', N'May 7th', N'ol'' bear', N'Lazy', N'Koala', N'Cute', N'Simple', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pancetti', N'Female', N'November 14th', N'sooey', N'Snooty', N'Pig', N'Cute', N'Gorgeous', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pango', N'Male', N'November 9th', N'snooooof', N'Peppy', N'Anteater', N'Cool', N'Elegant', N'Orange', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Paolo', N'Male', N'May 5th', N'pal', N'Lazy', N'Elephant', N'Elegant', N'Simple', N'Gray', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Papi', N'Male', N'January 10th', N'haaay', N'Lazy', N'Horse', N'Simple', N'None', N'Aqua', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pashmina', N'Female', N'December 26th', N'kidders', N'Big Sister', N'Goat', N'Cool', N'Elegant', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pate', N'Female', N'February 23rd', N'quackie', N'Peppy', N'Duck', N'Cute', N'Simple', N'Yellow', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Patty', N'Female', N'May 10th', N'how-now', N'Peppy', N'Cow', N'Cute', N'Simple', N'Orange', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Paula', N'Female', N'March 22nd', N'yodelay', N'Big Sister', N'Bear', N'Active', N'Cute', N'Green', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Peaches', N'Female', N'November 28th', N'neighbor', N'Normal', N'Horse', N'Cute', N'Simple', N'Colorful', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Peanut', N'Female', N'June 8th', N'slacker', N'Peppy', N'Squirrel', N'Cute', N'None', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pecan', N'Female', N'September 10th', N'chipmunk', N'Snooty', N'Squirrel', N'Elegant', N'Gorgeous', N'Beige', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Peck', N'Male', N'July 25th', N'crunch', N'Jock', N'Bird', N'Active', N'Simple', N'Beige', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Peewee', N'Male', N'September 11th', N'li''l bitty baby', N'Cranky', N'Gorilla', N'Active', N'Cool', N'Blue', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Peggy', N'Female', N'May 23rd', N'shweetie', N'Peppy', N'Pig', N'Active', N'Cute', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pekoe', N'Female', N'May 18th', N'bud', N'Normal', N'Bear Cub', N'Cute', N'Elegant', N'Beige', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Penelope', N'Female', N'February 5th', N'oh bow', N'Peppy', N'Mouse', N'Cute', N'Gorgeous', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Petri', N'Male', N'October 23rd', N'mmmhmm', N'Snooty', N'Mouse', N'Simple', N'Cool', N'White', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Phil', N'Male', N'November 27th', N'hurk', N'Smug', N'Ostrich', N'Cool', N'Elegant', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Phoebe', N'Female', N'April 22nd', N'sparky', N'Big Sister', N'Ostrich', N'Gorgeous', N'Cool', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pierce', N'Male', N'January 8th', N'hawkeye', N'Jock', N'Eagle', N'Active', N'Elegant', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pietro', N'Male', N'April 19th', N'honk honk', N'Smug', N'Sheep', N'Gorgeous', N'Simple', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pinky', N'Female', N'September 9th', N'wah', N'Peppy', N'Bear', N'Cute', N'Simple', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Piper', N'Female', N'April 18th', N'chickadee', N'Peppy', N'Bird', N'Elegant', N'Gorgeous', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pippy', N'Female', N'June 14th', N'li''l hare', N'Peppy', N'Rabbit', N'Cute', N'Simple', N'Brown', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Plucky', N'Female', N'October 12th', N'chicky-poo', N'Big Sister', N'Chicken', N'Cool', N'Simple', N'Aqua', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pompom', N'Female', N'February 11th', N'rah rah', N'Peppy', N'Duck', N'Cute', N'Simple', N'Aqua', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Poncho', N'Male', N'January 2nd', N'li''l bear', N'Jock', N'Bear Cub', N'Simple', N'None', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Poppy', N'Female', N'August 5th', N'nutty', N'Normal', N'Squirrel', N'Cute', N'Elegant', N'Green', N'Yellow')
GO
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Portia', N'Female', N'October 25th', N'ruffian', N'Snooty', N'Dog', N'Elegant', N'Gorgeous', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Prince', N'Male', N'July 21st', N'burrup', N'Lazy', N'Frog', N'Active', N'Simple', N'Yellow', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Puck', N'Male', N'February 21st', N'brrrrrrrrr', N'Lazy', N'Penguin', N'Active', N'Simple', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Puddles', N'Female', N'January 13th', N'splish', N'Peppy', N'Frog', N'Cute', N'Gorgeous', N'Green', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Pudge', N'Male', N'June 11th', N'pudgy', N'Lazy', N'Bear Cub', N'Simple', N'None', N'Blue', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Punchy', N'Male', N'April 11th', N'mrmpht', N'Lazy', N'Cat', N'Simple', N'None', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Purrl', N'Female', N'May 29th', N'kitten', N'Snooty', N'Cat', N'Cool', N'Elegant', N'Blue', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Queenie', N'Female', N'November 13th', N'chicken', N'Snooty', N'Ostrich', N'Elegant', N'Gorgeous', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Quillson', N'Male', N'December 22nd', N'ridukulous', N'Smug', N'Duck', N'Cool', N'Elegant', N'Beige', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Quinn', N'Female', N'January 20th', N'proper', N'Big Sister', N'Eagle', N'Cool', N'Elegant', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Raddle', N'Male', N'June 6th', N'aach-', N'Lazy', N'Frog', N'Elegant', N'Simple', N'Gray', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rasher', N'Male', N'April 7th', N'swine', N'Cranky', N'Pig', N'Cool', N'Simple', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Raymond', N'Male', N'October 1st', N'crisp', N'Smug', N'Cat', N'Cool', N'Elegant', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Renee', N'Female', N'May 28th', N'yo yo yo', N'Big Sister', N'Rhinoceros', N'Active', N'Cool', N'Purple', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Reneigh', N'Female', N'June 4th', N'ayup yup', N'Big Sister', N'Horse', N'Cool', N'Gorgeous', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rex', N'Male', N'July 24th', N'cool cat', N'Lazy', N'Lion', N'Cute', N'Simple', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rhonda', N'Female', N'January 24th', N'bigfoot', N'Normal', N'Rhinoceros', N'Elegant', N'Gorgeous', N'Black', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ribbot', N'Male', N'February 13th', N'zzrrbbit', N'Jock', N'Frog', N'Simple', N'Active', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ricky', N'Male', N'September 14th', N'nutcase', N'Cranky', N'Squirrel', N'Cool', N'Simple', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rilla', N'Female', N'November 1st', N'hello', N'Peppy', N'Gorilla', N'Cute', N'Elegant', N'Red', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rio', N'Female', N'September 10th', N'li''l chick', N'Peppy', N'Ostrich', N'Cool', N'Cute', N'Orange', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rizzo', N'Male', N'January 17th', N'squee', N'Cranky', N'Mouse', N'Cool', N'Simple', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Roald', N'Male', N'January 5th', N'b-b-buddy', N'Jock', N'Penguin', N'Active', N'Simple', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Robin', N'Female', N'December 4th', N'la-di-da', N'Snooty', N'Bird', N'Cool', N'Elegant', N'Aqua', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rocco', N'Male', N'August 18th', N'hippie', N'Cranky', N'Hippo', N'Cool', N'Simple', N'Black', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rocket', N'Female', N'April 14th', N'vroom', N'Big Sister', N'Gorilla', N'Active', N'Cool', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rod', N'Male', N'August 14th', N'ace', N'Jock', N'Mouse', N'Active', N'Cool', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rodeo', N'Male', N'October 29th', N'chaps', N'Lazy', N'Bull', N'Cool', N'Simple', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rodney', N'Male', N'November 10th', N'le ham', N'Smug', N'Hamster', N'Cool', N'Gorgeous', N'Colorful', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rolf', N'Male', N'August 22nd', N'grrrolf', N'Cranky', N'Tiger', N'Active', N'Cool', N'Blue', N'Black')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rooney', N'Male', N'December 1st', N'punches', N'Cranky', N'Kangaroo', N'Active', N'None', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rory', N'Male', N'August 7th', N'capital', N'Jock', N'Lion', N'Active', N'Simple', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Roscoe', N'Male', N'June 16th', N'nay', N'Cranky', N'Horse', N'Cool', N'Gorgeous', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rosie', N'Female', N'February 27th', N'silly', N'Peppy', N'Cat', N'Cute', N'None', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Roswell', N'Male', N'May 2nd', N'spaaace', N'Smug', N'Alligator', N'Simple', N'Elegant', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rowan', N'Male', N'August 26th', N'mango', N'Jock', N'Tiger', N'Active', N'Simple', N'Gray', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ruby', N'Female', N'December 25th', N'li''l ears', N'Peppy', N'Rabbit', N'Active', N'Cute', N'Aqua', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Rudy', N'Male', N'December 20th', N'mush', N'Jock', N'Cat', N'Active', N'Simple', N'Beige', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sally', N'Female', N'June 19th', N'nutmeg', N'Normal', N'Squirrel', N'Elegant', N'Simple', N'Beige', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Samson', N'Male', N'July 5th', N'pipsqueak', N'Jock', N'Mouse', N'Active', N'Simple', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sandy', N'Female', N'October 21st', N'speedy', N'Normal', N'Ostrich', N'Cool', N'Simple', N'Aqua', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sasha', N'Male', N'May 19th', N'hoppity', N'Lazy', N'Rabbit', N'Simple', N'Cute', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Savannah', N'Female', N'January 25th', N'y''all', N'Normal', N'Horse', N'Cool', N'Simple', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Scoot', N'Male', N'June 13th', N'zip zoom', N'Jock', N'Duck', N'Active', N'Simple', N'Beige', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Shari', N'Female', N'April 10th', N'cheeky', N'Big Sister', N'Monkey', N'Active', N'Cute', N'Aqua', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sheldon', N'Male', N'February 26th', N'cardio', N'Jock', N'Squirrel', N'Active', N'Cool', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Shep', N'Male', N'November 24th', N'baa baa baa', N'Smug', N'Dog', N'Cool', N'Simple', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sherb', N'Male', N'January 18th', N'bawwww', N'Lazy', N'Goat', N'Cute', N'Simple', N'Blue', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Shino', N'Female', N'October 31st', N'okaaay', N'Peppy', N'Deer', N'Elegant', N'Gorgeous', N'Red', N'Black')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Simon', N'Male', N'January 19th', N'zzzook', N'Lazy', N'Monkey', N'Active', N'Simple', N'Colorful', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Skye', N'Female', N'March 24th', N'airmail', N'Normal', N'Wolf', N'Cute', N'None', N'Blue', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sly', N'Male', N'November 15th', N'hoo-rah', N'Jock', N'Aligator', N'Cool', N'Simple', N'Brown', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Snake', N'Male', N'November 3rd', N'bunyip', N'Jock', N'Rabbit', N'Active', N'Simple', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Snooty', N'Female', N'October 24th', N'snffff', N'Snooty', N'Anteater', N'Simple', N'None', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Soleil', N'Female', N'August 9th', N'tarnation', N'Snooty', N'Hamster', N'Cool', N'Gorgeous', N'Red', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sparro', N'Male', N'November 20th', N'like whoa', N'Jock', N'Bird', N'Active', N'Simple', N'Gray', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Spike', N'Male', N'June 17th', N'punk', N'Cranky', N'Rhinoceros', N'Cool', N'Gorgeous', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Spork', N'Male', N'September 3rd', N'snork', N'Lazy', N'Pig', N'Active', N'Simple', N'Colorful', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sprinkle', N'Female', N'February 20th', N'frappe', N'Peppy', N'Penguin', N'Cute', N'Elegant', N'Aqua', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sprocket', N'Male', N'December 1st', N'zort', N'Jock', N'Ostrich', N'Active', N'Simple', N'Green', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Static', N'Male', N'July 9th', N'krzzt', N'Cranky', N'Squirrel', N'Active', N'Cool', N'Black', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Stella', N'Female', N'April 9th', N'baa-dabing', N'Normal', N'Sheep', N'Simple', N'None', N'Beige', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sterling', N'Male', N'December 11th', N'skraaaaw', N'Jock', N'Eagle', N'Elegant', N'Simple', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Stinky', N'Male', N'August 17th', N'GAAHHH', N'Jock', N'Cat', N'Active', N'Simple', N'Blue', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Stitches', N'Male', N'February 10th', N'stuffin''', N'Lazy', N'Bear Cub', N'Cute', N'Simple', N'Colorful', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Stu', N'Male', N'April 20th', N'mroo', N'Lazy', N'Bull', N'Simple', N'None', N'Beige', N'Brown')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sydney', N'Female', N'June 21st', N'sunshine', N'Normal', N'Koala', N'Cute', N'Simple', N'Beige', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sylvana', N'Female', N'October 22nd', N'hubbub', N'Normal', N'Squirrel', N'Cute', N'Simple', N'Green', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Sylvia', N'Female', N'May 3rd', N'boing', N'Big Sister', N'Kangaroo', N'Gorgeous', N'Simple', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tabby', N'Female', N'August 13th', N'me-WOW', N'Peppy', N'Cat', N'Active', N'Cool', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tad', N'Male', N'August 3rd', N'sluuuurp', N'Jock', N'Frog', N'Active', N'Simple', N'Colorful', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tammi', N'Female', N'April 2nd', N'chimpy', N'Peppy', N'Monkey', N'Active', N'Cute', N'Green', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tammy', N'Female', N'June 23rd', N'ya heard', N'Big Sister', N'Bear Cub', N'Active', N'Cool', N'Purple', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tangy', N'Female', N'June 17th', N'reeeeOWR', N'Peppy', N'Cat', N'Cute', N'Simple', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tank', N'Male', N'May 6th', N'kerPOW', N'Jock', N'Rhinoceros', N'Active', N'Simple', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tasha', N'Female', N'November 30th', N'nice nice', N'Snooty', N'Squirrel', N'Elegant', N'Gorgeous', N'Beige', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'T-Bone', N'Male', N'May 20th', N'moocher', N'Cranky', N'Bull', N'Cool', N'Simple', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Teddy', N'Male', N'September 26th', N'groof', N'Jock', N'Bear', N'Simple', N'None', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tex', N'Male', N'October 6th', N'picante', N'Smug', N'Penguin', N'Cool', N'Elegant', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tia', N'Female', N'November 18th', N'teacup', N'Normal', N'Elephant', N'Cute', N'Elegant', N'Black', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tiansheng', N'Male', N'August 18th', N'wuwu', N'Jock', N'Monkey', N'Cool', N'Elegant', N'Green', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tiffany', N'Female', N'January 9th', N'bunbun', N'Snooty', N'Rabbit', N'Cool', N'Gorgeous', N'Black', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Timbra', N'Female', N'October 21st', N'pine nut', N'Snooty', N'Sheep', N'Elegant', N'Gorgeous', N'Brown', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tipper', N'Female', N'August 25th', N'pushy', N'Snooty', N'Cow', N'Cute', N'Gorgeous', N'Colorful', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Toby', N'Male', N'July 10th', N'ribbit', N'Smug', N'Rabbit', N'Cute', N'Elegant', N'Green', N'Orange')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tom', N'Male', N'December 10th', N'me-YOWZA', N'Cranky', N'Cat', N'Cool', N'Simple', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Truffles', N'Female', N'July 28th', N'snoutie', N'Peppy', N'Pig', N'Cute', N'Gorgeous', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tucker', N'Male', N'September 7th', N'fuzzers', N'Lazy', N'Elephant', N'Active', N'Simple', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tutu', N'Female', N'September 15th', N'twinkles', N'Peppy', N'Bear', N'Cute', N'Simple', N'Pink', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Twiggy', N'Female', N'July 13th', N'cheepers', N'Peppy', N'Bird', N'Cute', N'Simple', N'Blue', N'Pink')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Tybalt', N'Male', N'August 19th', N'grrrRAH', N'Jock', N'Tiger', N'Active', N'Simple', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Ursala', N'Female', N'January 16th', N'grooomph', N'Big Sister', N'Bear', N'Cute', N'Simple', N'Orange', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Velma', N'Female', N'January 14th', N'blih', N'Snooty', N'Goat', N'Elegant', N'Gorgeous', N'Aqua', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Vesta', N'Female', N'April 16th', N'baaaffo', N'Normal', N'Sheep', N'Cute', N'Simple', N'Orange', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Vic', N'Male', N'December 29th', N'cud', N'Cranky', N'Bull', N'Active', N'Cool', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Victoria', N'Female', N'July 11th', N'sugar cube', N'Peppy', N'Horse', N'Active', N'Simple', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Violet', N'Female', N'September 1st', N'sweetie', N'Snooty', N'Gorilla', N'Cool', N'Gorgeous', N'Pink', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Vivian', N'Female', N'January 26th', N'piffle', N'Snooty', N'Wolf', N'Elegant', N'Gorgeous', N'Gray', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Vladimir', N'Male', N'August 2nd', N'nyet', N'Cranky', N'Bear Cub', N'Cool', N'Simple', N'Colorful', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Wade', N'Male', N'October 30th', N'so it goes', N'Lazy', N'Penguin', N'Gorgeous', N'Simple', N'Blue', N'Aqua')
GO
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Walker', N'Male', N'June 10th', N'wuh', N'Lazy', N'Dog', N'Simple', N'None', N'Orange', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Walt', N'Male', N'April 24th', N'pockets', N'Cranky', N'Kangaroo', N'Cool', N'None', N'Black', N'Gray')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Wart Jr.', N'Male', N'August 21st', N'grr-ribbit', N'Cranky', N'Frog', N'Simple', N'None', N'Blue', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Weber', N'Male', N'June 30th', N'quaa', N'Lazy', N'Duck', N'Cool', N'Simple', N'Black', N'Blue')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Wendy', N'Female', N'August 15th', N'lambkins', N'Peppy', N'Sheep', N'Cool', N'Gorgeous', N'Green', N'Red')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Whitney', N'Female', N'September 17th', N'snappy', N'Snooty', N'Wolf', N'Cool', N'Elegant', N'Blue', N'Aqua')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Willow', N'Female', N'November 26th', N'bo peep', N'Snooty', N'Sheep', N'Cute', N'Gorgeous', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Winnie', N'Female', N'January 31st', N'hay-OK', N'Peppy', N'Horse', N'Cool', N'Simple', N'Gray', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Wolfgang', N'Male', N'November 25th', N'snarrrl', N'Cranky', N'Wolf', N'Active', N'Cool', N'Black', N'Green')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Yuka', N'Female', N'July 20th', N'tsk tsk', N'Snooty', N'Koala', N'Cool', N'Elegant', N'Orange', N'Yellow')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Zell', N'Male', N'June 7th', N'pronk', N'Smug', N'Deer', N'Cool', N'Gorgeous', N'Gray', N'Purple')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Zoe', N'Female', N'February 10th', N'zoozooroo', N'Normal', N'Anteater', N'Cute', N'Simple', N'Pink', N'White')
INSERT [dbo].[villager] ([name], [gender], [birthday], [catchphrase], [personality], [species], [style1], [style2], [color1], [color2]) VALUES (N'Zucker', N'Male', N'March 8th', N'bloop', N'Lazy', N'Octopus', N'Cute', N'Simple', N'Blue', N'Yellow')
GO
USE [master]
GO
ALTER DATABASE [villagers] SET  READ_WRITE 
GO
