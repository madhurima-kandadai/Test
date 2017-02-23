USE [Assessment]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 23-02-2017 07:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 23-02-2017 07:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyDetails]    Script Date: 23-02-2017 07:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](50) NULL,
	[Total_Employees]  AS ([W_Employees]+[M_Employees]),
	[Goal] [nvarchar](max) NULL,
	[ClientTypeId] [int] NULL,
	[W_Employees] [int] NULL,
	[M_Employees] [int] NULL,
	[Year] [nvarchar](5) NULL,
	[CompanyId] [int] NULL,
 CONSTRAINT [PK_CompanyDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Client] ON 

GO
INSERT [dbo].[Client] ([ClientTypeId], [Type]) VALUES (1, N'Local')
GO
INSERT [dbo].[Client] ([ClientTypeId], [Type]) VALUES (2, N'City')
GO
INSERT [dbo].[Client] ([ClientTypeId], [Type]) VALUES (3, N'National')
GO
INSERT [dbo].[Client] ([ClientTypeId], [Type]) VALUES (4, N'International')
GO
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (1, N'Epam')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (2, N'TCS')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (3, N'Google')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (4, N'Alliance')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName]) VALUES (5, N'CS')
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyDetails] ON 

GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (1, N'New Project - 1293', NULL, 1, 3558, 3440, N'2016', 1)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (2, N'New Project - 32', NULL, 2, 2102, 2652, N'2016', 1)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (3, N'New Project - 4687', NULL, 3, 3148, 1065, N'2016', 1)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (4, N'New Project - 1483', NULL, 4, 2988, 1287, N'2016', 1)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (5, N'New Project - 4261', NULL, 1, 4481, 3653, N'2016', 2)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (6, N'New Project - 4298', NULL, 2, 3402, 601, N'2016', 2)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (7, N'New Project - 3545', NULL, 3, 4171, 3625, N'2016', 2)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (8, N'New Project - 3352', NULL, 4, 3548, 3910, N'2016', 2)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (9, N'New Project - 2999', NULL, 1, 4428, 3906, N'2016', 3)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (10, N'New Project - 4030', NULL, 2, 2835, 545, N'2016', 3)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (11, N'New Project - 3583', NULL, 3, 1721, 249, N'2016', 3)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (12, N'New Project - 2045', NULL, 4, 2037, 1320, N'2016', 3)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (13, N'New Project - 4019', NULL, 1, 1792, 3335, N'2016', 4)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (14, N'New Project - 3336', NULL, 2, 2315, 4219, N'2016', 4)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (15, N'New Project - 4808', NULL, 3, 3165, 3616, N'2016', 4)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (16, N'New Project - 4368', NULL, 4, 2682, 2550, N'2016', 4)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (17, N'New Project - 800', NULL, 1, 2042, 2867, N'2016', 5)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (18, N'New Project - 3589', NULL, 2, 3565, 1771, N'2016', 5)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (19, N'New Project - 4442', NULL, 3, 4530, 2982, N'2016', 5)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (20, N'New Project - 11', NULL, 4, 3745, 2092, N'2016', 5)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (21, N'New Project - 2285', NULL, 1, 3572, 4780, N'2017', 1)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (22, N'New Project - 218', NULL, 2, 3384, 416, N'2017', 1)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (23, N'New Project - 2867', NULL, 3, 4523, 1059, N'2017', 1)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (24, N'New Project - 3506', NULL, 4, 1219, 1067, N'2017', 1)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (25, N'New Project - 4937', NULL, 1, 2236, 816, N'2017', 2)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (26, N'New Project - 2230', NULL, 2, 4877, 4358, N'2017', 2)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (27, N'New Project - 2548', NULL, 3, 2639, 3629, N'2017', 2)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (28, N'New Project - 1727', NULL, 4, 4633, 4045, N'2017', 2)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (29, N'New Project - 306', NULL, 1, 748, 3285, N'2017', 3)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (30, N'New Project - 3441', NULL, 2, 3036, 4581, N'2017', 3)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (31, N'New Project - 2438', NULL, 3, 966, 4369, N'2017', 3)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (32, N'New Project - 895', NULL, 4, 288, 3622, N'2017', 3)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (33, N'New Project - 3526', NULL, 1, 278, 3209, N'2017', 4)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (34, N'New Project - 2398', NULL, 2, 4430, 4080, N'2017', 4)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (35, N'New Project - 1618', NULL, 3, 3433, 3378, N'2017', 4)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (36, N'New Project - 617', NULL, 4, 1389, 1430, N'2017', 4)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (37, N'New Project - 424', NULL, 1, 4363, 1537, N'2017', 5)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (38, N'New Project - 2138', NULL, 2, 946, 620, N'2017', 5)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (39, N'New Project - 2737', NULL, 3, 834, 646, N'2017', 5)
GO
INSERT [dbo].[CompanyDetails] ([Id], [ProjectName], [Goal], [ClientTypeId], [W_Employees], [M_Employees], [Year], [CompanyId]) VALUES (40, N'New Project - 3918', NULL, 4, 2130, 4913, N'2017', 5)
GO
SET IDENTITY_INSERT [dbo].[CompanyDetails] OFF
GO
ALTER TABLE [dbo].[CompanyDetails]  WITH CHECK ADD  CONSTRAINT [FK_CompanyDetails_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[CompanyDetails] CHECK CONSTRAINT [FK_CompanyDetails_Company]
GO
ALTER TABLE [dbo].[CompanyDetails]  WITH CHECK ADD  CONSTRAINT [FK_CompanyDetails_CompanyDetails] FOREIGN KEY([ClientTypeId])
REFERENCES [dbo].[Client] ([ClientTypeId])
GO
ALTER TABLE [dbo].[CompanyDetails] CHECK CONSTRAINT [FK_CompanyDetails_CompanyDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetCompanyNameWithLEastWomenMenRatio]    Script Date: 23-02-2017 07:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCompanyNameWithLEastWomenMenRatio]
as
BEGIN
	SELECT c.CompanyName, cd.CompanyId, CONVERT(decimal(18,2), SUM(cd.W_Employees))/CONVERT(decimal(18,2), SUM(cd.M_Employees)) AS Ratio FROM dbo.CompanyDetails cd
JOIN dbo.Company c ON c.CompanyId = cd.CompanyId
GROUP BY cd.CompanyId, c.CompanyName ORDER BY Ratio
END
GO
