USE [DBCooker]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06.09.2022 18:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06.09.2022 18:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Администратор')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (1, N'Ефремов ', N'Сергей', N'Пантелеймонович', N'loginDEppn2018', N'6}i+FD', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (2, N'Родионова ', N'Тамара', N'Валентиновна', N'loginDElqb2018', N'RNynil', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (3, N'Миронова ', N'Галина', N'Улебовна', N'loginDEydn2018', N'34I}X9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (4, N'Сидоров ', N'Роман', N'Иринеевич', N'loginDEijg2018', N'4QlKJW', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (5, N'Ситников ', N'Парфений', N'Всеволодович', N'loginDEdpy2018', N'MJ0W|f', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (6, N'Никонов ', N'Роман', N'Геласьевич', N'loginDEwdm2018', N'&PynqU', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (7, N'Щербаков ', N'Владимир', N'Матвеевич', N'loginDEdup2018', N'JM+2{s', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (8, N'Кулаков ', N'Мартын', N'Михаилович', N'loginDEhbm2018', N'9aObu4', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (9, N'Сазонова ', N'Оксана', N'Лаврентьевна', N'loginDExvq2018', N'hX0wJz', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (10, N'Архипов ', N'Варлам', N'Мэлорович', N'loginDErks2018', N'LQNSjo', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (11, N'Устинова ', N'Ираида', N'Мэлоровна', N'loginDErvb2018', N'ceAf&R', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (12, N'Лукин ', N'Георгий', N'Альбертович', N'loginDEulo2018', N'loginDEulo2018', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (13, N'Кононов ', N'Эдуард', N'Валентинович', N'loginDEgfw2018', N'3c2Ic1', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (14, N'Орехова ', N'Клавдия', N'Альбертовна', N'loginDEmxb2018', N'ZPXcRS', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (15, N'Яковлев ', N'Яков', N'Эдуардович', N'loginDEgeq2018', N'&&Eim0', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (16, N'Воронов ', N'Мэлс', N'Семёнович', N'loginDEkhj2018', N'Pbc0t{', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (17, N'Вишнякова ', N'Ия', N'Данииловна', N'loginDEliu2018', N'32FyTl', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (18, N'Третьяков ', N'Фёдор', N'Вадимович', N'loginDEsmf2018', N'{{O2QG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (19, N'Макаров ', N'Максим', N'Ильяович', N'loginDEutd2018', N'GbcJvC', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (20, N'Шубина ', N'Маргарита', N'Анатольевна', N'loginDEpgh2018', N'YV2lvh', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (21, N'Блинова ', N'Ангелина', N'Владленовна', N'loginDEvop2018', N'pBP8rO', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (22, N'Воробьёв ', N'Владлен', N'Фролович', N'loginDEwjo2018', N'EQaD|d', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (23, N'Сорокина ', N'Прасковья', N'Фёдоровна', N'loginDEbur2018', N'aZKGeI', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (24, N'Давыдов ', N'Яков', N'Антонович', N'loginDEszw2018', N'EGU{YE', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (25, N'Рыбакова ', N'Евдокия', N'Анатольевна', N'loginDExsu2018', N'*2RMsp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (26, N'Маслов ', N'Геннадий', N'Фролович', N'loginDEztn2018', N'nJBZpU', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (27, N'Цветкова ', N'Элеонора', N'Аристарховна', N'loginDEtmn2018', N'UObB}N', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (28, N'Евдокимов ', N'Ростислав', N'Александрович', N'loginDEhep2018', N'SwRicr', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (29, N'Никонова ', N'Венера', N'Станиславовна', N'loginDEevr2018', N'zO5l}l', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (30, N'Громов ', N'Егор', N'Антонович', N'loginDEnpa2018', N'M*QLjf', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (31, N'Суворова ', N'Валерия', N'Борисовна', N'loginDEgyt2018', N'Pav+GP', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (32, N'Мишина ', N'Елизавета', N'Романовна', N'loginDEbrr2018', N'Z7L|+i', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (33, N'Зимина ', N'Ольга', N'Аркадьевна', N'loginDEyoo2018', N'UG1BjP', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (34, N'Игнатьев ', N'Игнатий', N'Антонинович', N'loginDEaob2018', N'3fy+3I', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (35, N'Пахомова ', N'Зинаида', N'Витальевна', N'loginDEwtz2018', N'&GxSST', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (36, N'Устинов ', N'Владимир', N'Федосеевич', N'loginDEctf2018', N'sjt*3N', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (37, N'Кулаков ', N'Мэлор', N'Вячеславович', N'loginDEipm2018', N'MAZl6|', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (38, N'Сазонов ', N'Авксентий', N'Брониславович', N'loginDEjoi2018', N'o}C4jv', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (39, N'Бурова ', N'Наина', N'Брониславовна', N'loginDEwap2018', N'4hny7k', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (40, N'Фадеев ', N'Демьян', N'Федосеевич', N'loginDEaxm2018', N'BEc3xq', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (41, N'Бобылёва ', N'Дарья', N'Якуновна', N'loginDEsmq2018', N'ATVmM7', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (42, N'Виноградов ', N'Созон', N'Арсеньевич', N'loginDEeur2018', N'n4V{wP', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (43, N'Гордеев ', N'Владлен', N'Ефимович', N'loginDEvke2018', N'WQLXSl', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (44, N'Иванова ', N'Зинаида', N'Валерьевна', N'loginDEvod2018', N'0EW93v', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (45, N'Гусев ', N'Руслан', N'Дамирович', N'loginDEjaw2018', N'h6z&Ky', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (46, N'Маслов ', N'Дмитрий', N'Иванович', N'loginDEpdp2018', N'8NvRfC', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (47, N'Антонова ', N'Ульяна', N'Семёновна', N'loginDEjpp2018', N'oMOQq3', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (48, N'Орехова ', N'Людмила', N'Владимировна', N'loginDEkiy2018', N'BQzsts', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (49, N'Авдеева ', N'Жанна', N'Куприяновна', N'loginDEhmn2018', N'a|Iz|7', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (50, N'Кузнецов ', N'Фрол', N'Варламович', N'loginDEfmn2018', N'cw3|03', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
