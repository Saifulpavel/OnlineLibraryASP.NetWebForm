USE [OnlineLibrary]
GO
/****** Object:  Table [dbo].[AdminLogin]    Script Date: 26-Oct-2020 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminLogin](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AdminLogin] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AuthorMaster]    Script Date: 26-Oct-2020 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorMaster](
	[AuthorId] [nchar](10) NOT NULL,
	[AuthorName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AuthorMaster] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookIssue]    Script Date: 26-Oct-2020 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookIssue](
	[MemberId] [nvarchar](50) NULL,
	[MemberName] [nvarchar](50) NULL,
	[BookId] [nvarchar](50) NULL,
	[BookName] [nvarchar](max) NULL,
	[IssueDate] [nvarchar](50) NULL,
	[DueDate] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookMaster]    Script Date: 26-Oct-2020 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookMaster](
	[BookId] [nchar](10) NOT NULL,
	[BookName] [nvarchar](max) NULL,
	[Genre] [nvarchar](max) NULL,
	[AuthorName] [nvarchar](max) NULL,
	[PublisherName] [nvarchar](max) NULL,
	[PublishDate] [nvarchar](50) NULL,
	[Language] [nvarchar](50) NULL,
	[Edition] [nvarchar](max) NULL,
	[BookCost] [nchar](10) NULL,
	[NoOfPage] [nchar](10) NULL,
	[BookDescription] [nvarchar](max) NULL,
	[ActualStock] [nchar](10) NULL,
	[CurrentStock] [nchar](10) NULL,
	[BookImgLink] [nvarchar](max) NULL,
 CONSTRAINT [PK_BookMaster] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberMaster]    Script Date: 26-Oct-2020 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberMaster](
	[FullName] [nvarchar](50) NULL,
	[Dob] [nvarchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[PinCode] [nvarchar](50) NULL,
	[FullAddress] [nvarchar](max) NULL,
	[MemberId] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[AccountStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_MemberMaster] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PublisherMaster]    Script Date: 26-Oct-2020 5:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublisherMaster](
	[PublisherId] [nchar](10) NOT NULL,
	[PublisherName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PublisherMaster] PRIMARY KEY CLUSTERED 
(
	[PublisherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[MemberMaster] ([FullName], [Dob], [ContactNo], [Email], [State], [City], [PinCode], [FullAddress], [MemberId], [Password], [AccountStatus]) VALUES (N'SAIFUL ISLAM', N'2020-10-14', N'3432423', N'saiful@gmail.com', N'Dhaka', N'Matuail', N'1362', N'House: 263,Kadamtoli,Dhaka-1362', N'saiful0780', N'fre23423', N'Pending')
INSERT [dbo].[MemberMaster] ([FullName], [Dob], [ContactNo], [Email], [State], [City], [PinCode], [FullAddress], [MemberId], [Password], [AccountStatus]) VALUES (N'Saiful Islam', N'1994-08-03', N'01954900325', N'saifulislam0980@gmail.com', N'Dhaka', N'Dhaka', N'1362', N'House: 263,Kadamtoli,Dhaka-1362', N'saiful0786', N'Saiful325', N'Pending')
INSERT [dbo].[MemberMaster] ([FullName], [Dob], [ContactNo], [Email], [State], [City], [PinCode], [FullAddress], [MemberId], [Password], [AccountStatus]) VALUES (N'Saiful Islam', N'1994-08-03', N'01954900325', N'saiful@gmail.com', N'Dhaka', N'Matuail', N'1362', N'House: 263,Kadamtoli,Dhaka-1362', N'saiful0980', N'Saiful325', N'Pending')
INSERT [dbo].[MemberMaster] ([FullName], [Dob], [ContactNo], [Email], [State], [City], [PinCode], [FullAddress], [MemberId], [Password], [AccountStatus]) VALUES (N'SAIFUL ISLAM', N'', N'3432423', N'saiful@gmail.com', N'Dhaka', N'Matuail', N'1362', N'House: 263,Kadamtoli,Dhaka-1362', N'User Id', N'', N'Pending')
