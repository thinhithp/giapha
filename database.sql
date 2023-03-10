USE [hobuixuanbang]
GO
CREATE TABLE [dbo].[tblvideo](
	[idvideo] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[link] [varchar](50) NULL,
	[thutu] [int] NULL,
 CONSTRAINT [PK_tblvideo] PRIMARY KEY CLUSTERED 
(
	[idvideo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblvideo] ON
INSERT [dbo].[tblvideo] ([idvideo], [name], [link], [thutu]) VALUES (2, N'Họ Bùi trong cộng đồng Việt', N'ssJ0K-6Hpgs', 3)
INSERT [dbo].[tblvideo] ([idvideo], [name], [link], [thutu]) VALUES (3, N'Bài hát Họ Bùi Việt Nam', N'F8LWAQxhV1Y', 4)
INSERT [dbo].[tblvideo] ([idvideo], [name], [link], [thutu]) VALUES (4, N'Toàn cảnh lịch sử Việt Nam', N'gnnlYYJaUtE', 5)
INSERT [dbo].[tblvideo] ([idvideo], [name], [link], [thutu]) VALUES (13, N'Họ Bùi Xuân Bảng - Lịch sử hình thành và phát triển', N'KRG1wHnATDQ', 1)
INSERT [dbo].[tblvideo] ([idvideo], [name], [link], [thutu]) VALUES (16, N'Hệ thống gia phả dòng họ trực tuyến Việt Nam', N'X2RwXh1P4qo', 2)
SET IDENTITY_INSERT [dbo].[tblvideo] OFF
/****** Object:  Table [dbo].[tblpartner]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblpartner](
	[idpartner] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[logo] [varchar](100) NULL,
	[url] [varchar](100) NULL,
	[vitri] [int] NULL,
 CONSTRAINT [PK_tblpartner] PRIMARY KEY CLUSTERED 
(
	[idpartner] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblnhomanh]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblnhomanh](
	[idnhomanh] [int] IDENTITY(1,1) NOT NULL,
	[idmodule] [int] NULL,
	[name] [nvarchar](500) NULL,
	[name_en] [nvarchar](500) NULL,
	[image] [varchar](50) NULL,
	[quotation] [ntext] NULL,
	[quotation_en] [ntext] NULL,
	[thutu] [int] NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_tblnhomanh] PRIMARY KEY CLUSTERED 
(
	[idnhomanh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblnhomanh] ON
INSERT [dbo].[tblnhomanh] ([idnhomanh], [idmodule], [name], [name_en], [image], [quotation], [quotation_en], [thutu], [active]) VALUES (6, NULL, N'Nhà thờ họ Bùi làng Xuân Bảng', NULL, N'../Images/Gallery/28112013_nhatho.jpg', NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[tblnhomanh] OFF
/****** Object:  Table [dbo].[tblnam]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnam](
	[idnam] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[positions] [int] NULL,
 CONSTRAINT [PK_tblnam] PRIMARY KEY CLUSTERED 
(
	[idnam] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblnam] ON
INSERT [dbo].[tblnam] ([idnam], [name], [positions]) VALUES (1, N'2012', 1)
SET IDENTITY_INSERT [dbo].[tblnam] OFF
/****** Object:  Table [dbo].[tblmodule]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblmodule](
	[idmodule] [int] IDENTITY(1,1) NOT NULL,
	[idparrent] [int] NULL,
	[name] [nvarchar](200) NULL,
	[positions] [int] NULL,
 CONSTRAINT [PK_tblmodule] PRIMARY KEY CLUSTERED 
(
	[idmodule] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblmodule] ON
INSERT [dbo].[tblmodule] ([idmodule], [idparrent], [name], [positions]) VALUES (1, 0, N'GIA PHẢ', 1)
INSERT [dbo].[tblmodule] ([idmodule], [idparrent], [name], [positions]) VALUES (2, 1, N'Họ Bùi Xuân Bảng', 1)
SET IDENTITY_INSERT [dbo].[tblmodule] OFF
/****** Object:  Table [dbo].[tblgiaphangoai]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblgiaphangoai](
	[idmodule] [int] IDENTITY(1,1) NOT NULL,
	[idgiapha] [int] NULL,
	[kieu] [int] NULL,
	[name] [nvarchar](200) NULL,
	[positions] [int] NULL,
	[gioitinh] [int] NULL,
	[namsinh] [nvarchar](200) NULL,
	[nammat] [nvarchar](200) NULL,
	[tinhtrang] [int] NULL,
	[diachi] [nvarchar](200) NULL,
	[tieusu] [nvarchar](1000) NULL,
	[noiantang] [nvarchar](200) NULL,
	[huongtho] [nvarchar](50) NULL,
	[tentu] [nvarchar](200) NULL,
	[nghenghiep] [nvarchar](200) NULL,
	[dienthoai] [nvarchar](200) NULL,
	[email] [nvarchar](200) NULL,
	[image] [varchar](50) NULL,
 CONSTRAINT [PK_tblgiaphangoai] PRIMARY KEY CLUSTERED 
(
	[idmodule] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblgiaphangoai] ON
INSERT [dbo].[tblgiaphangoai] ([idmodule], [idgiapha], [kieu], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image]) VALUES (10, 51, 1, N'Văn Thị Tứ', 1, 2, N'1927', N'02/02/2008 AL', 2, N'Xã Thanh Khai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Thanh Chương', N'82', N'Bùi Thị Diệu', N'Nông nghiệp', N'', N'', NULL)
INSERT [dbo].[tblgiaphangoai] ([idmodule], [idgiapha], [kieu], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image]) VALUES (21, 56, 1, N'Trần Thị Tú', 1, 2, N'26/07/1962', N'', 1, N'Xóm Phong Khánh, Xã Hưng Hòa, TP Vinh', N'', N'', N'', N'', N'Giáo viên', N'0983.260.763', N'', NULL)
INSERT [dbo].[tblgiaphangoai] ([idmodule], [idgiapha], [kieu], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image]) VALUES (22, 59, 1, N'Hồng Bích Ngọc', 1, 2, N'', N'', 1, N'TP Huế', N'', N'', N'', N'', N'Giáo viên', N'', N'', NULL)
INSERT [dbo].[tblgiaphangoai] ([idmodule], [idgiapha], [kieu], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image]) VALUES (23, 57, 1, N'Trần Văn Dũng', 1, 1, N'', N'', 1, N'Thị trấn Hưng Nguyên, Tỉnh Nghệ An', N'', N'', N'', N'', N'Giáo viên', N'', N'', NULL)
INSERT [dbo].[tblgiaphangoai] ([idmodule], [idgiapha], [kieu], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image]) VALUES (25, 130, 1, N'Bạch Sỹ Phương', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL)
INSERT [dbo].[tblgiaphangoai] ([idmodule], [idgiapha], [kieu], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image]) VALUES (26, 124, 1, N'Hồ Thị Tây', 1, 2, N'Không rõ', N'Không rõ', 2, N'Hà Đông Quận', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL)
INSERT [dbo].[tblgiaphangoai] ([idmodule], [idgiapha], [kieu], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image]) VALUES (27, 57, 0, N'Trần Thanh Hưng', 1, 1, N'1981', N'', 1, N'Thị trấn Hưng Nguyên, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[tblgiaphangoai] ([idmodule], [idgiapha], [kieu], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image]) VALUES (28, 57, 0, N'Trần Minh Châu', 2, 2, N'1987', N'', 1, N'Thị trấn Hưng Nguyên, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[tblgiaphangoai] OFF
/****** Object:  Table [dbo].[tblgiapha]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblgiapha](
	[idmodule] [int] IDENTITY(1,1) NOT NULL,
	[idparrent] [int] NULL,
	[iddoi] [int] NULL,
	[name] [nvarchar](200) NULL,
	[positions] [int] NULL,
	[gioitinh] [int] NULL,
	[namsinh] [nvarchar](200) NULL,
	[nammat] [nvarchar](200) NULL,
	[tinhtrang] [int] NULL,
	[diachi] [nvarchar](200) NULL,
	[tieusu] [nvarchar](1000) NULL,
	[noiantang] [nvarchar](200) NULL,
	[huongtho] [nvarchar](50) NULL,
	[tentu] [nvarchar](200) NULL,
	[nghenghiep] [nvarchar](200) NULL,
	[dienthoai] [nvarchar](200) NULL,
	[email] [nvarchar](200) NULL,
	[image] [varchar](50) NULL,
	[hienthi] [int] NULL,
 CONSTRAINT [PK_tblgiapha1] PRIMARY KEY CLUSTERED 
(
	[idmodule] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblgiapha] ON
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (24, 124, 2, N'Bùi Hữu Học', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (25, 124, 2, N'Bùi Hữu Bản', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">Thờ tại nh&agrave; thờ &ocirc;ng B&ugrave;i Minh.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (29, 24, 3, N'Bùi Hữu Đạo', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">&Ocirc;ng từng giữ chức Quan tri phủ. Thờ tại nh&agrave; thờ Đại t&ocirc;n.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (30, 24, 3, N'Bùi Hữu Lâm', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">&Ocirc;ng từng giữ chức Quan tri huyện. Thờ tại nh&agrave; thờ &ocirc;ng B&ugrave;i Thư.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (31, 24, 3, N'Bùi Hữu Tố', 3, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">&Ocirc;ng từng giữ chức Quan ứng triều. Thờ tại nh&agrave; thờ &ocirc;ng B&ugrave;i Quế.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (32, 24, 3, N'Bùi Hữu Lộc', 4, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">&Ocirc;ng từng giữ chức Quan văn chức. Thờ tại nh&agrave; thờ B&ugrave;i Hường.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (33, 29, 4, N'Bùi Hữu Tự', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">&Ocirc;ng từng giữ chức Quan gia tự. Thờ tại nh&agrave; thờ Đại t&ocirc;n.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (34, 29, 4, N'Bùi Hữu Tổng', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">&Ocirc;ng từng giữ chức Quan tri tổng. Thờ tại nh&agrave; thờ B&ugrave;i Cung.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (35, 33, 5, N'Bùi Bá Xất', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (36, 33, 5, N'Bùi Bá Chinh', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">&Ocirc;ng từng giữ chức Quan huyện kỳ. Thờ tại nh&agrave; thờ B&ugrave;i Đặng.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (37, 33, 5, N'Bùi Bá Phảng', 3, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (38, 35, 6, N'Bùi Văn Du', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (39, 35, 6, N'Bùi Văn Ới', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (40, 38, 7, N'Bùi Văn Do', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (41, 38, 7, N'Bùi Văn Soạn', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (42, 38, 7, N'Bùi Văn Đề', 3, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (43, 38, 7, N'Bùi Cu Văn', 4, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (44, 40, 8, N'Bùi Do Con', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (45, 40, 8, N'Bùi Văn Kế', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (46, 44, 9, N'Bùi Chân', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (47, 46, 10, N'Bùi Văn Thuần', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (48, 46, 10, N'Bùi Văn Cởn', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (49, 46, 10, N'Bùi Văn Thục', 3, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (50, 47, 11, N'Bùi Xuân Quang', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (51, 50, 12, N'Bùi Xuân Diệu', 1, 1, N'1922', N'16/11/2008 AL', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<div align="justify"><font size="2" face="Arial">&Ocirc;ng B&ugrave;i Xu&acirc;n Diệu l&agrave; con đầu của &ocirc;ng B&ugrave;i Xu&acirc;n Quang. Sinh ra v&agrave; lớn l&ecirc;n tại x&atilde; Thanh Y&ecirc;n, huyện Thanh Chương, tỉnh Nghệ An. &Ocirc;ng l&agrave;m nghề Gi&aacute;o vi&ecirc;n v&agrave; giữ chức Hiệu trưởng trong nhiều năm liền. &Ocirc;ng nghỉ hưu năm 1995. &Ocirc;ng sinh được 5 người con, 3 trai v&agrave; 2 g&aacute;i.</font></div>', N'Rú Ó, Xã Thanh Yên, Thanh Chương', N'87', N'Bùi Dục', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (52, 50, 12, N'Bùi Trọng Hoàn', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'Không rõ', N'Bùi Huy', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (53, 50, 12, N'Bùi Xuân Lạng', 3, 1, N'Chưa cập nhật', N'Chưa cập nhật', 2, N'TP Hải Phòng', N'', N'TP Hải Phòng', N'', N'Vũ Tuấn Giang', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (54, 50, 12, N'Bùi Xuân Minh', 4, 1, N'Không rõ', N'Không rõ', 2, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'Không rõ', N'Mạc Kỳ Long', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (55, 50, 12, N'Bùi Xuân Hồng', 5, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'Không rõ', N'Tử Long Kim', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (56, 51, 13, N'Bùi Minh Đức', 1, 1, N'02/09/1951', N'', 1, N'Số 18, Đường Trần Bình Trọng, Phường Đông Vĩnh, TP Vinh', N'', N'', N'', N'', N'Giáo viên', N'0989.065.790', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (57, 51, 13, N'Bùi Mỹ Dung', 2, 2, N'', N'', 1, N'Thị trấn Hưng Nguyên, Tỉnh Nghệ An', N'', N'', N'', N'', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (58, 51, 13, N'Bùi Xuân Trí', 3, 1, N'', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (59, 51, 13, N'Bùi Dũng Thể', 4, 1, N'1964', N'', 1, N'TP Huế', N'', N'', N'', N'', N'Giáo viên', N'0914.019.682', N'buidungthe@dng.vnn.vn', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (60, 51, 13, N'Bùi Mỹ Hạnh', 5, 2, N'1974', N'', 1, N'Xã Thanh Xuân, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (61, 52, 13, N'Bùi Kim Ngọc', 1, 1, N'', N'', 1, N'Tỉnh Bà Riạ', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (62, 52, 13, N'Bùi Xuân Tý', 2, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'Bùi Ngọc Đường', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (63, 52, 13, N'Bùi Văn Thìn', 3, 1, N'', N'', 1, N'Đăk Lắc', N'', N'', N'', N'Bùi Kiếm Linh', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (64, 52, 13, N'Bùi Văn Linh', 4, 1, N'', N'', 1, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (65, 54, 13, N'Bùi Trọng Thảo', 1, 1, N'Chưa cập nhật', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (66, 54, 13, N'Bùi Trọng Hiếu', 2, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (67, 54, 13, N'Bùi Trọng Mưu', 3, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (68, 54, 13, N'Bùi Trọng Đạt', 4, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (69, 55, 13, N'Bùi Phong', 2, 1, N'', N'', 1, N'Huyện Gia Viễn, Tỉnh Ninh Bình', N'', N'', N'', N'', N'Giáo viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (70, 55, 13, N'Bùi Hải', 3, 1, N'', N'', 1, N'Huyện Gia Viễn, Tỉnh Ninh Bình', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (71, 56, 14, N'Bùi Chí Nhân', 1, 1, N'21/06/1985', N'', 1, N'226 Nguyễn Trường Tộ, TP Vinh, Nghệ An', N'', N'', N'', N'', N'Web Designer', N'0915.555.977', N'buichinhan@gmail.com', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (72, 56, 14, N'Bùi Đại Nghĩa', 2, 1, N'07/11/1989', N'', 1, N'Số 18, Đường Trần Bình Trọng, Phường Đông Vĩnh, TP Vinh', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (73, 58, 14, N'Bùi Thanh Nam', 1, 1, N'1990', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'Sinh viên', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (74, 58, 14, N'Bùi Minh Tâm', 2, 2, N'1994', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (75, 59, 14, N'Bùi Thiên Phước', 1, 1, N'', N'', 1, N'TP Huế', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (76, 59, 14, N'Bùi Thiên An', 2, 2, N'', N'', 1, N'TP Huế', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (77, 59, 14, N'Bùi Thiên Bảo', 3, 1, N'', N'', 1, N'TP Huế', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (78, 61, 14, N'Bùi Dương', 1, 1, N'1984', N'', 1, N'Tỉnh Bà Riạ', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (79, 61, 14, N'Bùi Phong', 2, 1, N'1987', N'', 1, N'Tỉnh Bà Riạ', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (80, 62, 14, N'Bùi Thường', 1, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (81, 62, 14, N'Bùi Quý', 2, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (82, 63, 14, N'Bùi Kiên', 1, 1, N'', N'', 1, N'Đăk Lắc', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (83, 64, 14, N'Bùi Dũng Mạnh', 1, 1, N'1995', N'', 1, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (84, 65, 14, N'Bùi Hải', 1, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (85, 65, 14, N'Bùi Phương', 2, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (86, 67, 14, N'Bùi Đại Phong', 1, 1, N'2012', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (87, 67, 14, N'Bùi Tuấn Phong', 2, 1, N'2012', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (88, 68, 14, N'Bùi Tiến Dũng', 1, 1, N'', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (89, 69, 14, N'Bùi Xuân Sơn', 1, 1, N'', N'', 1, N'Huyện Gia Viễn, Tỉnh Ninh Bình', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (90, 48, 11, N'Bùi Đào', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (91, 48, 11, N'Bùi Văn Xan', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (92, 48, 11, N'Bùi Văn Khoan', 3, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (93, 49, 11, N'Bùi Văn Chúc', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'Bùi Thản', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (94, 49, 11, N'Bùi Văn Côn', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (95, 90, 12, N'Bùi Văn Liệu', 1, 1, N'Chưa cập nhật', N'Chưa cập nhật', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Chua c?p nh?t', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (96, 90, 12, N'Bùi Văn Phước', 2, 1, N'Chưa cập nhật', N'', 1, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (97, 91, 12, N'Bùi Văn Sơn', 1, 1, N'Không rõ', N'', 1, N'TP Vinh, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (98, 91, 12, N'Bùi Văn Tú', 2, 1, N'Chưa cập nhật', N'', 1, N'Chưa cập nhật', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (99, 91, 12, N'Bùi Văn Ngọc', 3, 1, N'Không rõ', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (100, 92, 12, N'Bùi Văn Hùng', 1, 1, N'Chưa cập nhật', N'Chưa cập nhật', 2, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Chưa cập nhật', N'Chua c?p nh?t', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (101, 92, 12, N'Bùi Văn Hải', 2, 1, N'Chưa cập nhật', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (102, 92, 12, N'Bùi Văn Dương', 3, 1, N'Chưa cập nhật', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (103, 92, 12, N'Bùi Văn Hưng', 4, 1, N'Chưa cập nhật', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (104, 92, 12, N'Bùi Văn Dũng', 5, 1, N'Chưa cập nhật', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (105, 93, 12, N'Bùi Ngọc Trân', 1, 1, N'Chưa cập nhật', N'', 1, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'Nông nghiệp', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (106, 93, 12, N'Bùi Lân', 2, 1, N'Chưa cập nhật', N'', 1, N'TP Vinh, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (107, 94, 12, N'Bùi Chung', 1, 1, N'Chưa cập nhật', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (108, 94, 12, N'Bùi Đồng', 2, 1, N'Chưa cập nhật', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (109, 96, 13, N'Bùi Văn Long', 1, 1, N'', N'', 1, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (110, 96, 13, N'Bùi Văn Linh', 2, 1, N'', N'', 1, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (111, 97, 13, N'Bùi Tân', 1, 1, N'', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (112, 97, 13, N'Bùi Hương', 2, 1, N'', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (113, 98, 13, N'Bùi Minh', 1, 1, N'', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (114, 99, 13, N'Bùi Hồng', 1, 1, N'', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (115, 100, 13, N'Bùi Lâm', 1, 1, N'', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (116, 101, 13, N'Bùi Duy', 1, 1, N'', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (117, 103, 13, N'Bùi Tuấn', 1, 1, N'', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (118, 105, 13, N'Bùi Tuấn', 1, 1, N'', N'', 1, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (119, 106, 13, N'Bùi Hoàng', 1, 1, N'', N'', 1, N'TP Vinh, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (120, 107, 13, N'Bùi Thành', 1, 1, N'', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (121, 107, 13, N'Bùi Hữu', 2, 1, N'', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (122, 108, 13, N'Bùi Nhân', 1, 1, N'', N'', 1, N'Xã Thanh Mai, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (123, 71, 15, N'Bùi Lê Thảo Nhi', 1, 2, N'06/06/2013', N'', 1, N'226 Nguyễn Trường Tộ, TP Vinh, Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (124, 0, 1, N'Bùi Bá Đông', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (130, 50, 12, N'Bùi Thị Thanh', 6, 2, N'Không rõ', N'', 1, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'', N'', N'', N'Bạch Thị Dung', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (131, 50, 12, N'Bùi Thị Tám', 7, 2, N'Không rõ', N'', 1, N'Huyện Tân Kỳ, Tỉnh Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (133, 53, 13, N'Bùi Thị Liên', 1, 2, N'Chưa cập nhật', N'', 1, N'TP Hải Phòng', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (134, 53, 13, N'Bùi Thị Hương', 2, 2, N'Chưa cập nhật', N'', 1, N'TP Hải Phòng', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (135, 55, 13, N'Bùi Thị Hà', 1, 2, N'Chưa cập nhật', N'', 1, N'Huyện Gia Viễn, Tỉnh Ninh Bình', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (136, 34, 5, N'Bùi Văn Tụy', 1, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">Thờ nh&agrave; thờ &ocirc;ng B&ugrave;i Cung.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (137, 34, 5, N'Bùi Văn Lơi', 2, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">Thờ nh&agrave; thờ &ocirc;ng B&ugrave;i L&yacute;.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (138, 34, 5, N'Bùi Văn Nguyên', 3, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">Thờ nh&agrave; thờ &ocirc;ng B&ugrave;i Thuận.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (139, 34, 5, N'Bùi Văn Hằng', 4, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">Thờ nh&agrave; thờ &ocirc;ng B&ugrave;i An.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (140, 34, 5, N'Bùi Văn Chất', 5, 1, N'Không rõ', N'Không rõ', 2, N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'<font size="2" face="Arial">Thờ nh&agrave; thờ &ocirc;ng B&ugrave;i Thịnh.</font>', N'Rú Ó, Xã Thanh Yên, Huyện Thanh Chương', N'Không rõ', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[tblgiapha] ([idmodule], [idparrent], [iddoi], [name], [positions], [gioitinh], [namsinh], [nammat], [tinhtrang], [diachi], [tieusu], [noiantang], [huongtho], [tentu], [nghenghiep], [dienthoai], [email], [image], [hienthi]) VALUES (141, 71, 15, N'Bùi Thị Hà Lê', 2, 2, N'04/04/2015', N'', 1, N'226 Nguyễn Trường Tộ, TP Vinh, Nghệ An', N'', N'', N'', N'', N'', N'', N'', NULL, 1)
SET IDENTITY_INSERT [dbo].[tblgiapha] OFF
/****** Object:  Table [dbo].[tbldoi]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbldoi](
	[iddoi] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[positions] [int] NULL,
 CONSTRAINT [PK_tbldoi] PRIMARY KEY CLUSTERED 
(
	[iddoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbldoi] ON
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (1, N'I', 1)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (2, N'II', 2)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (3, N'III', 3)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (4, N'IV', 4)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (5, N'V', 5)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (6, N'VI', 6)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (7, N'VII', 7)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (8, N'VIII', 8)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (9, N'IX', 9)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (10, N'X', 10)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (11, N'XI', 11)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (12, N'XII', 12)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (13, N'XIII', 13)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (14, N'XIV', 14)
INSERT [dbo].[tbldoi] ([iddoi], [name], [positions]) VALUES (15, N'XV', 15)
SET IDENTITY_INSERT [dbo].[tbldoi] OFF
/****** Object:  Table [dbo].[tblcongduc]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcongduc](
	[idcongduc] [int] IDENTITY(1,1) NOT NULL,
	[idnam] [int] NULL,
	[name] [nvarchar](1000) NULL,
	[sotien] [nvarchar](1000) NULL,
	[ghichu] [nvarchar](1000) NULL,
	[positions] [int] NULL,
 CONSTRAINT [PK_tblcongduc] PRIMARY KEY CLUSTERED 
(
	[idcongduc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblcongduc] ON
INSERT [dbo].[tblcongduc] ([idcongduc], [idnam], [name], [sotien], [ghichu], [positions]) VALUES (1, 1, N'', N'Thiết kế web', N'Chi Đại tôn', NULL)
SET IDENTITY_INSERT [dbo].[tblcongduc] OFF
/****** Object:  Table [dbo].[tblconfig]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblconfig](
	[idconfig] [int] IDENTITY(1,1) NOT NULL,
	[sitename] [nvarchar](1000) NULL,
	[tencongdong] [nvarchar](1000) NULL,
	[tendongho] [nvarchar](1000) NULL,
	[diachidongho] [nvarchar](1000) NULL,
	[tinhthanh] [nvarchar](1000) NULL,
	[nambiensoan] [nvarchar](1000) NULL,
	[nguoibiensoan] [nvarchar](1000) NULL,
	[nguoilienhe] [nvarchar](1000) NULL,
	[diachi] [nvarchar](1000) NULL,
	[email] [nvarchar](1000) NULL,
	[dienthoai] [nvarchar](1000) NULL,
	[footer] [ntext] NULL,
	[keyword] [ntext] NULL,
	[descs] [ntext] NULL,
	[phaky] [ntext] NULL,
	[tuduong] [ntext] NULL,
	[tocuoc] [ntext] NULL,
	[aboutus2] [ntext] NULL,
	[aboutus3] [ntext] NULL,
	[aboutus4] [ntext] NULL,
	[aboutus5] [ntext] NULL,
	[aboutus6] [ntext] NULL,
	[aboutus7] [ntext] NULL,
	[aboutus8] [ntext] NULL,
 CONSTRAINT [PK_tblconfig] PRIMARY KEY CLUSTERED 
(
	[idconfig] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblconfig] ON
INSERT [dbo].[tblconfig] ([idconfig], [sitename], [tencongdong], [tendongho], [diachidongho], [tinhthanh], [nambiensoan], [nguoibiensoan], [nguoilienhe], [diachi], [email], [dienthoai], [footer], [keyword], [descs], [phaky], [tuduong], [tocuoc], [aboutus2], [aboutus3], [aboutus4], [aboutus5], [aboutus6], [aboutus7], [aboutus8]) VALUES (2, N'Họ Bùi Xuân Bảng | Cộng đồng họ Bùi Nghệ An', N'CỘNG ĐỒNG HỌ BÙI VIỆT NAM', N'0989.065.790', N'Xã Thanh Yên, Huyện Thanh Chương, Tỉnh Nghệ An', N'Nghệ An', N'2013', N'Bùi Minh Đức', N'Bùi Chí Nhân', N'Số 18, Đường Trần Bình Trọng, Phường Đông Vĩnh, TP Vinh', N'buichinhan@gmail.com', N'0915.555.977', N'Họ B&ugrave;i Xu&acirc;n Bảng | Cộng đồng họ B&ugrave;i Nghệ An', N'họ bùi, họ bùi nghệ an, xuân bảng, họ bùi xuân bảng, thanh yên, xã thanh yên, thanh chương, huyện thanh chương', NULL, N'<div align="justify"><font size="2" face="Arial"><strong>N&oacute;i về l&agrave;ng Xu&acirc;n Bảng</strong><br />
<br />
Ng&agrave;y xưa đầu ti&ecirc;n gọi l&agrave; Kẻ &Oacute; sau đ&oacute; họi l&agrave; Xu&acirc;n Ổ rồi đến Xu&acirc;n Bảng.  L&agrave;ng c&oacute;: Hờ &Oacute;, Cầu &Oacute;, B&atilde;i &Oacute;, Chợ &Oacute;, Đ&igrave;nh &Oacute;, B&agrave;u &Oacute;, Đền &Oacute;, N&uacute;i &Oacute;. Nay chợ  &Oacute; do chiến tranh chống Mỹ giải t&aacute;n chợ, đ&igrave;nh &Oacute; sau cải c&aacute;ch ruộng đất  l&ecirc;n x&acirc;y dựng hợp t&aacute;c x&atilde;, dỡ l&agrave;m trường học phổ th&ocirc;ng. <br />
<br />
L&agrave;ng chia th&agrave;nh hai nh&aacute;nh lớn l&agrave; Trung Nội v&agrave; Ba Gi&aacute;p. Trung Nội c&oacute; 5 thẻ<em> (nhất, nh&igrave;,...) </em>Ba Gi&aacute;p c&oacute; Đ&ocirc;ng Nội, Đ&ocirc;ng Ngoại v&agrave; Trung Ngoại. L&agrave;ng đầu ti&ecirc;n c&oacute; 9 x&oacute;m <em>(Đầu Xu&ocirc;i, Đầu Ngược, X&oacute;m Chợ, Mũi Ry, L&agrave;ng R&uacute;, B&agrave;u Dầy, Ba Ba, X&oacute;m Ch&ugrave;a, L&agrave;ng Nồi)</em> sau lập th&ecirc;m x&oacute;m Cồn Đ&ocirc;ng th&agrave;nh 10 x&oacute;m. <br />
<br />
Sau c&aacute;ch mạng th&aacute;ng T&aacute;m Xu&acirc;n Bảng đổi t&ecirc;n x&atilde; đầu ti&ecirc;n l&agrave; Nhật T&acirc;n, sau  đến Nhật Tiến rồi đến Minh Tiến v&agrave; b&acirc;y giờ l&agrave; x&atilde; Thanh Y&ecirc;n, Thanh Lương  huyện Thanh Chương. Xu&acirc;n Bảng trước c&oacute; con dấu ri&ecirc;ng của l&agrave;ng, c&ograve;n Kẻ  Nại v&agrave; Kẻ Đồng thuộc con dấu ri&ecirc;ng của họ. Ng&agrave;y xưa cứ mồng 4 tết l&agrave;ng  tổ chức tr&ograve; bơi giữa B&agrave;u &Oacute; <em>(Ba Gi&aacute;p v&agrave; Trung Nội thi với nhau)</em>,  h&aacute;t tuồng đ&ecirc;m ngay tại Đ&igrave;nh &Oacute; v&agrave; cứ ba năm một lần lại tổ chức tr&ograve; x&atilde; lễ  hội tế thần, hai l&agrave;ng Văn Giai v&agrave; Xu&acirc;n Bảng rước kiệu nghinh thần từ  đền tả sang đền hữu c&oacute; ngựa, voi, tướng sĩ đi c&ugrave;ng vui li&ecirc;n hoan trong  ba ng&agrave;y từ mồng 4 đến mồng 7 th&aacute;ng gi&ecirc;ng hạ n&ecirc;u. <br />
<br />
Đền Hữu c&ograve;n c&oacute; t&ecirc;n gọi l&agrave; Đền Cả <em>(hay Đền &Oacute; ch&iacute;nh chỉ một ng&ocirc;i đền)</em> c&ograve;n Đền Tả l&agrave; Đền Gang bom đạn Mỹ đ&atilde; đ&aacute;nh ph&aacute; n&ecirc;n rước ng&agrave;y quy tụ về Đền Hữu c&ugrave;ng thờ bấy l&acirc;u nay. <br />
<br />
<strong>N&oacute;i về họ B&ugrave;i l&agrave;ng Xu&acirc;n Bảng </strong><br />
<br />
Do gia phả gốc kh&ocirc;ng c&ograve;n chỉ được nghe c&aacute;c người gi&agrave; trước truyền lại  &ocirc;ng tổ B&ugrave;i B&aacute; Đ&ocirc;ng b&agrave; tổ B&ugrave;i Thị T&acirc;y v&agrave;o đ&acirc;y đ&atilde; l&acirc;u lắm rồi. L&agrave; một họ  khai sinh lập địa v&ugrave;ng n&agrave;y đầu ti&ecirc;n, sau mới đến họ Nguyễn Duy, họ  Nguyễn Văn, họ Nguyễn Cảnh v&agrave; lần lượt c&aacute;c họ kh&aacute;c. <br />
<br />
Theo b&uacute;t t&iacute;ch ng&agrave;y xưa để lại: <em><strong>&quot;H&agrave; Đ&ocirc;ng thế hệ thập tam chi, Huynh đệ tam nh&acirc;n đ&aacute;i ư phụ mẫu&quot;</strong></em>.  C&oacute; nghĩa &ocirc;ng tổ B&ugrave;i B&aacute; Đ&ocirc;ng l&agrave; thế hệ đời thứ 13 ngo&agrave;i Bắc v&agrave;o, gồm 3  anh em mang theo h&agrave;i cốt cha mẹ v&agrave;o miền Trung c&aacute;t t&aacute;ng tại l&agrave;ng Đặng  X&aacute;. Từ đ&oacute; 3 người đi ba hướng. Một người về Ph&uacute; Lập - Thanh Chương, một  người về Đ&ocirc; Lương, một người sang H&agrave; Tĩnh. Người ph&uacute; lập sinh hai anh  em, anh ở Ph&uacute; Lập, cha v&agrave; em sang Xu&acirc;n Ổ l&agrave; Xu&acirc;n Bảng nay l&agrave; x&atilde; Thanh  Y&ecirc;n, Thanh Lương huyện Thanh Chương <em>(theo phả ch&iacute; của họ B&ugrave;i Th&aacute;i B&igrave;nh x&atilde; Thanh Mai th&igrave; &ocirc;ng tổ của ta l&agrave; ch&aacute;u B&ugrave;i Cầm Hổ). </em><br />
<br />
Do &ocirc;ng tổ họ B&ugrave;i v&agrave;o đ&acirc;y sớm, c&oacute; nhiều c&ocirc;ng lao khai khẩn n&uacute;i đồi đồng  b&atilde;i n&ecirc;n trước đ&acirc;y cứ đến ng&agrave;y mồng bốn th&aacute;ng gi&ecirc;ng hội đồng l&agrave;ng Xu&acirc;n  Bảng tổ chức đến thắm hương tại nh&agrave; thờ tổ họ B&ugrave;i tộc. L&agrave;ng c&ograve;n cắt cho  họ B&ugrave;i h&agrave;ng chục ha đất, từ bến C&acirc;y Da cừa l&ecirc;n đến cầu B&agrave;u Dầy <em>(t&iacute;ch gọi l&agrave; vện họ B&ugrave;i)</em> cắt phần lớn diện t&iacute;ch n&uacute;i Giếng, n&uacute;i Bụt<em> (t&iacute;ch gọi n&uacute;i Giếng, n&uacute;i Bụt họ B&ugrave;i)</em>  cũng ch&iacute;nh tr&ecirc;n ngọn n&uacute;i n&agrave;y l&agrave; nơi họ B&ugrave;i t&aacute;ng ng&ocirc;i mộ tổ. Sau n&agrave;y dời  d&acirc;n l&ecirc;n đồi, họ B&ugrave;i đ&atilde; bốc ng&ocirc;i mộ tổ về t&aacute;ng tại ph&iacute;a Nam n&uacute;i &Aacute;n.  Ngo&agrave;i diện t&iacute;ch đồi l&atilde;i l&agrave;ng c&ograve;n cắt một số rộng của b&agrave;u, ruộng ch&ugrave;a để  họ l&agrave;m hương kh&oacute;i phụng thờ tổ ti&ecirc;n. </font><br />
</div>', N'<div align="justify"><font size="2" face="Arial">Khu&ocirc;n vi&ecirc;n nh&agrave; thờ họ B&ugrave;i Xu&acirc;n Bảng tại x&atilde; Thanh Y&ecirc;n, huyện Thanh Chương vẫn giữ nguy&ecirc;n n&eacute;t cổ k&iacute;nh từ thời xa xưa. <br />
<br />
Nh&agrave; thờ thượng đường bao gồm 3 gian 2 hồi, được l&agrave;m bằng gỗ lim m&iacute;t. Nh&agrave;  lợp bằng ng&oacute;i vảy trước. Gian ch&iacute;nh giữa c&oacute; ba cỗ linh tọa thờ thủy tổ:  &ocirc;ng B&ugrave;i B&aacute; Đ&ocirc;ng, b&agrave; Hồ Thị T&acirc;y v&agrave; Ti&ecirc;n Tằng Tổ. Tr&ecirc;n b&agrave;n thờ c&oacute; bức  ho&agrave;nh phi sơn son thiếp v&agrave;ng khắc 4 chữ H&aacute;n lớn<strong> &ldquo;Kh&aacute;nh Triều Vũ Lỗ&rdquo;</strong> của vua ban, hai b&ecirc;n hai liễn c&acirc;u đối sơn son khắc chữ h&aacute;n được dịch l&agrave; : <strong>&ldquo;Dịch thế tịch tuy hoa tổ đức - Cửu thi&ecirc;n lu&acirc;n lũ ho&agrave;ng &acirc;n&rdquo; </strong>với &yacute; nghĩa được hiểu l&agrave; : <em><strong>&ldquo;Họ h&agrave;ng y&ecirc;n ổn tổ đức hoa thơm - Giải lĩnh hồng ơn vua xuy&ecirc;n suốt m&atilde;i&rdquo;</strong></em>.  Gian b&ecirc;n phải v&agrave; tr&aacute;i thờ mục,&nbsp; thờ chi&ecirc;u c&oacute; 3 cỗ linh tọa. Gian hồi  nh&agrave; b&ecirc;n phi thờ b&agrave; tổ c&ocirc; Động c&ocirc;ng ch&uacute;a ngọc nữ Thi&ecirc;n Vương. Trong nh&agrave;  thờ thượng đường gian giữa c&oacute; hương &aacute;n hạc chầu, c&oacute; gươm đao m&atilde; tấu,  lọng t&agrave;n.</font><br />
<br />
<font size="2" face="Arial">Nh&agrave; thờ hạ đường cũng bao gồm 3 gian 2 hồi,  được l&agrave;m bằng gỗ lim m&iacute;t, kiến tr&uacute;c kiểu tứ trụ, quai giang suốt hai  h&agrave;ng cột hai b&ecirc;n, giữa trốn cột c&aacute;i. Nh&agrave; hạ l&agrave;m kiểu lồng đ&igrave;nh rộng r&atilde;i,  tho&aacute;ng m&aacute;t để con ch&aacute;u ngồi hội tụ trong những ng&agrave;y giỗ, ng&agrave;y tết.</font><br />
<br />
<font size="2" face="Arial">Gian ch&iacute;nh hạ đường được thiết lập một b&agrave;n  thờ dọc nằm tr&ecirc;n quai giang để thờ quan gi&aacute;m thủ từ đường quan vị Thi&ecirc;n  Thần hiệu Đại tướng c&ocirc;ng đại tướng thần. Việc thiết lập b&agrave;n thờ vị quan  thi&ecirc;n thần tại nh&agrave; thờ hạ đường, ng&agrave;y trước b&aacute;c tộc trưởng nu&ocirc;i thầy T&uacute;  &Ocirc;n ở trong nh&agrave; để dạy chữ nho cho con ch&aacute;u. C&oacute; một đ&ecirc;m vị quan thi&ecirc;n  thần nhập v&agrave;o thầy T&uacute; &Ocirc;n bảo:<em> &ldquo;&Ocirc;ng dạy chữ cho con ch&aacute;u ta l&agrave; tốt,  nhưng &ocirc;ng bảo với họ ta l&agrave; bậc con ch&aacute;u của họ B&ugrave;i song chức tước lại  cao hơn, ngồi ngang h&agrave;ng với tổ ti&ecirc;n kh&ocirc;ng được. Nếu lập thờ ri&ecirc;ng ta ở,  kh&ocirc;ng th&igrave; ta đi&rdquo;</em>. Từ đ&oacute; họ B&ugrave;i đ&atilde; thiết lập b&agrave;n thờ dọc tại nh&agrave; hạ đường để thờ ng&agrave;i. Hiệu l&agrave; quan gi&aacute;m thủ từ đường quan vị thi&ecirc;n thần hiệu: <strong>Đại tướng c&ocirc;ng, đại tướng thần.</strong></font><br />
<br />
<font size="2" face="Arial">Cổng nh&agrave; thờ được l&agrave;m theo kiến tr&uacute;c kiểu  nh&agrave; tam quan, lầu chu&ocirc;ng cửa cuốn. Hai tầng h&igrave;nh hộp 8 m&aacute;i lợp ng&oacute;i vảy.  Hai mặt b&ecirc;n h&igrave;nh quyết trụ c&oacute; hai c&acirc;u đối chữ H&aacute;n được dịch: <strong>&ldquo;Lu&acirc;n thường lương đ&oacute;ng dư - Tuấn dung long m&ocirc;n kho&aacute;t&rdquo;</strong> với &yacute; nghĩa được hiểu l&agrave; :<em><strong> &ldquo;Lu&acirc;n thường đạo l&yacute; nh&agrave; phượng bao la - Cưỡi ngựa vinh quy cửa rồng rộng mở&rdquo;.</strong></em></font><br />
<br />
<font size="2" face="Arial">Lễ giỗ tổ của họ B&ugrave;i ở l&agrave;ng Xu&acirc;n Bảng được  tổ chức v&agrave;o ng&agrave;y 28 th&aacute;ng 7 &acirc;m lịch h&agrave;ng năm thờ &ocirc;ng thuỷ tổ thần B&ugrave;i B&aacute;  Đ&ocirc;ng. Đến ng&agrave;y giỗ họ, d&ugrave; bận đến đ&acirc;u, con ch&aacute;u cũng cố gắng thu xếp về  dự bởi đ&acirc;y l&agrave; dịp để gặp mặt đ&ocirc;ng đủ. Anh em, ch&aacute;u con trong họ, được  chuyện tr&ograve;, &ocirc;n lại những năm th&aacute;ng vất vả v&agrave; thấy m&igrave;nh phải phấn đấu hơn  nữa để l&agrave;m vẻ vang d&ograve;ng tộc; khấn cầu cho d&ograve;ng họ lu&ocirc;n đo&agrave;n kết, c&ugrave;ng  nhau vun đắp cuộc sống ấm no, c&acirc;y Ph&uacute;c mu&ocirc;n đời lu&ocirc;n m&atilde;i m&atilde;i vươn cao.</font></div>', N'Tộc ước', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblconfig] OFF
/****** Object:  Table [dbo].[tblcat]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblcat](
	[idcat] [int] IDENTITY(1,1) NOT NULL,
	[idmodule] [int] NULL,
	[idvan] [int] NULL,
	[idthoiky] [int] NULL,
	[iddiadanh] [int] NULL,
	[title] [nvarchar](1000) NULL,
	[image] [varchar](50) NULL,
	[quotation] [ntext] NULL,
	[content] [ntext] NULL,
	[top1] [int] NULL,
	[ngaycapnhat] [varchar](50) NULL,
 CONSTRAINT [PK_tblcat] PRIMARY KEY CLUSTERED 
(
	[idcat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblcat] ON
INSERT [dbo].[tblcat] ([idcat], [idmodule], [idvan], [idthoiky], [iddiadanh], [title], [image], [quotation], [content], [top1], [ngaycapnhat]) VALUES (8, 2, NULL, NULL, NULL, N'Nhân ngày giỗ tổ họ Bùi làng Xuân Bảng - Nghĩ về nguồn cội', N'../Images/Tintuc/tin1.jpg', N'Trong truyền thống văn hóa của người Việt Nam, đạo lý “Uống nước nhớ nguồn” luôn luôn được đề cao. Thờ cúng tổ tiên là một hình thức tín ngưỡng thể hiện rõ nét truyền thống ấy. Nhân ngày giỗ tổ họ Bùi ở làng Xuân Bảng (Thanh Yên - Thanh Chương - Nghệ An) vào ngày 28/07 AL, xin có đôi lời về truyền thống cúng giỗ tổ tiên của người Việt Nam nói chung và của họ Bùi ở làng Xuân Bảng nói riêng...', N'<div align="justify"><strong><font size="2" face="Arial">Giỗ họ - t&iacute;n ngưỡng bảo tồn n&eacute;t truyền thống của người Việt Nam </font></strong><br />
<br />
<font size="2" face="Arial">Trong truyền thống văn h&oacute;a của người Việt  Nam, đạo l&yacute; <em>&ldquo;uống nước nhớ nguồn&rdquo;</em> lu&ocirc;n lu&ocirc;n được đề cao. Thờ c&uacute;ng tổ  ti&ecirc;n l&agrave; một h&igrave;nh thức t&iacute;n ngưỡng thể hiện r&otilde; n&eacute;t truyền thống ấy. </font><br />
<br />
<font size="2" face="Arial">Đ&acirc;y l&agrave; một phong tục kh&ocirc;ng bắt buộc nhưng  lại gần như l&agrave; thứ &quot;luật bất th&agrave;nh vǎn&quot; trong đời sống t&acirc;m linh của  người Việt tồn tại qua bao thế hệ. Người Việt Nam coi việc thờ phụng tổ  ti&ecirc;n l&agrave; thể hiện sự hiếu thuận v&agrave; l&ograve;ng biết ơn của con ch&aacute;u đối với c&ocirc;ng  ơn c&aacute;c bậc sinh th&agrave;nh. Đối với người Việt, mối quan hệ huyết thống,  th&acirc;n tộc v&ocirc; c&ugrave;ng quan trọng. D&ugrave; đi xa hay gần, mỗi người đều lu&ocirc;n &yacute; thức  về cội nguồn, tổ ti&ecirc;n, d&ograve;ng họ của m&igrave;nh. </font><br />
<br />
<font size="2" face="Arial">Theo Gi&aacute;o sư Vũ Ngọc Kh&aacute;nh, Viện Văn h&oacute;a d&acirc;n  gian Việt Nam, những năm trở lại đ&acirc;y, c&aacute;c phong tục, nghi lễ văn h&oacute;a  truyền thống ng&agrave;y c&agrave;ng được to&agrave;n thể x&atilde; hội quan t&acirc;m, ch&uacute; trọng. Nghi lễ  gia đ&igrave;nh, d&ograve;ng họ ở một kh&iacute;a cạnh n&agrave;o đ&oacute;, cũng ch&iacute;nh l&agrave; một di sản văn  ho&aacute; phi vật thể. N&oacute; được lưu giữ từ thế hệ n&agrave;y sang thế hệ kh&aacute;c, từ c&aacute;  nh&acirc;n n&agrave;y đến c&aacute; nh&acirc;n kh&aacute;c. </font><br />
<br />
<font size="2" face="Arial">Rất cần c&oacute; phương &aacute;n g&igrave;n giữ, lưu truyền để  c&aacute;c thế hệ người Việt sau n&agrave;y c&oacute; được c&aacute;i nh&igrave;n đầy đủ về cội nguồn d&acirc;n  tộc. <em>&quot;Tuy nhi&ecirc;n hiện nay, điều cần nhất l&agrave; l&agrave;m sao đưa ra được những  nghi lễ vừa bảo tồn được n&eacute;t truyền thống, lại vừa ph&ugrave; hợp với x&atilde; hội  hiện đại. C&aacute;ch thức tổ chức cũng cần tiến h&agrave;nh sao cho vẫn thể hiện được  đầy đủ &yacute; nghĩa, m&agrave; kh&ocirc;ng qu&aacute; xa hoa l&atilde;ng ph&iacute;&quot;</em>, gi&aacute;o sư Kh&aacute;nh n&oacute;i. </font><br />
<br />
<strong><font size="2" face="Arial">...V&agrave; giỗ tổ họ B&ugrave;i ở l&agrave;ng Xu&acirc;n Bảng </font></strong><br />
<br />
<font size="2" face="Arial">Lễ giỗ tổ của họ B&ugrave;i ở l&agrave;ng Xu&acirc;n Bảng tại X&atilde;  Thanh Y&ecirc;n, huyện Thanh Chương v&agrave;o ng&agrave;y 28/07 &acirc;m lịch h&agrave;ng năm thờ &ocirc;ng  thuỷ tổ thần B&ugrave;i B&aacute; Đ&ocirc;ng. Mọi việc chuẩn bị cho ng&agrave;y giỗ từ mua sắm đồ  lễ đều phải chuẩn bị từ trước v&agrave; ho&agrave;n th&agrave;nh v&agrave;o chiều ng&agrave;y 27. Từ chiều  h&ocirc;m trước, vị trưởng tộc triệu tập đại diện c&aacute;c chi về từ đường để b&agrave;n  về việc tổ chức như thế n&agrave;o cho c&oacute; &yacute; nghĩa, vừa trang nghi&ecirc;m vừa th&agrave;nh  k&iacute;nh, đồng thời cũng l&agrave; ng&agrave;y con ch&aacute;u gặp nhau, trước l&agrave; thắp hương d&acirc;ng  lễ nhớ ơn tổ ti&ecirc;n, sau l&agrave; tr&ograve; chuyện hỏi thăm về sức khỏe, l&agrave;m ăn, việc  học h&agrave;nh của con ch&aacute;u.... </font><br />
<br />
<font size="2" face="Arial">Chi ph&iacute; để tổ chức trong ng&agrave;y giỗ họ được  lấy từ số tiền đ&oacute;ng g&oacute;p của con ch&aacute;u trong d&ograve;ng họ <em>(được gọi l&agrave; quĩ họ)</em>  theo c&aacute;c suất<em> &ldquo;đinh&rdquo;</em> tức l&agrave; chỉ c&oacute; con trai đ&oacute;ng g&oacute;p, những người đ&atilde; lấy  vợ được cho l&agrave; đ&atilde; trưởng th&agrave;nh đều c&oacute; tr&aacute;ch nhiệm đ&oacute;ng g&oacute;p. </font><br />
<br />
<font size="2" face="Arial">Con ch&aacute;u đi l&agrave;m ăn, c&ocirc;ng t&aacute;c ở xa th&igrave; kh&ocirc;ng  quy định số tiền đ&oacute;ng, m&agrave; cho ph&eacute;p t&ugrave;y t&acirc;m nhưng những người n&agrave;y thường  đ&oacute;ng g&oacute;p nhiều hơn với quan niệm tỏ l&ograve;ng biết ơn tổ ti&ecirc;n d&ograve;ng họ đ&atilde; &quot;ph&ugrave;  hộ&quot; cho m&igrave;nh l&agrave;m ăn ph&aacute;t đạt, thuận lợi. </font><br />
<br />
<font size="2" face="Arial">Tr&aacute;ch nhiệm tiến h&agrave;nh tổ chức giỗ do ban lễ  nghi chịu tr&aacute;ch nhiệm. C&aacute;c th&agrave;nh vi&ecirc;n kh&aacute;c trong họ sẽ được ph&acirc;n c&ocirc;ng  từng việc cụ thể. Theo phong tục, chiều 27 con ch&aacute;u l&agrave;m lễ c&uacute;ng gọi l&agrave; <em> &quot;tế c&aacute;o&quot;</em>, mời tổ ti&ecirc;n về, s&aacute;ng h&ocirc;m sau l&agrave; lễ <em>&quot;tế ch&iacute;nh&quot;</em>. Tất cả con ch&aacute;u  xa gần đều được th&ocirc;ng b&aacute;o về dự lễ . </font><br />
<br />
<font size="2" face="Arial">Lễ giỗ họ được tổ chức tại Từ đường, x&acirc;y  tr&ecirc;n mảnh đất hương hỏa tổ ti&ecirc;n để lại. Trước khi l&agrave;m lễ tất cả b&agrave; con  trong họ đứng trang nghi&ecirc;m v&agrave; th&agrave;nh k&iacute;nh nh&igrave;n l&ecirc;n l&aacute; cờ tổ quốc v&agrave; cờ  họ, b&agrave;i Tộc ca <em>&quot;B&agrave;i ca Họ B&ugrave;i&quot;</em> được h&aacute;t vang l&ecirc;n. Khi l&agrave;m lễ, con ch&aacute;u  quỳ trước b&agrave;n thờ tổ, trưởng họ đứng trước b&agrave;n thờ tổ đọc b&agrave;i văn khấn  tổ ti&ecirc;n, sau đ&oacute; đọc lịch sử d&ograve;ng họ v&agrave; đ&acirc;y l&agrave; c&aacute;ch nhắc nhở con ch&aacute;u nhớ  đến c&ocirc;ng ơn tổ ti&ecirc;n v&agrave; để gi&aacute;o dục c&aacute;c thế hệ hậu sinh về truyền thống,  gia phong của gia tộc... </font><br />
<br />
<font size="2" face="Arial">Sau khi tiến h&agrave;nh xong hết c&aacute;c nghi lễ c&uacute;ng,  ban lễ nghi sẽ đi chấm điểm từng m&acirc;m cỗ v&agrave; trao giải thưởng cho c&aacute;c m&acirc;m  cỗ c&oacute; g&agrave; c&uacute;ng đẹp. Tiếp đến, c&aacute;c trưởng chi sẽ ngồi lại họp b&agrave;n về c&ocirc;ng  việc chung của họ, cụ thể l&agrave; tổng kết c&ocirc;ng việc năm trước v&agrave; l&ecirc;n kế  hoạch cho năm sau. </font><br />
<br />
<font size="2" face="Arial">Cũng như c&aacute;c năm trước, họ đ&atilde; tr&iacute;ch ra một  phần tiền trao thưởng cho c&aacute;c ch&aacute;u học giỏi, thi đỗ ĐH để b&aacute;o c&aacute;o với tổ  ti&ecirc;n v&agrave; khuyến kh&iacute;ch con ch&aacute;u tiếp tục phấn đấu. Những gia đ&igrave;nh, c&aacute;  nh&acirc;n th&agrave;nh đạt, l&agrave;m ăn giỏi cũng được biểu dương trong ng&agrave;y n&agrave;y; ai  trong họ mắc lỗi, c&oacute; khuyết điểm sẽ được nhắc nhở để khắc phục, sửa  chữa. </font><br />
<br />
<font size="2" face="Arial">Đến ng&agrave;y giỗ họ, d&ugrave; bận đến đ&acirc;u, con ch&aacute;u  cũng cố gắng thu xếp về dự bởi đ&acirc;y l&agrave; dịp để gặp mặt đ&ocirc;ng đủ anh em,  ch&aacute;u con trong họ, được chuyện tr&ograve;, &ocirc;n lại những năm th&aacute;ng vất vả v&agrave;  thấy m&igrave;nh phải phấn đấu hơn nữa để l&agrave;m vẻ vang d&ograve;ng tộc, mỗi lần được về  qu&ecirc; dự ng&agrave;y giỗ họ, ai cũng cảm thấy v&ocirc; c&ugrave;ng ấm c&uacute;ng. </font><br />
<br />
<font size="2" face="Arial">Nh&acirc;n dịp giỗ tổ năm T&acirc;n M&atilde;o năm nay, con  ch&aacute;u họ B&ugrave;i l&agrave;ng Xu&acirc;n Bảng lại về đ&ocirc;ng đủ, khấn cầu cho d&ograve;ng họ lu&ocirc;n  đo&agrave;n kết, c&ugrave;ng nhau vun đắp cuộc sống ấm no, c&acirc;y Ph&uacute;c mu&ocirc;n đời lu&ocirc;n m&atilde;i  m&atilde;i vươn cao.<br />
<br />
</font>
<div align="right"><strong><font size="2" face="Arial">B&ugrave;i Ch&iacute; Nh&acirc;n</font></strong><font size="2" face="Arial"> </font></div>
</div>', NULL, NULL)
INSERT [dbo].[tblcat] ([idcat], [idmodule], [idvan], [idthoiky], [iddiadanh], [title], [image], [quotation], [content], [top1], [ngaycapnhat]) VALUES (9, 2, NULL, NULL, NULL, N'Gia phả và nhà thờ họ', N'../Images/Tintuc/tin2.jpg', N'Thật cảm động khi nhìn thấy từ gia phả những lời nhắn nhủ, răn dạy đạo đức của các bậc tổ tiên đối với con cháu cho đến hôm nay vẫn còn nóng hổi ý nghĩa: "Con cháu nhà ta, ai nấy đều phải biết tôn trọng lời dạy của ông bà, phải lấy việc cày cấy, đọc sách, học hành làm nghiệp... phải lấy điều hiếu thuận làm đầu, thì sẽ hạnh phúc". Ngoài việc ghi chép đầy đủ lịch sử của gia tộc và thế thứ các nhánh, các chi của mỗi dòng họ, gia phả còn mang giá trị nhân văn sâu sắc.', N'<div align="justify"><font size="2" face="Arial">Cội rễ, gốc g&aacute;c với nhiều người Việt Nam thật đơn giản m&agrave; &yacute; nghĩa v&ocirc; c&ugrave;ng to lớn. C&ugrave;ng với gốc đa, giếng nước, s&acirc;n đ&igrave;nh, những h&igrave;nh ảnh ti&ecirc;u biểu của l&agrave;ng qu&ecirc; Việt Nam, cội rễ với đa phần người Việt c&ograve;n l&agrave; sự gắn kết v&agrave; tiếp nối của bao thế hệ qua những bộ gia phả, những nh&agrave; thờ họ. Với mỗi d&ograve;ng họ, gia phả v&agrave; nh&agrave; thờ họ l&agrave; điểm tựa tinh thần của hiện tại từ qu&aacute; khứ. Nh&agrave; c&oacute; phả cũng như nước c&oacute; sử, phả nh&agrave; để ghi ch&eacute;p thế thứ c&aacute;c đời theo hệ thống huyết mạch, tr&ecirc;n dưới, m&agrave; thuật lại ph&acirc;n minh về bản chi, khiến cho mu&ocirc;n đời con ch&aacute;u nh&igrave;n v&agrave;o th&igrave; thấy r&otilde; r&agrave;ng như ở trước mắt. </font><br />
<br />
<font size="2" face="Arial">Cũng như nhiều d&ograve;ng họ kh&aacute;c tr&ecirc;n cả nước, d&ograve;ng họ Nguyễn Thạc ở Th&ocirc;n Lăng - L&agrave;ng Đ&igrave;nh Bảng, huyện Từ Sơn - Bắc Ninh từ nhiều đời nay lu&ocirc;n khắc ghi những truyền thống tốt đẹp của tổ ti&ecirc;n. H&agrave;ng năm, những người con của d&ograve;ng họ Nguyễn Thạc d&ugrave; xa gần đều h&agrave;nh hương tưởng nhớ, viếng mộ tổ d&ograve;ng họ - Người đ&atilde; l&agrave;m rạng danh d&ograve;ng họ - cụ Nguyễn Thị Ngọc Long. Trong gia phả họ Nguyễn Thạc c&oacute; ghi rằng: Cuối thời L&ecirc; Mạc sang đầu thời Mạc, ở l&agrave;ng Đ&igrave;nh Bảng, huyện Đ&ocirc;ng Ng&agrave;n, Phủ Từ Sơn trấn Kinh Bắc c&oacute; gia đ&igrave;nh &ocirc;ng b&agrave; Nguyễn Thạc ăn ở hiền l&agrave;nh, ph&uacute;c đức, &ocirc;ng b&agrave; sinh được một g&aacute;i đầu l&ograve;ng đặt t&ecirc;n l&agrave; Nguyễn Thị Long m&agrave; sau n&agrave;y khi v&agrave;o l&agrave;m Phi ch&uacute;a Minh Khang Th&aacute;i Vương đổi l&agrave; Nguyễn Thị Ngọc Long. Người con thứ l&agrave; trai l&agrave; Nguyễn Thạc Căn. &Ocirc;ng Căn nắm được cả lục ban v&otilde; nghệ, bốn bộ binh thư n&ecirc;n rất t&agrave;i giỏi đ&atilde; qua trăm trận đ&aacute;nh lập c&ocirc;ng b&aacute;o quốc được Vua phong l&agrave; Tuy&ecirc;n Quận c&ocirc;ng. 7 đời con ch&aacute;u &ocirc;ng li&ecirc;n tục l&agrave;m quan, ph&ograve; Vua gi&uacute;p nước. Gia phả của một nh&agrave;, một d&ograve;ng họ được coi như bộ sử nhỏ của một nước. </font><br />
<br />
<font size="2" face="Arial">Trong nền văn h&oacute;a Phương Đ&ocirc;ng, lịch sử gia phả đ&atilde; c&oacute; tr&ecirc;n 3000 năm, ch&acirc;u &Acirc;u đ&atilde; c&oacute; gần 500 năm. Gia phả được coi như một bức tranh lịch sử thu nhỏ của một d&ograve;ng họ, thậm ch&iacute; lớn hơn l&agrave; của một l&agrave;ng, một v&ugrave;ng đất c&ugrave;ng với những sự kiện lịch sử, những biến đổi x&atilde; hội li&ecirc;n tục, sự tham gia v&agrave; những ảnh hưởng của d&ograve;ng họ đến tiến tr&igrave;nh của lịch sử x&atilde; hội của những v&ugrave;ng, miền kh&aacute;c nhau. </font><br />
<br />
<font size="2" face="Arial">Tại Việt Nam, gia phả sơ giản ghi ch&eacute;p t&ecirc;n c&uacute;ng cơm, ng&agrave;y giỗ v&agrave; địa điểm an t&aacute;ng của &ocirc;ng cha. Theo c&aacute;c nh&agrave; sử học phỏng đo&aacute;n th&igrave; gia phả đ&atilde; xuất hiện từ thời Sĩ Nhiếp l&agrave;m Th&aacute;i th&uacute; ở Giao Chỉ hoặc gần hơn tức l&agrave; từ thời L&yacute; Nam Đế <em>(khoảng năm 476-545)</em>. Nhưng phải đến thời nh&agrave; L&yacute;, nh&agrave; Trần <em>(thế kỷ IX - XIII)</em>, c&ugrave;ng với h&agrave;ng loạt những chiến c&ocirc;ng hiển h&aacute;ch, chấn động phương Bắc của cha &ocirc;ng ta chống lại c&aacute;c thế lực x&acirc;m lược từ ph&iacute;a Bắc tr&agrave;n xuống, đất nước được thanh b&igrave;nh trong một thời gian d&agrave;i mới xuất hiện những cuốn tộc phả, thế phả <em>(ghi cả thế thứ, t&ocirc;ng t&iacute;ch to&agrave;n họ)</em>, phả k&yacute; <em>(ghi lại h&agrave;nh trạng, sự nghiệp của tổ ti&ecirc;n). </em></font><br />
<br />
<font size="2" face="Arial">Mới đầu gia phả xuất hiện chỉ trong Ho&agrave;ng tộc c&ugrave;ng giới quan lại. Nh&agrave; L&yacute; c&oacute; <strong><em>&quot;Ho&agrave;ng Triều Ngọc Điệp&quot;</em></strong> - năm 1026; nh&agrave; Trần c&oacute; <em><strong>&quot;Ho&agrave;ng T&ocirc;ng Ngọc Điệp&quot;</strong></em>, nh&agrave; L&ecirc; c&oacute; <em><strong>&quot;Ho&agrave;ng L&ecirc; Ngọc Phả&quot;</strong></em>... C&ugrave;ng với sự xuất hiện c&aacute;c gia phả của Ho&agrave;ng tộc l&agrave; gia phả của c&aacute;c Danh gia, quan lại v&agrave; cứ thế lan rộng, phổ biến ghi ch&eacute;p gia phả trong nh&acirc;n d&acirc;n. </font><br />
<br />
<font size="2" face="Arial">Trước C&aacute;ch mạng Th&aacute;ng 8, gia phả chủ yếu được ghi ch&eacute;p bằng chữ Nho nhưng số người giỏi chữ Nho kh&ocirc;ng nhiều, qua nhiều năm chiến tranh, nhiều bộ, cuốn gia phả của nhiều d&ograve;ng họ cũng mất dần... Ng&agrave;y nay, &yacute; nghĩa của những bộ gia phả đ&atilde; được thừa nhận bởi những gi&aacute; trị đạo đức, văn h&oacute;a tinh thần to lớn với mỗi con người trong từng d&ograve;ng họ. Từ xa xưa đến ng&agrave;y nay, việc thờ c&uacute;ng tổ ti&ecirc;n lu&ocirc;n l&agrave; nền tảng của những nghi thức t&ocirc;n gi&aacute;o ở trong mọi con người Việt Nam. V&igrave; Việt Nam l&agrave; đất nước c&oacute; nền văn hiến l&acirc;u đời với một t&ocirc;n gi&aacute;o truyền thống bao tr&ugrave;m l&agrave; đạo thờ c&uacute;ng &ocirc;ng b&agrave;, tổ ti&ecirc;n, những người c&oacute; c&ocirc;ng với đất nước, với nh&acirc;n d&acirc;n. Gi&aacute;o sư Trần Văn Giầu - một nh&agrave; văn h&oacute;a Việt Nam đ&atilde; nhận định: Xưa nay &ocirc;ng b&agrave; ta lu&ocirc;n lu&ocirc;n cho rằng để gi&aacute;o dục con ch&aacute;u kh&ocirc;ng g&igrave; hay hơn dạy lịch sử: lịch sử d&acirc;n tộc, lịch sử qu&ecirc; hương, lịch sử gia đ&igrave;nh. Đạo đức, nh&acirc;n c&aacute;ch con người Việt Nam xuất ph&aacute;t từ những lời gi&aacute;o huấn của c&aacute;c vị th&aacute;nh hiền, c&aacute;c lời dạy dỗ của tổ ti&ecirc;n được đ&uacute;c kết trong c&aacute;c bộ gia phả lưu truyền qua nhiều đời, như l&agrave; gương mẫu<em> &quot;đối nh&acirc;n xử thế&quot;</em> trong cuộc sống. </font><br />
<br />
<font size="2" face="Arial">Gia phả l&agrave; t&agrave;i liệu cụ thể nhất để gi&aacute;o dục truyền thống qu&yacute; b&aacute;u của d&ograve;ng họ, gắn liền với truyền thống d&acirc;n tộc cho từng gia đ&igrave;nh, từng con người. Truyền thống ấy đ&atilde; trở th&agrave;nh tr&aacute;ch nhiệm của mỗi gia đ&igrave;nh, mỗi d&ograve;ng họ. Trong thực tế x&atilde; hội đang c&oacute; những chuyển biến về tư tưởng, lối sống, đ&atilde; xuất hiện sự đi xuống v&agrave; băng hoại về đạo đức của một phần kh&ocirc;ng nhỏ thanh ni&ecirc;n. Do đ&oacute;, việc gi&aacute;o dục, định hướng cho thanh thiếu ni&ecirc;n những kiến thức về d&ograve;ng họ, về gi&aacute; trị đạo đức, văn h&oacute;a truyền thống của d&ograve;ng họ l&agrave; thực sự cần thiết bởi thế hệ trẻ với những kiến thức về gi&aacute; trị văn h&oacute;a, đạo đức của gia đ&igrave;nh, d&ograve;ng họ c&oacute; thể điều chỉnh năng lực h&agrave;nh vi của m&igrave;nh đ&uacute;ng đắn trong cuộc sống. Gia phả được c&aacute;c nh&agrave; sử học coi l&agrave; nguồn bổ sung cực kỳ quan trọng cho ch&iacute;nh sử bởi những th&ocirc;ng tin từ những nh&acirc;n vật, sự kiện của d&ograve;ng họ đều được ghi lại một c&aacute;ch trung thực, cụ thể v&agrave; r&otilde; r&agrave;ng trong gia phả. Việc thờ c&uacute;ng tổ ti&ecirc;n l&agrave; nền tảng của gia đ&igrave;nh Việt Nam, gia đ&igrave;nh từ &ocirc;ng cố, b&agrave; cố, xuống ch&aacute;u chắt đều sống chung trong một mối d&acirc;y li&ecirc;n hệ hết sức chặt chẽ về huyết thống, m&aacute;u mủ. L&agrave;m người ai cũng c&oacute; cha mẹ, &ocirc;ng b&agrave;, tổ ti&ecirc;n như c&acirc;y c&oacute; cội nguồn, c&oacute; gốc, c&oacute; rễ. Hướng về nguồn cội l&agrave; những cảm x&uacute;c, những t&acirc;m tư c&ugrave;ng một thế giới t&acirc;m linh trong s&aacute;ng, thi&ecirc;ng li&ecirc;ng với những cảm hứng vang vọng, xuất ph&aacute;t từ đ&aacute;y l&ograve;ng qua sự kh&ocirc;i phục, bổ sung v&agrave; duy tr&igrave; sự li&ecirc;n tục của gia phả d&ograve;ng họ, nh&agrave; thờ họ l&agrave; tr&agrave;o lưu văn h&oacute;a đang ph&aacute;t triển ở nước ta hiện nay. C&oacute; những bộ gia phả của một số d&ograve;ng họ được viết c&aacute;c đ&acirc;y v&agrave;i trăm năm nay vẫn được lưu giữ cẩn thận, để lưu giữ truyền qua nhiều thế hệ th&igrave; thật kh&ocirc;ng phải l&agrave; dễ. Gia phả c&ugrave;ng với nh&agrave; thờ họ lu&ocirc;n sống m&atilde;i trong từng con người Việt Nam.</font><br />
<br />
<font size="2" face="Arial">Nh&agrave; thờ họ cũng l&agrave; nơi lưu giữ gia phả, văn tự cổ c&ugrave;ng những sắc phong, tượng thờ, b&agrave;i vị c&ugrave;ng những điển t&iacute;ch về d&ograve;ng họ. Nh&agrave; thờ họ cũng l&agrave; nơi lưu giữ những di vật của tổ ti&ecirc;n. Đ&acirc;y c&oacute; thể được coi như một bảo t&agrave;ng thu nhỏ của d&ograve;ng họ bởi n&oacute; chứa đựng rất nhiều th&ocirc;ng tin về d&ograve;ng họ. Nội thất b&ecirc;n trong nh&agrave; thờ được sắp đặt trang nghi&ecirc;m, c&oacute; thứ tự r&otilde; r&agrave;ng v&agrave; sự sắp sếp c&oacute; chủ &yacute; thể hiện những th&ocirc;ng tin về gia đ&igrave;nh, d&ograve;ng họ được kết cấu một c&aacute;ch chu đ&aacute;o, đầy đủ để con ch&aacute;u trong họ cũng như người ngoại tộc c&oacute; thể hiểu kh&aacute; tường tận về lịch sử của d&ograve;ng họ c&ugrave;ng những con người, những danh nh&acirc;n của d&ograve;ng họ. V&agrave;o đời thứ 3 của d&ograve;ng họ Nguyễn Thạc c&oacute; Cụ Nguyễn Thạc Lượng l&agrave;m quan ở Trấn Thanh Hoa. Cụ đ&atilde; d&agrave;nh dụm của cải để đ&oacute;ng g&oacute;p cho qu&ecirc; hương m&igrave;nh l&agrave; l&agrave;ng Đ&igrave;nh Bảng một ng&ocirc;i đ&igrave;nh. Đầu ti&ecirc;n cụ cho dựng nh&agrave; thờ họ để luyện thợ v&agrave; lấy kiểu l&agrave;m đ&igrave;nh l&agrave;ng. Nh&agrave; thờ cụ cho x&acirc;y dựng l&agrave; một c&ocirc;ng tr&igrave;nh ho&agrave;nh tr&aacute;ng đồ sộ hiếm c&oacute;, với kiến tr&uacute;c thuần nhất của người Việt. C&aacute;c c&ocirc;ng tr&igrave;nh nh&agrave; thờ họ Nguyễn Thạc, Đ&igrave;nh l&agrave;ng Đ&igrave;nh Bảng l&agrave;m xong, c&ocirc;ng lao &ocirc;ng b&agrave; Nguyễn Thạc Lượng v&agrave; Nguyễn Thị Nguy&ecirc;n to lớn kh&ocirc;ng kể xiết. &Ocirc;ng b&agrave; được b&agrave; con, họ h&agrave;ng, l&agrave;ng nước v&ocirc; c&ugrave;ng biết ơn v&agrave; tr&acirc;n trọng. </font><br />
<br />
<font size="2" face="Arial">Nh&agrave; thờ họ được coi như điểm hội tụ, thờ c&uacute;ng tổ ti&ecirc;n, &ocirc;ng b&agrave;, những người anh h&ugrave;ng, những danh nh&acirc;n, những người c&oacute; c&ocirc;ng với đất nước, l&agrave;m lưu danh d&ograve;ng họ trong sử xanh của đất nước, của d&acirc;n tộc. Nh&agrave; thờ họ lu&ocirc;n c&oacute; một vị tr&iacute; đặc biệt trong thế giới t&acirc;m linh của những người con trong d&ograve;ng họ bởi đ&oacute; l&agrave; nơi gi&uacute;p họ nhớ lại những đỉnh cao vinh quang của d&ograve;ng họ, những tấm gương s&aacute;ng của tổ ti&ecirc;n v&agrave; đồng thời những ước vọng của mỗi c&ograve;n người trong d&ograve;ng họ được nguyện cầu tại đ&acirc;y. Truyền thống cả d&acirc;n tộc cũng như mỗi d&ograve;ng họ, mỗi gia đ&igrave;nh cần phải g&igrave;n giữ l&agrave;: <em>&quot;Uống nước nhớ nguồn, nh&acirc;n hậu thuỷ chung, thương người như thể thương th&acirc;n, đo&agrave;n kết tương th&acirc;n tương &aacute;i l&agrave;ng x&oacute;m khi tối lửa tắt đ&egrave;n, hiếu học, sẵn s&agrave;ng hy sinh v&igrave; đất nước, v&igrave; d&acirc;n tộc, lao động cần c&ugrave;, s&aacute;ng tạo ...&quot;. </em></font><br />
<br />
<font size="2" face="Arial">L&agrave; lịch sử văn h&oacute;a của d&ograve;ng họ v&agrave; gia đ&igrave;nh ở Việt Nam, gia phả c&ograve;n được coi như một di sản văn h&oacute;a qu&yacute; gi&aacute; của d&acirc;n tộc. Kh&ocirc;ng chỉ l&agrave; cơ sở để c&aacute;c d&ograve;ng họ, c&aacute;c chi họ lần t&igrave;m về gốc rễ, chắp nối cội nguồn, gia phả c&ograve;n lu&ocirc;n giữ vai tr&ograve; quan trọng xuy&ecirc;n suốt trong việc củng cố gia tộc, gia đ&igrave;nh v&agrave; gi&aacute;o dục đạo đức cho con ch&aacute;u. Bởi v&igrave;, gia phả kh&ocirc;ng chỉ gi&uacute;p cho con ch&aacute;u biết gốc g&aacute;c của m&igrave;nh từ đ&acirc;u, họ h&agrave;ng l&agrave; ai, tổ ti&ecirc;n c&ocirc;ng đức ra sao, gia phả c&ograve;n được gọi l&agrave; gia bảo v&igrave; đ&oacute; l&agrave; lịch sử của tổ ti&ecirc;n nhiều đời truyền lại, chứa đựng những điều tổ ti&ecirc;n muốn gửi gắm lại cho đời sau. Từ gia phả, từ gia tộc, từ tiểu chi đến đại t&ocirc;ng, cả d&ograve;ng họ. Đ&oacute; ch&iacute;nh l&agrave; sự đa hướng, đa lớp để bảo vệ nề nếp gia phong, truyền thống d&ograve;ng họ, thuần phong mỹ tục, văn h&oacute;a d&acirc;n tộc h&ocirc;m nay v&agrave; mai sau. </font><br />
<br />
<div align="right"><strong><font size="2" face="Arial">B&ugrave;i Ch&iacute; Nh&acirc;n<em> (Theo vanhoaphuongdong.com)</em></font></strong></div>
</div>', NULL, N'26/11/2013')
INSERT [dbo].[tblcat] ([idcat], [idmodule], [idvan], [idthoiky], [iddiadanh], [title], [image], [quotation], [content], [top1], [ngaycapnhat]) VALUES (10, 2, NULL, NULL, NULL, N'Giới thiệu website gia phả họ Bùi Xuân Bảng', N'../Images/Tintuc/02122013_xuanbang.JPG', N'Trong xã hội công nghệ thông tin hiện nay, internet đã trở thành phổ biến, dễ sử dụng. Một số dòng họ đã gửi gia phả lên trang web Việt nam gia phả, một số lập trang web để lưu trữ gia phả của dòng họ mình. Vì vậy website www.hobuixuanbang.com là mạng gia phả riêng của dòng họ Bùi tại làng Xuân Bảng để con cháu các chi nhánh của họ ta ở khắp mọi miền đất nước đã có thể đọc và hiểu biết về sự nghiệp của các đời trước cũng như quan hệ huyết thống giữa các thành viên trong họ.', N'<div align="justify"><font size="2" face="Arial">Trang website n&agrave;y được tạo dựng n&ecirc;n khởi ph&aacute;t từ một &yacute; tưởng tốt đẹp, một suy nghĩ với tấm l&ograve;ng biết ơn, t&ocirc;n k&iacute;nh tổ t&ocirc;ng của anh B&ugrave;i Ch&iacute; Nh&acirc;n chi Đại t&ocirc;n, một hậu duệ đời thứ 14 của d&ograve;ng họ B&ugrave;i l&agrave;ng Xu&acirc;n Bảng. &Yacute; tưởng ấy được sự cổ vũ, đồng t&igrave;nh của nhiều đồng tộc thuộc c&aacute;c d&ograve;ng họ B&ugrave;i l&agrave;ng Xu&acirc;n Bảng, với mong ước c&aacute;c con ch&aacute;u d&ograve;ng họ B&ugrave;i l&agrave;ng Xu&acirc;n Bảng sẽ ng&agrave;y một ph&aacute;t triển đ&ocirc;ng đ&uacute;c đ&oacute;ng g&oacute;p được nhiều c&ocirc;ng sức, th&agrave;nh t&iacute;ch v&agrave;o c&ocirc;ng cuộc x&acirc;y dựng Tổ quốc Việt Nam th&acirc;n y&ecirc;u.<br />
<br />
<em>&quot;T&ocirc;i nghĩ nếu kh&ocirc;ng l&agrave;m website để ghi ch&eacute;p, cập nhật tất cả b&agrave; con trong d&ograve;ng tộc m&igrave;nh th&igrave; rất dễ bị lưu lạc kh&ocirc;ng biết m&igrave;nh từ đ&acirc;u sinh ra? Do vậy t&ocirc;i bỏ c&ocirc;ng ra nghi&ecirc;n cứu, lập website n&agrave;y hy vọng n&oacute; sẽ g&oacute;p phần x&acirc;y dựng tinh thần đo&agrave;n kết giữa c&aacute;c con ch&aacute;u trong d&ograve;ng tộc. Việc lập website n&agrave;y rất tiện &iacute;ch cho việc cập nhật, dễ cho con ch&aacute;u tra khảo xem Gia Phả theo thời đại c&ocirc;ng nghệ th&ocirc;ng tin hiện nay v&agrave; trong tương lai.<br />
<br />
T&ocirc;i hy vọng rằng trang Website n&agrave;y sẽ nhận được sự hưởng ứng rộng r&atilde;i của mọi người trong d&ograve;ng tộc họ B&ugrave;i, để trang Website sẽ được mở rộng, phong ph&uacute;, li&ecirc;n kết được mối quan hệ d&ograve;ng họ của c&aacute;c d&ograve;ng tộc họ B&ugrave;i.&quot;</em><br />
<br />
Việc ghi ch&eacute;p trong gia phả dựa ch&iacute;nh v&agrave;o gia phả xưa để lại chủ yếu từ cuốn Gia phả do cố tộc trưởng &Ocirc;ng B&ugrave;i Xu&acirc;n Diệu viết, sưu tập c&aacute;c s&aacute;ch vở cũ v&agrave; c&aacute;c lời kể của c&aacute;c cụ &ocirc;ng, cụ b&agrave; cao tuổi. Hiện nay do chưa nhận được đầy đủ th&ocirc;ng tin từ c&aacute;c chi v&igrave; vậy chắc l&agrave; c&ograve;n nhiều thiếu s&oacute;t v&agrave; sẽ tiếp tục bổ sung v&agrave; hiệu đ&iacute;nh để cho ho&agrave;n chỉnh.<br />
<strong><br />
NH&Acirc;N SINH Ư BẢN HỒ TỔ</strong><br />
<br />
<em>C&acirc;y c&oacute; gốc mới nở c&agrave;nh xanh ngọn.<br />
Nước c&oacute; nguồn mới bể rộng s&ocirc;ng s&acirc;u.<br />
Người ta c&oacute; gốc từ đ&acirc;u.<br />
Tổ ti&ecirc;n c&oacute; trước rồi sau c&oacute; m&igrave;nh.<br />
C&ocirc;ng Tổ ti&ecirc;n g&acirc;y n&ecirc;n từ trước.<br />
Con ch&aacute;u giờ mới hưởng hiển vinh.<br />
Giỗ tết ta phải l&ograve;ng th&agrave;nh.<br />
Tr&ocirc;ng nom thờ phụng tỏ l&ograve;ng biết ơn.<br />
Tuy rằng ở Bắc hay Nam.<br />
Xa x&ocirc;i c&aacute;ch trở nhưng chung một d&ograve;ng.</em><br />
<br />
Trang web <a target="_blank" href="http://hobuixuanbang.com"><em><strong>www.hobuixuanbang.com</strong></em></a> sẽ l&agrave; nơi giới thiệu gia phả của d&ograve;ng họ để c&oacute; thể tra cứu r&otilde; r&agrave;ng, nhanh ch&oacute;ng hơn. Tuy nhi&ecirc;n trang web n&agrave;y kh&ocirc;ng chỉ nhằm mục đ&iacute;ch duy nhất l&agrave; lưu trữ, giới thiệu Gia phả của d&ograve;ng họ m&agrave; c&ograve;n l&agrave; nơi con ch&aacute;u trong họ, d&ugrave; đang sinh sống, l&agrave;m việc bất cứ&nbsp; ở nơi n&agrave;o&nbsp; tr&ecirc;n tr&aacute;i đất cũng c&oacute; thể theo d&otilde;i tin tức h&igrave;nh ảnh cuộc sống thường nhật ở qu&ecirc; hương, gia đ&igrave;nh, của họ h&agrave;ng ở c&aacute;c địa phương kh&aacute;c cũng như gửi th&ocirc;ng tin về cuộc sống của m&igrave;nh v&agrave; gia đ&igrave;nh cho mọi người biết.<br />
<br />
Nếu được ph&aacute;t triển tốt, mỗi khi c&oacute; chuyện vui, buồn của c&aacute;c gia đ&igrave;nh trong họ, những người ở xa, nếu kh&ocirc;ng c&oacute; điều kiện tham dự cũng c&oacute; thể nh&igrave;n nh&igrave;n thấy c&aacute;c h&igrave;nh ảnh, nghe thấy tiếng nhạc vui vẻ trong một đ&aacute;m cưới ở qu&ecirc; hương hay bất cứ nơi n&agrave;o c&oacute; con ch&aacute;u họ ta sinh sống, l&agrave;m việc. <br />
<br />
Tất cả c&aacute;c con ch&aacute;u trai, g&aacute;i, d&acirc;u, rể trong họ đều c&oacute; thể gửi b&agrave;i, ảnh, video về Ban quản trị website qua email <em>buichinhan@gmail.com</em> để đăng th&ocirc;ng tin.<br />
<br />
Ban quản trị dự &aacute;n hoan ngh&ecirc;nh mọi &yacute; kiến đ&oacute;ng g&oacute;p của c&aacute;c con ch&aacute;u v&agrave; những người bạn !<br />
<br />
Xin ch&acirc;n th&agrave;nh cảm ơn !<br />
<br />
</font>
<div align="right"><strong><font size="2" face="Arial">B&ugrave;i Ch&iacute; Nh&acirc;n</font></strong></div>
</div>', NULL, N'02/12/2013')
SET IDENTITY_INSERT [dbo].[tblcat] OFF
/****** Object:  Table [dbo].[tblanh]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblanh](
	[idanh] [int] IDENTITY(1,1) NOT NULL,
	[idnhomanh] [int] NULL,
	[name] [nvarchar](1000) NULL,
	[name_en] [nvarchar](1000) NULL,
	[image] [varchar](50) NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[information] [ntext] NULL,
	[information_en] [ntext] NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_tblanh] PRIMARY KEY CLUSTERED 
(
	[idanh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblanh] ON
INSERT [dbo].[tblanh] ([idanh], [idnhomanh], [name], [name_en], [image], [width], [height], [information], [information_en], [active]) VALUES (13, 6, N'Cổng nhà thờ được làm theo kiến trúc kiểu nhà tam quan, lầu chuông cửa cuốn. Hai tầng hình hộp 8 mái lợp ngói vảy, đỉnh nóc bờ lưỡng long triều nguyệt 8 góc bờ vợt uốn lượn đầu ly.', NULL, N'../Images/Gallery/28112013_nhatho1.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblanh] ([idanh], [idnhomanh], [name], [name_en], [image], [width], [height], [information], [information_en], [active]) VALUES (14, 6, N'Nhà thờ hạ đường bao gồm 3 gian 2 hồi thành 5 gian, được làm bằng gỗ lim mít, kiến trúc kiểu tứ trụ, quai giang suốt hai hàng cột hai bên, giữa trốn cột cái, trên trồng đấu, hạ xà bào trơn một mặt phẳng không xoi chạm kẻ chỉ. Nhà hạ làm kiểu lồng đình rộng rãi, thoáng mát để con cháu ngồi hội tụ trong những ngày giỗ, ngày tết.', NULL, N'../Images/Gallery/28112013_nhatho2.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblanh] ([idanh], [idnhomanh], [name], [name_en], [image], [width], [height], [information], [information_en], [active]) VALUES (15, 6, N'Nhà thờ thượng đường bao gồm 3 gian 2 hồi thành 5 gian, được làm bằng gỗ lim mít, kiểu tứ trụ chuyền chụp trên oai dưới kẻ, cung dục trồng đố, hạ và xà xoi vỏ măng chỉ kềm, má kẻ được chạm tứ linh, tam hữu. Nhà lợp bằng ngói vảy trước, đường bờ đỉnh nóc được chạy lưỡng long triều nguyệt, hai đầu nóc và bốn gốc cánh gà bờ vợt cuốn lộn đầu ly.', NULL, N'../Images/Gallery/28112013_nhatho3.jpg', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblanh] OFF
/****** Object:  Table [dbo].[tbladmin]    Script Date: 01/06/2018 09:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbladmin](
	[idadmin] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[email] [varchar](50) NULL,
	[mobile] [int] NULL,
	[username] [varchar](50) NULL,
	[password] [nvarchar](1000) NULL,
	[power] [int] NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_tbladmin] PRIMARY KEY CLUSTERED 
(
	[idadmin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbladmin] ON
INSERT [dbo].[tbladmin] ([idadmin], [name], [email], [mobile], [username], [password], [power], [active]) VALUES (26, N'Bùi Chí Nhân', N'buichinhan@gmail.com', 915555977, N'admin', N'f6e0a1e2ac41945a9aa7ff8a8aaa0cebc12a3bcc981a929ad5cf810a090e11ae', 1, 1)
SET IDENTITY_INSERT [dbo].[tbladmin] OFF
/****** Object:  Default [DF_tblgiapha_hienthi]    Script Date: 01/06/2018 09:53:14 ******/
ALTER TABLE [dbo].[tblgiapha] ADD  CONSTRAINT [DF_tblgiapha_hienthi]  DEFAULT ((1)) FOR [hienthi]
GO
