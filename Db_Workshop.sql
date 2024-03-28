USE [CustomDataBase]
GO
/****** Object:  Table [dbo].[Chip]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chip](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongVat]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongVat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
	[tuoi] [int] NULL,
	[gioi_tinh] [bit] NULL,
	[khu_vuc_song] [nvarchar](100) NULL,
	[IdLDV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDongVat]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDongVat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MayTinh]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayTinh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
	[gia] [float] NULL,
	[bo_nho] [nvarchar](100) NULL,
	[hang] [nvarchar](100) NULL,
	[IdChip] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oto]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
	[gia] [float] NULL,
	[chat_lieu] [nvarchar](100) NULL,
	[mau_sac] [nvarchar](100) NULL,
	[IdHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
	[ngaySX] [date] NULL,
	[gia_ve] [float] NULL,
	[danh_gia] [nvarchar](100) NULL,
	[mo_ta] [nvarchar](100) NULL,
	[IdNXB] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 28/03/2024 6:38:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
	[tuoi] [int] NULL,
	[gioi_tinh] [bit] NULL,
	[dia_chi] [nvarchar](100) NULL,
	[IdLopHoc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chip] ON 

INSERT [dbo].[Chip] ([id], [ma], [ten]) VALUES (1, N'C001', N'I5')
INSERT [dbo].[Chip] ([id], [ma], [ten]) VALUES (2, N'C002', N'I3')
INSERT [dbo].[Chip] ([id], [ma], [ten]) VALUES (3, N'C003', N'I9')
SET IDENTITY_INSERT [dbo].[Chip] OFF
GO
SET IDENTITY_INSERT [dbo].[DongVat] ON 

INSERT [dbo].[DongVat] ([id], [ma], [ten], [tuoi], [gioi_tinh], [khu_vuc_song], [IdLDV]) VALUES (1, N'DV001', N'Gà', 12, 1, N'Đồng Bằng', 2)
INSERT [dbo].[DongVat] ([id], [ma], [ten], [tuoi], [gioi_tinh], [khu_vuc_song], [IdLDV]) VALUES (2, N'DV002', N'Rắn', 3, 1, N'Đồng Bằng', 2)
INSERT [dbo].[DongVat] ([id], [ma], [ten], [tuoi], [gioi_tinh], [khu_vuc_song], [IdLDV]) VALUES (3, N'DV003', N'Chim', 4, 0, N'Trên Trời', 1)
INSERT [dbo].[DongVat] ([id], [ma], [ten], [tuoi], [gioi_tinh], [khu_vuc_song], [IdLDV]) VALUES (4, N'DV004', N'Cá Sấu', 5, 1, N'Dưới Nước', 3)
INSERT [dbo].[DongVat] ([id], [ma], [ten], [tuoi], [gioi_tinh], [khu_vuc_song], [IdLDV]) VALUES (5, N'DV005', N'Cá', 7, 0, N'Dưới Nước', 3)
SET IDENTITY_INSERT [dbo].[DongVat] OFF
GO
SET IDENTITY_INSERT [dbo].[Hang] ON 

INSERT [dbo].[Hang] ([id], [ma], [ten]) VALUES (1, N'H001', N'Toyota')
INSERT [dbo].[Hang] ([id], [ma], [ten]) VALUES (2, N'H002', N'Honda')
INSERT [dbo].[Hang] ([id], [ma], [ten]) VALUES (3, N'H003', N'Ford')
SET IDENTITY_INSERT [dbo].[Hang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiDongVat] ON 

INSERT [dbo].[LoaiDongVat] ([id], [ma], [ten]) VALUES (1, N'LDV001', N'Động vật biết bay')
INSERT [dbo].[LoaiDongVat] ([id], [ma], [ten]) VALUES (2, N'LDV002', N'Động vật trên cạn')
INSERT [dbo].[LoaiDongVat] ([id], [ma], [ten]) VALUES (3, N'LDV003', N'Động vật dưới nước')
SET IDENTITY_INSERT [dbo].[LoaiDongVat] OFF
GO
SET IDENTITY_INSERT [dbo].[LopHoc] ON 

INSERT [dbo].[LopHoc] ([id], [ma], [ten]) VALUES (1, N'LH001', N'P309')
INSERT [dbo].[LopHoc] ([id], [ma], [ten]) VALUES (2, N'LH002', N'P201')
INSERT [dbo].[LopHoc] ([id], [ma], [ten]) VALUES (3, N'LH003', N'P209')
SET IDENTITY_INSERT [dbo].[LopHoc] OFF
GO
SET IDENTITY_INSERT [dbo].[MayTinh] ON 

INSERT [dbo].[MayTinh] ([id], [ma], [ten], [gia], [bo_nho], [hang], [IdChip]) VALUES (1, N'MT001', N'Dell XPS 13', 100000, N'256G', N'DELL', 1)
INSERT [dbo].[MayTinh] ([id], [ma], [ten], [gia], [bo_nho], [hang], [IdChip]) VALUES (2, N'MT002', N'MacBook Pro', 100000, N'256G', N'DELL', 2)
INSERT [dbo].[MayTinh] ([id], [ma], [ten], [gia], [bo_nho], [hang], [IdChip]) VALUES (3, N'MT003', N'Lenovo ThinkPad X1 Carbon', 200000, N'120G', N'Lenovo', 1)
INSERT [dbo].[MayTinh] ([id], [ma], [ten], [gia], [bo_nho], [hang], [IdChip]) VALUES (4, N'MT004', N'Asus ROG Zephyrus', 150000, N'512G', N'Asus', 2)
INSERT [dbo].[MayTinh] ([id], [ma], [ten], [gia], [bo_nho], [hang], [IdChip]) VALUES (5, N'MT005', N'Microsoft Surface Laptop', 320000, N'512G', N'Asus', 3)
SET IDENTITY_INSERT [dbo].[MayTinh] OFF
GO
SET IDENTITY_INSERT [dbo].[NXB] ON 

INSERT [dbo].[NXB] ([id], [ma], [ten]) VALUES (1, N'NXB001', N'Nguyễn Thị Anh')
INSERT [dbo].[NXB] ([id], [ma], [ten]) VALUES (2, N'NXB002', N'Phạm Văn Đồng')
INSERT [dbo].[NXB] ([id], [ma], [ten]) VALUES (3, N'NXB003', N'Nguyễn Thị Thúy')
SET IDENTITY_INSERT [dbo].[NXB] OFF
GO
SET IDENTITY_INSERT [dbo].[Oto] ON 

INSERT [dbo].[Oto] ([id], [ma], [ten], [gia], [chat_lieu], [mau_sac], [IdHang]) VALUES (1, N'O001', N'Toyota Corolla', 100000, N'Sắt', N'Vàng', 1)
INSERT [dbo].[Oto] ([id], [ma], [ten], [gia], [chat_lieu], [mau_sac], [IdHang]) VALUES (2, N'O002', N'Toyota Camry', 200000, N'Đồng', N'Xanh', 1)
INSERT [dbo].[Oto] ([id], [ma], [ten], [gia], [chat_lieu], [mau_sac], [IdHang]) VALUES (3, N'O003', N'Honda Civic', 300000, N'Sắt', N'Trắng', 2)
INSERT [dbo].[Oto] ([id], [ma], [ten], [gia], [chat_lieu], [mau_sac], [IdHang]) VALUES (4, N'O004', N'Honda Accord', 300000, N'Đồng', N'Đen', 2)
INSERT [dbo].[Oto] ([id], [ma], [ten], [gia], [chat_lieu], [mau_sac], [IdHang]) VALUES (5, N'O005', N'Ford Mustang', 150000, N'Thép', N'Đen', 3)
SET IDENTITY_INSERT [dbo].[Oto] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([id], [ma], [ten], [ngaySX], [gia_ve], [danh_gia], [mo_ta], [IdNXB]) VALUES (1, N'P001', N'Nơi Này Có Anh', CAST(N'2023-02-12' AS Date), 120000, N'5 sao', N'Phim hay', 1)
INSERT [dbo].[Phim] ([id], [ma], [ten], [ngaySX], [gia_ve], [danh_gia], [mo_ta], [IdNXB]) VALUES (2, N'P002', N'Chàng Quỷ Của Tôi', CAST(N'2022-05-22' AS Date), 100000, N'5 sao', N'Phim hay', 2)
INSERT [dbo].[Phim] ([id], [ma], [ten], [ngaySX], [gia_ve], [danh_gia], [mo_ta], [IdNXB]) VALUES (3, N'P003', N'Tình Đầu', CAST(N'2021-12-12' AS Date), 90000, N'4 sao ', N'Phim hay', 3)
INSERT [dbo].[Phim] ([id], [ma], [ten], [ngaySX], [gia_ve], [danh_gia], [mo_ta], [IdNXB]) VALUES (4, N'P004', N'Ngôi Trường Xác Sống', CAST(N'2023-06-12' AS Date), 80000, N'5 sao', N'Phim đáng xem', 2)
INSERT [dbo].[Phim] ([id], [ma], [ten], [ngaySX], [gia_ve], [danh_gia], [mo_ta], [IdNXB]) VALUES (5, N'P005', N'Tài Xế Ẩn Danh', CAST(N'2023-09-22' AS Date), 110000, N'5 sao ', N'Phim hay', 2)
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[SinhVien] ON 

INSERT [dbo].[SinhVien] ([id], [ma], [ten], [tuoi], [gioi_tinh], [dia_chi], [IdLopHoc]) VALUES (1, N'SV001', N'Nguyễn Thái AN', 19, 1, N'Hà Nội', 1)
INSERT [dbo].[SinhVien] ([id], [ma], [ten], [tuoi], [gioi_tinh], [dia_chi], [IdLopHoc]) VALUES (2, N'SV002', N'Nguyễn Thành Thắng', 20, 1, N'Hà Nội', 1)
INSERT [dbo].[SinhVien] ([id], [ma], [ten], [tuoi], [gioi_tinh], [dia_chi], [IdLopHoc]) VALUES (3, N'SV003', N'Nguyễn Thị Thủy', 21, 0, N'Hải Phòng', 2)
INSERT [dbo].[SinhVien] ([id], [ma], [ten], [tuoi], [gioi_tinh], [dia_chi], [IdLopHoc]) VALUES (4, N'SV004', N'Nguyễn Quang Lâm', 21, 1, N'Nam Định', 3)
INSERT [dbo].[SinhVien] ([id], [ma], [ten], [tuoi], [gioi_tinh], [dia_chi], [IdLopHoc]) VALUES (5, N'SV005', N'Trần Thị Thảo', 19, 0, N'Nam Định', 2)
SET IDENTITY_INSERT [dbo].[SinhVien] OFF
GO
