USE [master]
GO
if exists (select * from sysdatabases where name = 'KHOCTHATNHIEU')
	drop database KHOCTHATNHIEU
go
/****** Object:  Database [KHOCTHATNHIEU]    Script Date: 18/07/2024 21:59:40 ******/
CREATE DATABASE [KHOCTHATNHIEU]
ALTER DATABASE [KHOCTHATNHIEU] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KHOCTHATNHIEU].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KHOCTHATNHIEU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET ARITHABORT OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET  MULTI_USER 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KHOCTHATNHIEU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KHOCTHATNHIEU] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KHOCTHATNHIEU] SET QUERY_STORE = OFF
GO
USE [KHOCTHATNHIEU]
GO
/****** Object:  Table [dbo].[DANHGIA_DV]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA_DV](
	[MADANHGIA] [char](15) NOT NULL,
	[SOSAO] [tinyint] NULL,
	[MADV] [char](15) NOT NULL,
	[IDKHACHHANG] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADANHGIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHGIA_NV]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA_NV](
	[MADANHGIA] [char](15) NOT NULL,
	[SOSAO] [tinyint] NULL,
	[IDNHANVIEN] [char](15) NOT NULL,
	[IDKHACHHANG] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADANHGIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHGIA_SP]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA_SP](
	[MADANHGIA] [char](15) NOT NULL,
	[SOSAO] [tinyint] NULL,
	[IDSP] [char](15) NOT NULL,
	[IDKHACHHANG] [char](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUCDV]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCDV](
	[IDDM] [char](15) NOT NULL,
	[TENDM] [nvarchar](max) NOT NULL,
	[IMG] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUCSP]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCSP](
	[IDDM] [char](15) NOT NULL,
	[TENDM] [nvarchar](max) NOT NULL,
	[IMG] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MADV] [char](15) NOT NULL,
	[TENDV] [nvarchar](max) NOT NULL,
	[MOTA] [nvarchar](max) NULL,
	[IMG] [nvarchar](max) NULL,
	[IMG2] [nvarchar](max) NULL,
	[IMG3] [nvarchar](max) NULL,
	[GIA] [int] NOT NULL,
	[TONGDANHGIA] [float] NOT NULL,
	[IDDM] [char](15) NOT NULL,
	[DONVITINH] [nvarchar](max) NOT NULL,
	[GIAMGIA] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[IDHOADON] [char](15) NOT NULL,
	[TONGGIA] [int] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[NGAY] [date] NOT NULL,
	[GIO] [time](0) NOT NULL,
	[MAKM] [char](15) NULL,
	[TENKH] [nvarchar](max) NOT NULL,
	[TENNV] [nvarchar](max) NOT NULL,
	[SODT] [char](10) NOT NULL,
	[IDNHANVIEN] [char](15) NOT NULL,
	[IDKHACHHANG] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHOADON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON_DV]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON_DV](
	[SOLUONG] [int] NOT NULL,
	[THANHTIEN] [int] NOT NULL,
	[GIA] [int] NOT NULL,
	[GIAMGIA] [int] NOT NULL,
	[IDHOADON] [char](15) NOT NULL,
	[MADV] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHOADON] ASC,
	[MADV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON_SP]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON_SP](
	[SOLUONG] [int] NOT NULL,
	[TONGTIEN] [int] NOT NULL,
	[GIA] [int] NOT NULL,
	[GIAMGIA] [int] NOT NULL,
	[THUE] [int] NOT NULL,
	[IDSP] [char](15) NOT NULL,
	[IDHOADON] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSP] ASC,
	[IDHOADON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[HANG] [nvarchar](20) NOT NULL,
	[IDKHACHHANG] [char](15) NOT NULL,
	[TENKH] [nvarchar](max) NOT NULL,
	[GIOITINH] [bit] NULL,
	[DIACHI] [nvarchar](max) NULL,
	[NGAYSINH] [date] NULL,
	[SODT] [char](10) NOT NULL,
	[TENTK] [char](15) NOT NULL,
	[CHITIEU] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKHACHHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MAKM] [char](15) NOT NULL,
	[TENCTKM] [nvarchar](max) NOT NULL,
	[TRANGTHAI] [bit] NULL,
	[GIAMGIA] [int] NOT NULL,
	[THOIGIANBD] [date] NOT NULL,
	[THOIGIANKT] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LICHHEN]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHHEN](
	[MADL] [char](15) NOT NULL,
	[NGAY] [date] NULL,
	[THOIGIAN] [time](0) NULL,
	[TRANGTHAI] [bit] NOT NULL,
	[GHICHU] [nvarchar](max) NULL,
	[TENKH] [nvarchar](max) NOT NULL,
	[EMAIL] [varchar](30) NOT NULL,
	[SODTKH] [char](10) NOT NULL,
	[IDKHACHHANG] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[IDNHANVIEN] [char](15) NOT NULL,
	[TENNV] [nvarchar](max) NOT NULL,
	[GIOITINH] [bit] NULL,
	[DIACHI] [nvarchar](max) NULL,
	[TONGDANHGIA] [float] NOT NULL,
	[NGAYSINH] [date] NULL,
	[SODT] [char](10) NOT NULL,
	[CHUCVU] [nvarchar](max) NULL,
	[TENTK] [char](15) NOT NULL,
	[NGHIEPVU] [nvarchar](max) NULL,
	[IMG] [nvarchar](max) NULL,
	[MOTA] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNHANVIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN_DV]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN_DV](
	[MADV] [char](15) NOT NULL,
	[TENDV] [nvarchar](max) NOT NULL,
	[IDNHANVIEN] [char](15) NOT NULL,
	[TENNV] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADV] ASC,
	[IDNHANVIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[IDSP] [char](15) NOT NULL,
	[TENSP] [nvarchar](max) NOT NULL,
	[MOTA] [nvarchar](max) NULL,
	[IMG] [nvarchar](max) NULL,
	[IMG2] [nvarchar](max) NULL,
	[IMG3] [nvarchar](max) NULL,
	[GIA] [int] NOT NULL,
	[TONGDANHGIA] [float] NOT NULL,
	[THUE] [int] NOT NULL,
	[GIAMGIA] [int] NULL,
	[IDDM] [char](15) NOT NULL,
	[DONVITINH] [nvarchar](max) NOT NULL,
	[SOLUONG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM_DV]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM_DV](
	[MADV] [char](15) NOT NULL,
	[TENDV] [nvarchar](max) NOT NULL,
	[IDSP] [char](15) NOT NULL,
	[TENSP] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADV] ASC,
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 18/07/2024 21:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TENTK] [char](15) NOT NULL,
	[PASS] [varchar](30) NOT NULL,
	[EMAIL] [varchar](30) NOT NULL,
	[LOAITK] [char](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[TENTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANHGIA_DV] ([MADANHGIA], [SOSAO], [MADV], [IDKHACHHANG]) VALUES (N'DGDV001        ', 5, N'DV002          ', N'KH001          ')
INSERT [dbo].[DANHGIA_DV] ([MADANHGIA], [SOSAO], [MADV], [IDKHACHHANG]) VALUES (N'DGDV002        ', 5, N'DV004          ', N'KH001          ')
INSERT [dbo].[DANHGIA_DV] ([MADANHGIA], [SOSAO], [MADV], [IDKHACHHANG]) VALUES (N'DGDV003        ', 5, N'DV007          ', N'KH001          ')
INSERT [dbo].[DANHGIA_DV] ([MADANHGIA], [SOSAO], [MADV], [IDKHACHHANG]) VALUES (N'DGDV004        ', 5, N'DV0012         ', N'KH002          ')
INSERT [dbo].[DANHGIA_DV] ([MADANHGIA], [SOSAO], [MADV], [IDKHACHHANG]) VALUES (N'DGDV005        ', 5, N'DV0014         ', N'KH002          ')
GO
INSERT [dbo].[DANHGIA_NV] ([MADANHGIA], [SOSAO], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'DGNV001        ', 5, N'NV003          ', N'KH001          ')
INSERT [dbo].[DANHGIA_NV] ([MADANHGIA], [SOSAO], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'DGNV002        ', 5, N'NV004          ', N'KH001          ')
INSERT [dbo].[DANHGIA_NV] ([MADANHGIA], [SOSAO], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'DGNV003        ', 5, N'NV002          ', N'KH002          ')
GO
INSERT [dbo].[DANHGIA_SP] ([MADANHGIA], [SOSAO], [IDSP], [IDKHACHHANG]) VALUES (N'DGSP001        ', 5, N'SP004          ', N'KH001          ')
INSERT [dbo].[DANHGIA_SP] ([MADANHGIA], [SOSAO], [IDSP], [IDKHACHHANG]) VALUES (N'DGSP002        ', 5, N'SP006          ', N'KH001          ')
INSERT [dbo].[DANHGIA_SP] ([MADANHGIA], [SOSAO], [IDSP], [IDKHACHHANG]) VALUES (N'DGSP003        ', 5, N'SP001          ', N'KH002          ')
INSERT [dbo].[DANHGIA_SP] ([MADANHGIA], [SOSAO], [IDSP], [IDKHACHHANG]) VALUES (N'DGSP004        ', 5, N'SP005          ', N'KH001          ')
INSERT [dbo].[DANHGIA_SP] ([MADANHGIA], [SOSAO], [IDSP], [IDKHACHHANG]) VALUES (N'DGSP005        ', 5, N'SP004          ', N'KH002          ')
GO
INSERT [dbo].[DANHMUCDV] ([IDDM], [TENDM], [IMG]) VALUES (N'DMDV001        ', N'Chăm sóc da', N'cham_soc_da_mat.jpg')
INSERT [dbo].[DANHMUCDV] ([IDDM], [TENDM], [IMG]) VALUES (N'DMDV002        ', N'Chăm sóc cơ thể', N'cham_soc_body.jpg')
INSERT [dbo].[DANHMUCDV] ([IDDM], [TENDM], [IMG]) VALUES (N'DMDV003        ', N'Gội đầu', N'dv_goi_dau.jpg')
INSERT [dbo].[DANHMUCDV] ([IDDM], [TENDM], [IMG]) VALUES (N'DMDV004        ', N'Chăm sóc móng', N'cham_soc_mong.jpg')
INSERT [dbo].[DANHMUCDV] ([IDDM], [TENDM], [IMG]) VALUES (N'DMDV005        ', N'Triệt lông', N'triet_long.jpg')
INSERT [dbo].[DANHMUCDV] ([IDDM], [TENDM], [IMG]) VALUES (N'DMDV006        ', N'Phun xăm', N'dv_phun_xam.jpg')
GO
INSERT [dbo].[DANHMUCSP] ([IDDM], [TENDM], [IMG]) VALUES (N'DMSP001        ', N'Chăm sóc da', N'da.jpg')
INSERT [dbo].[DANHMUCSP] ([IDDM], [TENDM], [IMG]) VALUES (N'DMSP002        ', N'Chăm sóc cơ thể', N'body.jpg')
INSERT [dbo].[DANHMUCSP] ([IDDM], [TENDM], [IMG]) VALUES (N'DMSP003        ', N'Massage', N'massage.jpg')
INSERT [dbo].[DANHMUCSP] ([IDDM], [TENDM], [IMG]) VALUES (N'DMSP004        ', N'Trị liệu', N'tri_lieu.jpg')
INSERT [dbo].[DANHMUCSP] ([IDDM], [TENDM], [IMG]) VALUES (N'DMSP005        ', N'Chăm sóc tóc', N'toc.jpg')
GO
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV001          ', N'Đắp mặt nạ', N'Cung cấp dưỡng chất cho da, giúp da được cấp ẩm, sáng mịn, mờ thâm nám, se khít lỗ chân lông và chống lão hóa.', N'dap_mat_na.jpg', N'dmn1.jpg', N'dmn2.jpg', 200000, 0, N'DMDV001        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV0010         ', N'Triệt lông chân', N'Loại bỏ vĩnh viễn hoặc lâu dài các nang lông ở vùng chân, giúp bạn có được đôi chân mịn màng, sáng trắng và tự tin hơn.', N'triet_long_chan.jpg', N'tlc1.jpg', N'tlc2.jpg', 2000000, 0, N'DMDV005        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV0011         ', N'Triệt lông nách', N'Loại bỏ lông nách vĩnh viễn bằng các công nghệ tiên tiến, giúp bạn tự tin hơn với làn da mịn màng và sáng khỏe.', N'triet_long_nach.jpg', N'tln1.jpg',  N'tln2.jpg', 1000000, 0, N'DMDV005        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV0012         ', N'Triệt lông tay', N'Loại bỏ vĩnh viễn hoặc tạm thời những sợi lông không mong muốn trên cánh tay bằng cách sử dụng các công nghệ tiên tiến. ', N'triet_long_tay.jpg',  N'tlt1.jpg',  N'tlt2.jpg', 1000000, 5, N'DMDV005        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV0013         ', N'Phun môi', N'Giúp môi đẹp hơn, đều màu hơn và che đi các khuyết điểm như môi thâm, môi nhợt nhạt, môi sẫm màu,... ', N'phun_moi.jpg',  N'pm1.jpg',  N'pm2.jpg', 3000000, 0, N'DMDV006        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV0014         ', N'Nối mi', N'Nối mi là phương pháp làm tăng thêm chiều dài, độ dày và độ cong cho mi mắt, giúp đôi mắt trông to tròn và thu hút hơn.', N'noi_mi.jpg',  N'nm1.jpg',  N'nm2.jpg', 500000, 5, N'DMDV006        ', N'Bộ', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV0015         ', N'Xăm chân mày', N'Là phương pháp thẩm mỹ giúp tạo dáng và màu sắc cho chân mày một cách đẹp tự nhiên, hoàn thiện vẻ đẹp cho khuôn mặt.', N'xam_chan_may.jpg',  N'xcm1.jpg',  N'xcm2.jpg', 1000000, 0, N'DMDV006        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV002          ', N'Làm sạch da', N'Loại bỏ bụi bẩn, bã nhờn, tế bào chết và tạp chất trên da, giúp da thông thoáng, mịn màng và sáng khỏe hơn.', N'lam_sach_da.jpg', N'lsd1.jpg', N'lsd2.jpg', 300000, 5, N'DMDV001        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV003          ', N'Điều trị mụn', N'Điều trị mụn hiệu quả giúp ngăn ngừa tình trạng mụn tái phát và giảm nguy cơ để lại sẹo thâm, sẹo lõm trên da.', N'dieu_tri_mun.jpg', N'dtm1.jpg', N'dtm2.jpg', 500000, 0, N'DMDV001        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV004          ', N'Tẩy tế bào chết', N'Giúp loại bỏ lớp da chết sần sùi trên bề mặt da, giúp da thông thoáng, mịn màng và sáng khỏe hơn.', N'tay_te_bao_chet.jpg', N'ttbc1.jpg', N'ttbc2.jpg', 400000, 5, N'DMDV002        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV005          ', N'Tắm trắng', N'Giúp cải thiện sắc tố da, khiến da trở nên sáng mịn và đều màu hơn.', N'tam_trang.jpg', N'tt1.jpg', N'tt2.jpg', 1000000, 0, N'DMDV002        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV006          ', N'Gội đầu dưỡng sinh', N'Là một liệu pháp chăm sóc cải thiện tình trạng tóc và da đầu, giúp thư giãn tinh thần, mang lại nhiều lợi ích cho sức khỏe.', N'goi_dau_duong_sinh.jpg', N'gdds1.jpg', N'gdds2.jpg', 150000, 0, N'DMDV003        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV007          ', N'Gội đầu thảo dược', N'Sử dụng các loại thảo dược thiên nhiên để làm sạch cung cấp dưỡng chất cho tóc và da đầu, mang lại lợi ích cho sức khỏe.', N'goi_dau_thao_duoc.jpg', N'gdtd1.jpg', N'gdtd2.jpg', 250000, 5, N'DMDV003        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV008          ', N'Dưỡng móng', N'Dịch vụ dưỡng móng là một liệu pháp chăm sóc móng tay và móng chân, giúp móng khỏe mạnh, sáng bóng và đẹp hơn.', N'duong_mong.jpg', N'dm1.jpg', N'dm2.jpg', 100000, 0, N'DMDV004        ', N'Lần', 0)
INSERT [dbo].[DICHVU] ([MADV], [TENDV], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [IDDM], [DONVITINH], [GIAMGIA]) VALUES (N'DV009          ', N'Vẽ móng nghệ thuật', N'Dịch vụ trang trí móng bằng các họa tiết đẹp mắt, mang đến vẻ đẹp độc đáo và ấn tượng cho đôi bàn tay, bàn chân.', N've_mong_nghe_thuat.jpg', N'vmnt1.jpg', N'vmnt2.jpg', 300000, 0, N'DMDV004        ', N'Bộ', 0)
GO
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD001          ', 3680000, 5, CAST(N'2024-06-03' AS Date), CAST(N'20:15:28' AS Time), NULL, N'Nguyễn Luân', N'Nguyễn Anh Hùng', N'0728568327', N'NV001          ', N'KH001          ')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD002          ', 2710000, 4, CAST(N'2024-06-10' AS Date), CAST(N'17:20:48' AS Time), NULL, N'Đào Ánh Liên', N'Nguyễn Anh Hùng', N'0928568820', N'NV001          ', N'KH002          ')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD003          ', 0, 2, CAST(N'2024-07-16' AS Date), CAST(N'21:41:00' AS Time), N'KM002          ', N'nguyenthang12', N'Phạm Quỳnh Hoa', N'03455555  ', N'NV004          ', N'KHnguyenthang12')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD004          ', 0, 12, CAST(N'2024-07-23' AS Date), CAST(N'20:45:00' AS Time), N'KM002          ', N'nguyenthang12', N'Phạm Quỳnh Hoa', N'03455555  ', N'NV004          ', N'KHnguyenthang12')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD005          ', 0, 12, CAST(N'2024-07-30' AS Date), CAST(N'22:47:00' AS Time), N'KM003          ', N'nguyenthang12', N'Trần Anh Tiến', N'03455555  ', N'NV005          ', N'KHnguyenthang12')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD006          ', 7200000, 8, CAST(N'2024-07-26' AS Date), CAST(N'23:10:00' AS Time), N'KM002          ', N'nguyenthang12', N'Trần Anh Tiến', N'03455555  ', N'NV005          ', N'KHnguyenthang12')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD007          ', 3000000, 4, CAST(N'2024-07-10' AS Date), CAST(N'23:13:00' AS Time), N'KM003          ', N'nguyenthang12', N'Trần Anh Tiến', N'03455555  ', N'NV005          ', N'KHnguyenthang12')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD008          ', 3000000, 5, CAST(N'2024-07-27' AS Date), CAST(N'22:14:00' AS Time), N'KM002          ', N'nguyenthang12', N'Trần Anh Tiến', N'03455555  ', N'NV005          ', N'KHnguyenthang12')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD009          ', 4950000, 4, CAST(N'2024-08-02' AS Date), CAST(N'22:14:00' AS Time), N'KM003          ', N'nguyenthang12', N'Nguyễn Anh Hùng', N'03455555  ', N'NV001          ', N'KHnguyenthang12')
INSERT [dbo].[HOADON] ([IDHOADON], [TONGGIA], [SOLUONG], [NGAY], [GIO], [MAKM], [TENKH], [TENNV], [SODT], [IDNHANVIEN], [IDKHACHHANG]) VALUES (N'HD010          ', 4800000, 5, CAST(N'2024-07-20' AS Date), CAST(N'23:52:00' AS Time), N'KM002          ', N'nguyenthang12', N'Trần Anh Tiến', N'0346540662', N'NV005          ', N'KHnguyenthang12')
GO
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 300000, 300000, 0, N'HD001          ', N'DV002          ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 400000, 400000, 0, N'HD001          ', N'DV004          ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 250000, 250000, 0, N'HD001          ', N'DV007          ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 1000000, 1000000, 0, N'HD002          ', N'DV0012         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 500000, 500000, 0, N'HD002          ', N'DV0014         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 200000, 200000, 0, N'HD006          ', N'DV001          ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 2000000, 2000000, 0, N'HD006          ', N'DV0010         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 1000000, 1000000, 0, N'HD006          ', N'DV0011         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 1000000, 1000000, 0, N'HD006          ', N'DV0012         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 3000000, 3000000, 0, N'HD006          ', N'DV0013         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 2000000, 2000000, 0, N'HD007          ', N'DV0010         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 1000000, 1000000, 0, N'HD007          ', N'DV0011         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 2000000, 2000000, 0, N'HD008          ', N'DV0010         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 1000000, 1000000, 0, N'HD008          ', N'DV0011         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 2000000, 2000000, 0, N'HD009          ', N'DV0010         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 1000000, 1000000, 0, N'HD009          ', N'DV0011         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 1000000, 1000000, 0, N'HD010          ', N'DV0011         ')
INSERT [dbo].[HOADON_DV] ([SOLUONG], [THANHTIEN], [GIA], [GIAMGIA], [IDHOADON], [MADV]) VALUES (1, 1000000, 1000000, 0, N'HD010          ', N'DV0012         ')
GO
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 850000, 850000, 0, 0, N'SP001          ', N'HD002          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 850000, 850000, 0, 0, N'SP001          ', N'HD010          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 1400000, 1400000, 0, 0, N'SP002          ', N'HD009          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 1400000, 1400000, 0, 0, N'SP002          ', N'HD010          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 550000, 550000, 0, 0, N'SP003          ', N'HD009          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 550000, 550000, 0, 0, N'SP003          ', N'HD010          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 360000, 360000, 0, 0, N'SP004          ', N'HD001          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 360000, 360000, 0, 0, N'SP004          ', N'HD002          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 410000, 410000, 0, 0, N'SP005          ', N'HD001          ')
INSERT [dbo].[HOADON_SP] ([SOLUONG], [TONGTIEN], [GIA], [GIAMGIA], [THUE], [IDSP], [IDHOADON]) VALUES (1, 1960000, 1960000, 0, 0, N'SP006          ', N'HD001          ')
GO
INSERT [dbo].[KHACHHANG] ([HANG], [IDKHACHHANG], [TENKH], [GIOITINH], [DIACHI], [NGAYSINH], [SODT], [TENTK], [CHITIEU]) VALUES (N'Vàng', N'KH001          ', N'Nguyễn Luân', 0, N'21/14 Đ.Vườn Lài, P.Phú Thọ Hòa, Q.Tân Phú, TP.HCM', CAST(N'1989-09-20' AS Date), N'0728568327', N'khach1         ', 3680000)
INSERT [dbo].[KHACHHANG] ([HANG], [IDKHACHHANG], [TENKH], [GIOITINH], [DIACHI], [NGAYSINH], [SODT], [TENTK], [CHITIEU]) VALUES (N'Vàng', N'KH002          ', N'Đào Ánh Liên', 1, N'348 Đ.Lý Thái Tổ, P.1, Q.3, TP.HCM', CAST(N'1999-10-27' AS Date), N'0928568820', N'khach2         ', 2710000)
INSERT [dbo].[KHACHHANG] ([HANG], [IDKHACHHANG], [TENKH], [GIOITINH], [DIACHI], [NGAYSINH], [SODT], [TENTK], [CHITIEU]) VALUES (N'Đồng', N'KH003          ', N'Lưu Thiên Duyên', 1, N'46 Đ.Thành Thái, P.10, Q.10, TP.HCM', CAST(N'2000-12-07' AS Date), N'0936589856', N'khach3         ', 0)
INSERT [dbo].[KHACHHANG] ([HANG], [IDKHACHHANG], [TENKH], [GIOITINH], [DIACHI], [NGAYSINH], [SODT], [TENTK], [CHITIEU]) VALUES (N'Đồng', N'KHnguyenthang12', N'nguyenthang12', NULL, NULL, CAST(N'2024-07-17' AS Date), N'          ', N'nguyenthang12  ', 0)
GO
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM001          ', N'Khuyến mãi tháng 6', 0, 5, CAST(N'2024-06-10' AS Date), CAST(N'2024-06-20' AS Date))
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM002          ', N'Ưu đãi khách hàng thân thiết', 0, 10, CAST(N'2024-07-01' AS Date), CAST(N'2024-07-30' AS Date))
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM003          ', N'Khuyến mãi khách hàng mới', 0, 3, CAST(N'2024-08-01' AS Date), CAST(N'2024-08-30' AS Date))
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM004          ', N'Khuyến mãi dịch vụ mới', 1, 2, CAST(N'2024-07-31' AS Date), CAST(N'2024-08-30' AS Date))
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM005          ', N'Ưu đãi Lễ Quốc Khánh', 0, 2, CAST(N'2024-09-01' AS Date), CAST(N'2024-09-05' AS Date))
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM006          ', N'Ưu đãi ngày Phụ nữ Việt Nam', 0, 15, CAST(N'2024-10-18' AS Date), CAST(N'2024-10-21' AS Date))
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM007          ', N'Ưu đãi Halloween', 0, 3, CAST(N'2024-10-28' AS Date), CAST(N'2024-10-31' AS Date))
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM008          ', N'Ưu đãi ngày Nhà Giáo Việt Nam', 0, 15, CAST(N'2024-11-18' AS Date), CAST(N'2024-11-21' AS Date))
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENCTKM], [TRANGTHAI], [GIAMGIA], [THOIGIANBD], [THOIGIANKT]) VALUES (N'KM009          ', N'Khuyến mãi cuối năm', 0, 3, CAST(N'2024-12-15' AS Date), CAST(N'2024-12-31' AS Date))
GO
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL001          ', CAST(N'2024-06-20' AS Date), CAST(N'10:10:00' AS Time), 1, N'Tư vấn liệu trình trị mụn', N'Đào Ánh Liên', N'khach02@gmail.com', N'0928568820', N'KH002          ')
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL002          ', CAST(N'2024-08-10' AS Date), CAST(N'14:00:00' AS Time), 0, N'Tư vấn liệu trình triệt lông vĩnh viễn', N'Đào Ánh Liên', N'khach02@gmail.com', N'0928568820', N'KH002          ')
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL004          ', CAST(N'2024-07-17' AS Date), CAST(N'19:48:00' AS Time), 1, N'12', N'12', N'ndt13102003@gmail.com', N'0966003270', N'KHnguyenthang12')
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL005          ', CAST(N'2024-07-17' AS Date), CAST(N'19:49:00' AS Time), 1, N'Tư vấn liệu trình trị mụn', N'Lưu Thiên Duyên', N'ndt13102003@gmail.com', N'0966003270', N'KHnguyenthang12')
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL006          ', CAST(N'2024-07-18' AS Date), CAST(N'23:53:00' AS Time), 1, N'Tư vấn liệu trình trị mụn', N'Lưu Thiên Duyên', N'ndt13102003@gmail.com', N'0966003270', N'KHnguyenthang12')
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL007          ', CAST(N'2024-07-18' AS Date), CAST(N'23:51:00' AS Time), 1, N'THANG12', N'nGUYỄN ĐỨC THẮNG', N'ndt13102003@gmail.com', N'0966003270', N'KHnguyenthang12')
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL008          ', CAST(N'2024-07-03' AS Date), CAST(N'13:46:00' AS Time), 1, N'THANG12', N'nGUYỄN ĐỨC THẮNG', N'ndt13102003@gmail.com', N'0966003270', N'KHnguyenthang12')
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL009          ', CAST(N'2024-07-11' AS Date), CAST(N'13:47:00' AS Time), 1, N'THANG12', N'nGUYỄN ĐỨC THẮNG', N'ndt13102003@gmail.com', N'0966003270', N'KHnguyenthang12')
INSERT [dbo].[LICHHEN] ([MADL], [NGAY], [THOIGIAN], [TRANGTHAI], [GHICHU], [TENKH], [EMAIL], [SODTKH], [IDKHACHHANG]) VALUES (N'DL011          ', CAST(N'2024-07-16' AS Date), CAST(N'13:47:00' AS Time), 1, N'THANG12', N'nGUYỄN ĐỨC THẮNG', N'ndt13102003@gmail.com', N'0966003270', N'KHnguyenthang12')
GO
INSERT [dbo].[NHANVIEN] ([IDNHANVIEN], [TENNV], [GIOITINH], [DIACHI], [TONGDANHGIA], [NGAYSINH], [SODT], [CHUCVU], [TENTK], [NGHIEPVU], [IMG], [MOTA]) VALUES (N'NV001          ', N'Nguyễn Anh Hùng', 0, N'21 Đ.Vườn Lài, P.Phú Thọ Hòa, Q.Tân Phú, TP.HCM', 0, CAST(N'1990-05-20' AS Date), N'0788718327', N'Quản lý', N'c11spa         ', N'Quản Lý Spa', N'Staff5.jpg', N'Trong suốt sự nghiệp của mình, tôi đã có cơ hội làm việc với nhiều khách hàng khác nhau, những người có làn da nhạy cảm, gặp phải các vấn đề về da như mụn trứng cá, lão hóa và nám da. Tôi luôn cập nhật những kiến thức và kỹ thuật mới nhất trong lĩnh vực chăm sóc da để mang đến cho khách hàng những dịch vụ tốt nhất.')
INSERT [dbo].[NHANVIEN] ([IDNHANVIEN], [TENNV], [GIOITINH], [DIACHI], [TONGDANHGIA], [NGAYSINH], [SODT], [CHUCVU], [TENTK], [NGHIEPVU], [IMG], [MOTA]) VALUES (N'NV002          ', N'Trần Luân Thanh', 0, N'60 Đ.Trịnh Đình Trọng, P.Phú Trung, Q.Tân Phú, TP.HCM', 5, CAST(N'1995-07-28' AS Date), N'0785715329', N'Nhân viên', N'nv1c11         ', N'Chuyên Viên Chăm Sóc Móng', N'Staff2.jpg', N'Tôi có kỹ thuật thành thạo trong việc thực hiện các dịch vụ chăm sóc móng như cắt, sơn, vẽ móng, đắp móng, đính đá. Tôi cũng cập nhật thường xuyên các xu hướng mới nhất trong ngành nail art để mang đến cho khách hàng những mẫu móng thời trang và độc đáo.')
INSERT [dbo].[NHANVIEN] ([IDNHANVIEN], [TENNV], [GIOITINH], [DIACHI], [TONGDANHGIA], [NGAYSINH], [SODT], [CHUCVU], [TENTK], [NGHIEPVU], [IMG], [MOTA]) VALUES (N'NV003          ', N'Nguyễn Hà Anh', 1, N'71 Đ.Bà Hạt, P.9, Q.10, TP.HCM', 5, CAST(N'1992-03-10' AS Date), N'0938715337', N'Quản lý', N'admin          ', N'Chuyên Viên Trị Liệu Da Chuyên Sâu', N'Staff1.jpg', N'Sở hữu chuyên môn sâu rộng về da liễu, tôi am hiểu về cấu trúc, chức năng và các vấn đề da liễu thường gặp. Nhờ vậy, tôi có thể phân tích chính xác tình trạng da của mỗi khách hàng và đưa ra phác đồ điều trị phù hợp, hiệu quả, giúp họ tự tin với làn da của mình.')
INSERT [dbo].[NHANVIEN] ([IDNHANVIEN], [TENNV], [GIOITINH], [DIACHI], [TONGDANHGIA], [NGAYSINH], [SODT], [CHUCVU], [TENTK], [NGHIEPVU], [IMG], [MOTA]) VALUES (N'NV004          ', N'Phạm Quỳnh Hoa', 1, N'27 Đ.Nguyễn Thanh Tuyền, P.2, Q.Tân Bình, TP.HCM', 5, CAST(N'1998-01-26' AS Date), N'0936861807', N'Nhân viên', N'nv2c11         ', N'Chuyên Viên Tư Vấn', N'Staff8.jpg', N'Tôi cung cấp cho khách hàng thông tin chính xác, khách quan và phân tích trung lập, giúp họ đưa ra lựa chọn phù hợp với nhu cầu và mục tiêu của bản thân. Tôi sử dụng kiến thức và kinh nghiệm của mình để giúp khách hàng giải quyết các vấn đề họ đang gặp phải.')
INSERT [dbo].[NHANVIEN] ([IDNHANVIEN], [TENNV], [GIOITINH], [DIACHI], [TONGDANHGIA], [NGAYSINH], [SODT], [CHUCVU], [TENTK], [NGHIEPVU], [IMG], [MOTA]) VALUES (N'NV005          ', N'Trần Anh Tiến', 0, N'565 Đ.3 Tháng 2, P.14, Q.10, TP.HCM', 0, CAST(N'1993-04-26' AS Date), N'0932456358', N'Nhân viên', N'nv3c11         ', N'Chuyên Viên Chăm Sóc Da', N'Staff9.jpg', N'Trong suốt sự nghiệp của mình, tôi đã có cơ hội làm việc với nhiều khách hàng khác nhau, những người có làn da nhạy cảm, gặp phải các vấn đề về da như mụn trứng cá, lão hóa và nám da. Tôi luôn cập nhật những kiến thức và kỹ thuật mới nhất trong lĩnh vực chăm sóc da để mang đến cho khách hàng những dịch vụ tốt nhất.')
GO
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV001          ', N'Đắp mặt nạ', N'NV005          ', N'Trần Anh Tiến')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV0010         ', N'Triệt lông chân', N'NV002          ', N'Trần Luân Thanh')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV0011         ', N'Triệt lông nách', N'NV002          ', N'Trần Luân Thanh')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV0012         ', N'Triệt lông tay', N'NV002          ', N'Trần Luân Thanh')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV0013         ', N'Phun môi', N'NV002          ', N'Trần Luân Thanh')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV0014         ', N'Nối mi', N'NV002          ', N'Trần Luân Thanh')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV0015         ', N'Xăm chân mày', N'NV002          ', N'Trần Luân Thanh')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV002          ', N'Làm sạch da', N'NV005          ', N'Trần Anh Tiến')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV003          ', N'Điềm trị mụn', N'NV005          ', N'Trần Anh Tiến')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV004          ', N'Tẩy tế bào chết', N'NV004          ', N'Phạm Quỳnh Hoa')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV005          ', N'Tắm trắng', N'NV004          ', N'Phạm Quỳnh Hoa')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV006          ', N'Gội đầu dưỡng sinh', N'NV004          ', N'Phạm Quỳnh Hoa')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV007          ', N'Gội đầu thảo dược', N'NV004          ', N'Phạm Quỳnh Hoa')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV008          ', N'Dưỡng móng', N'NV004          ', N'Phạm Quỳnh Hoa')
INSERT [dbo].[NHANVIEN_DV] ([MADV], [TENDV], [IDNHANVIEN], [TENNV]) VALUES (N'DV009          ', N'Vẽ móng nghệ thuật', N'NV004          ', N'Phạm Quỳnh Hoa')
GO
INSERT [dbo].[SANPHAM] ([IDSP], [TENSP], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [THUE], [GIAMGIA], [IDDM], [DONVITINH], [SOLUONG]) VALUES (N'SP001          ', N'Bộ Chăm Sóc Da Chiết Xuất Rau Má Dành Cho Da Dầu Mụn', N'Combo bạn không nên bỏ qua, đặc biệt là những người có làn da dầu mụn dễ gặp phải các tình trạng như mụn trứng cá, lỗ chân lông to, bít tắc lỗ chân lông… giúp cải thiện hiệu quả tình trạng da.', N'Rau_Ma.jpg', NULL, NULL, 850000, 5, 0, 0, N'DMSP001        ', N'Bộ', 198)
INSERT [dbo].[SANPHAM] ([IDSP], [TENSP], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [THUE], [GIAMGIA], [IDDM], [DONVITINH], [SOLUONG]) VALUES (N'SP002          ', N'Bộ chu trình dưỡng da chuyên sâu Hoa hồng hữu cơ cocoon thuần chay', N'Cải thiện làn da khô, mất nước là một hành trình dài và sẽ không đạt được hiệu quả cao nếu thiếu đi bước đặc trị nhất - bước tinh chất.', N'Cocoon_HH.jpg', NULL, NULL, 1400000, 0, 0, 0, N'DMSP001        ', N'Bộ', 198)
INSERT [dbo].[SANPHAM] ([IDSP], [TENSP], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [THUE], [GIAMGIA], [IDDM], [DONVITINH], [SOLUONG]) VALUES (N'SP003          ', N'Bộ 3 sản phẩm chăm sóc cơ thể JEJU TANGERINE', N'Ngăn chặn sự mất nước và giúp giữ ẩm cho da lâu dài. Collagen thủy phân giúp tăng độ đàn hồi cho da bằng cách bổ sung độ ẩm từ sâu bên trong.', N'Jeju_Tangerine.jpg', NULL, NULL, 550000, 0, 0, 0, N'DMSP002        ', N'Bộ', 198)
INSERT [dbo].[SANPHAM] ([IDSP], [TENSP], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [THUE], [GIAMGIA], [IDDM], [DONVITINH], [SOLUONG]) VALUES (N'SP004          ', N'Kem Massage Body Dưỡng Ẩm Da Biyokea', N'Sản phẩm được chiết xuất bởi cám gạo, dầu olive, tinh dầu oải hương, hương thảo… mang đến độ ẩm cho làn da mềm mại.', N'Massage_Biyokea.jpg', NULL, NULL, 360000, 5, 0, 0, N'DMSP003        ', N'Chai', 198)
INSERT [dbo].[SANPHAM] ([IDSP], [TENSP], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [THUE], [GIAMGIA], [IDDM], [DONVITINH], [SOLUONG]) VALUES (N'SP005          ', N'Bộ trị liệu enzyme - DMK', N'Tăng cường tuần hoàn và thanh lọc bạch huyết, sản phẩm giúp thanh lọc độc tố, phục hồi sâu cấp độ tế bào, đồng thời nhẹ nhàng lấy đi tạp chất và cặn dư thừa trên da, làm sáng và săn chắc da.', N'Enzyme_DMK.jpg', NULL, NULL, 1960000, 5, 0, 0, N'DMSP004        ', N'Bộ', 199)
INSERT [dbo].[SANPHAM] ([IDSP], [TENSP], [MOTA], [IMG], [IMG2], [IMG3], [GIA], [TONGDANHGIA], [THUE], [GIAMGIA], [IDDM], [DONVITINH], [SOLUONG]) VALUES (N'SP006          ', N'Combo Tresemme Keratin Smooth', N'Bí quyết dưỡng tóc từ các chuyên gia tạo mẫu tóc trên thế giới, cho mái tóc của bạn đẹp chuẩn salon ngay tại nhà - với BỘ GỘI XẢ Ủ TRESemmé Keratin Smooth', N'Combo_Tresemme.jpg', NULL, NULL, 410000, 5, 0, 0, N'DMSP005        ', N'Bộ', 199)
GO
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV001          ', N'Đắp mặt nạ', N'SP001          ', N'Bộ Chăm Sóc Da Chiết Xuất Rau Má Dành Cho Da Dầu Mụn')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV001          ', N'Đắp mặt nạ', N'SP002          ', N'Bộ chu trình dưỡng da chuyên sâu Hoa hồng hữu cơ cocoon thuần chay')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV0010         ', N'Triệt lông chân', N'SP003          ', N'Bộ 3 sản phẩm chăm sóc cơ thể JEJU TANGERINE')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV0010         ', N'Triệt lông chân', N'SP004          ', N'Kem Massage Body Dưỡng Ẩm Da Biyokea')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV0011         ', N'Triệt lông nách', N'SP003          ', N'Bộ 3 sản phẩm chăm sóc cơ thể JEJU TANGERINE')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV0011         ', N'Triệt lông nách', N'SP004          ', N'Kem Massage Body Dưỡng Ẩm Da Biyokea')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV0012         ', N'Triệt lông tay', N'SP003          ', N'Bộ 3 sản phẩm chăm sóc cơ thể JEJU TANGERINE')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV0012         ', N'Triệt lông tay', N'SP004          ', N'Kem Massage Body Dưỡng Ẩm Da Biyokea')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV002          ', N'Làm sạch da', N'SP001          ', N'Bộ Chăm Sóc Da Chiết Xuất Rau Má Dành Cho Da Dầu Mụn')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV002          ', N'Làm sạch da', N'SP002          ', N'Bộ chu trình dưỡng da chuyên sâu Hoa hồng hữu cơ cocoon thuần chay')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV003          ', N'Điềm trị mụn', N'SP005          ', N'Bộ trị liệu enzyme - DMK')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV004          ', N'Tẩy tế bào chết', N'SP003          ', N'Bộ 3 sản phẩm chăm sóc cơ thể JEJU TANGERINE')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV004          ', N'Tẩy tế bào chết', N'SP004          ', N'Kem Massage Body Dưỡng Ẩm Da Biyokea')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV005          ', N'Tắm trắng', N'SP003          ', N'Bộ 3 sản phẩm chăm sóc cơ thể JEJU TANGERINE')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV005          ', N'Tắm trắng', N'SP004          ', N'Kem Massage Body Dưỡng Ẩm Da Biyokea')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV006          ', N'Gội đầu dưỡng sinh', N'SP006          ', N'Combo Tresemme Keratin Smooth')
INSERT [dbo].[SANPHAM_DV] ([MADV], [TENDV], [IDSP], [TENSP]) VALUES (N'DV007          ', N'Gội đầu thảo dược', N'SP006          ', N'Combo Tresemme Keratin Smooth')
GO
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'admin          ', N'def@123', N'admin456@gmail.com', N'QL ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'c11spa         ', N'abc@123', N'admin123@gmail.com', N'QL ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'khach1         ', N'111111', N'khach01@gmail.com', N'KH ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'khach2         ', N'222222', N'khach02@gmail.com', N'KH ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'khach3         ', N'333333', N'khach03@gmail.com', N'KH ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'nguyenthang    ', N'Nguyenthang1306@', N'ndt13102003@gmail.com', N'KH ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'nguyenthang12  ', N'nguyenthang12', N'nd1310@gmail.com', N'KH ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'nguyenthang13  ', N'Nguyenthang1310', N'nd1310@gmail.com', N'KH ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'nv1c11         ', N'123456', N'c11456@gmail.com', N'NV ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'nv2c11         ', N'123456', N'c11789@gmail.com', N'NV ')
INSERT [dbo].[TAIKHOAN] ([TENTK], [PASS], [EMAIL], [LOAITK]) VALUES (N'nv3c11         ', N'123456', N'c11012@gmail.com', N'NV ')
GO
ALTER TABLE [dbo].[DICHVU] ADD  DEFAULT ((0)) FOR [TONGDANHGIA]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  DEFAULT (N'Đồng') FOR [HANG]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT ((0)) FOR [TONGDANHGIA]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [TONGDANHGIA]
GO
ALTER TABLE [dbo].[TAIKHOAN] ADD  DEFAULT ('KH') FOR [LOAITK]
GO
ALTER TABLE [dbo].[DANHGIA_DV]  WITH CHECK ADD FOREIGN KEY([IDKHACHHANG])
REFERENCES [dbo].[KHACHHANG] ([IDKHACHHANG])
GO
ALTER TABLE [dbo].[DANHGIA_DV]  WITH CHECK ADD FOREIGN KEY([MADV])
REFERENCES [dbo].[DICHVU] ([MADV])
GO
ALTER TABLE [dbo].[DANHGIA_NV]  WITH CHECK ADD FOREIGN KEY([IDKHACHHANG])
REFERENCES [dbo].[KHACHHANG] ([IDKHACHHANG])
GO
ALTER TABLE [dbo].[DANHGIA_NV]  WITH CHECK ADD FOREIGN KEY([IDNHANVIEN])
REFERENCES [dbo].[NHANVIEN] ([IDNHANVIEN])
GO
ALTER TABLE [dbo].[DANHGIA_SP]  WITH CHECK ADD FOREIGN KEY([IDKHACHHANG])
REFERENCES [dbo].[KHACHHANG] ([IDKHACHHANG])
GO
ALTER TABLE [dbo].[DANHGIA_SP]  WITH CHECK ADD FOREIGN KEY([IDSP])
REFERENCES [dbo].[SANPHAM] ([IDSP])
GO
ALTER TABLE [dbo].[DICHVU]  WITH CHECK ADD FOREIGN KEY([IDDM])
REFERENCES [dbo].[DANHMUCDV] ([IDDM])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([IDKHACHHANG])
REFERENCES [dbo].[KHACHHANG] ([IDKHACHHANG])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([IDNHANVIEN])
REFERENCES [dbo].[NHANVIEN] ([IDNHANVIEN])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MAKM])
REFERENCES [dbo].[KHUYENMAI] ([MAKM])
GO
ALTER TABLE [dbo].[HOADON_DV]  WITH CHECK ADD FOREIGN KEY([IDHOADON])
REFERENCES [dbo].[HOADON] ([IDHOADON])
GO
ALTER TABLE [dbo].[HOADON_DV]  WITH CHECK ADD FOREIGN KEY([MADV])
REFERENCES [dbo].[DICHVU] ([MADV])
GO
ALTER TABLE [dbo].[HOADON_SP]  WITH CHECK ADD FOREIGN KEY([IDHOADON])
REFERENCES [dbo].[HOADON] ([IDHOADON])
GO
ALTER TABLE [dbo].[HOADON_SP]  WITH CHECK ADD FOREIGN KEY([IDSP])
REFERENCES [dbo].[SANPHAM] ([IDSP])
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD FOREIGN KEY([TENTK])
REFERENCES [dbo].[TAIKHOAN] ([TENTK])
GO
ALTER TABLE [dbo].[LICHHEN]  WITH CHECK ADD FOREIGN KEY([IDKHACHHANG])
REFERENCES [dbo].[KHACHHANG] ([IDKHACHHANG])
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD FOREIGN KEY([TENTK])
REFERENCES [dbo].[TAIKHOAN] ([TENTK])
GO
ALTER TABLE [dbo].[NHANVIEN_DV]  WITH CHECK ADD FOREIGN KEY([IDNHANVIEN])
REFERENCES [dbo].[NHANVIEN] ([IDNHANVIEN])
GO
ALTER TABLE [dbo].[NHANVIEN_DV]  WITH CHECK ADD FOREIGN KEY([MADV])
REFERENCES [dbo].[DICHVU] ([MADV])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([IDDM])
REFERENCES [dbo].[DANHMUCSP] ([IDDM])
GO
ALTER TABLE [dbo].[SANPHAM_DV]  WITH CHECK ADD FOREIGN KEY([IDSP])
REFERENCES [dbo].[SANPHAM] ([IDSP])
GO
ALTER TABLE [dbo].[SANPHAM_DV]  WITH CHECK ADD FOREIGN KEY([MADV])
REFERENCES [dbo].[DICHVU] ([MADV])
GO
USE [master]
GO
ALTER DATABASE [KHOCTHATNHIEU] SET  READ_WRITE 
GO

--TRIGGER
--TỔNG SAO Ở NHÂN VIÊN 
CREATE OR ALTER TRIGGER DG_NV
ON DANHGIA_NV 
AFTER INSERT, UPDATE
AS BEGIN
	DECLARE @IDNV CHAR(15),@SOSAO FLOAT
	DECLARE CONTRO CURSOR
	FOR SELECT A.IDNHANVIEN, ROUND(AVG(CONVERT(FLOAT,A.SOSAO)),1) FROM DANHGIA_NV A INNER JOIN INSERTED B ON A.IDNHANVIEN = B.IDNHANVIEN GROUP BY A.IDNHANVIEN
	OPEN CONTRO 
	FETCH NEXT FROM CONTRO INTO @IDNV,@SOSAO
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		UPDATE NHANVIEN
		SET TONGDANHGIA = @SOSAO
		WHERE IDNHANVIEN = @IDNV
		FETCH NEXT FROM CONTRO INTO @IDNV,@SOSAO
	END
	CLOSE CONTRO
	DEALLOCATE CONTRO
END

--HẠNG KHÁCH HÀNG
CREATE OR ALTER TRIGGER HANG_KH
ON KHACHHANG FOR UPDATE, INSERT
AS BEGIN
	DECLARE @SODT CHAR(10) 
	DECLARE CONTRO5 CURSOR FOR SELECT SODT FROM inserted
	OPEN CONTRO5
	FETCH NEXT FROM CONTRO5 INTO @SODT
	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE @CHITIEU INT
		SET @CHITIEU = (SELECT CHITIEU FROM KHACHHANG WHERE SODT = @SODT)
		--CHI TIÊU < 1TR 
		IF @CHITIEU >= 0 AND @CHITIEU <1000000
		BEGIN
			UPDATE KHACHHANG
			SET HANG = N'Đồng'
			WHERE SODT = @SODT
		END
		--CHI TIÊU < 2TR5
		ELSE IF @CHITIEU < 2500000
		BEGIN
			UPDATE KHACHHANG
			SET HANG = N'Bạc'
			WHERE SODT = @SODT
		END
		--CHI TIÊU < 5TR
		ELSE IF @CHITIEU < 5000000
			BEGIN
			UPDATE KHACHHANG
			SET HANG = N'Vàng'
			WHERE SODT = @SODT
		END
		--CHI TIÊU < 10TR 
		ELSE IF @CHITIEU < 10000000
		BEGIN
			UPDATE KHACHHANG
			SET HANG = N'Bạch Kim'
			WHERE SODT = @SODT
		END
		--CHI TIÊU LỚN HƠN 10TR 
		ELSE
		BEGIN
			UPDATE KHACHHANG
			SET HANG = N'Kim Cương'
			WHERE SODT = @SODT
		END
		FETCH NEXT FROM CONTRO5 INTO @SODT
	END
	CLOSE CONTRO5 
	DEALLOCATE CONTRO5
END

--CHI TIÊU KHÁCH HÀNG
CREATE OR ALTER TRIGGER CHITEU_KH
ON HOADON
FOR INSERT , UPDATE
AS BEGIN
	 DECLARE @TONGGIA INT , @SODT CHAR(10)
	 DECLARE CONTRO1 CURSOR
	 FOR SELECT SODT,TONGGIA FROM INSERTED 
	 OPEN CONTRO1
	 FETCH NEXT FROM CONTRO1 INTO @SODT,@TONGGIA
	 WHILE @@FETCH_STATUS = 0
	 BEGIN 
		DECLARE @CHITIEU INT
		SET @CHITIEU = (SELECT CHITIEU FROM KHACHHANG WHERE SODT = @SODT)
		UPDATE KHACHHANG
		SET CHITIEU = @CHITIEU + @TONGGIA
		WHERE SODT = @SODT
		FETCH NEXT FROM CONTRO1 INTO @SODT,@TONGGIA
	 END	
	 CLOSE CONTRO1
	 DEALLOCATE CONTRO1
END

--ĐÁNH GIÁ DỊCH VỤ
CREATE OR ALTER TRIGGER DG_DV 
ON DANHGIA_DV 
AFTER INSERT, UPDATE 
AS BEGIN
	DECLARE @MADV CHAR(15),@SOSAO FLOAT
	DECLARE CONTRO2 CURSOR
	FOR SELECT A.MADV, ROUND(AVG(CONVERT(FLOAT,A.SOSAO)),1) FROM DANHGIA_DV A INNER JOIN INSERTED B ON A.MADV = B.MADV GROUP BY A.MADV
	OPEN CONTRO2 
	FETCH NEXT FROM CONTRO2 INTO @MADV,@SOSAO
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		UPDATE DICHVU
		SET TONGDANHGIA = @SOSAO
		WHERE MADV = @MADV
		FETCH NEXT FROM CONTRO2 INTO @MADV,@SOSAO
	END
	CLOSE CONTRO2
	DEALLOCATE CONTRO2
END

--ĐÁNH GIÁ SẢN PHẨM
CREATE OR ALTER TRIGGER DG_SP
ON DANHGIA_SP 
AFTER INSERT, UPDATE 
AS BEGIN
	DECLARE @IDSP CHAR(15),@SOSAO FLOAT
	DECLARE CONTRO3 CURSOR
	FOR SELECT A.IDSP, ROUND(AVG(CONVERT(FLOAT,A.SOSAO)),1) FROM DANHGIA_SP A INNER JOIN INSERTED B ON A.IDSP = B.IDSP GROUP BY A.IDSP
	OPEN CONTRO3 
	FETCH NEXT FROM CONTRO3 INTO @IDSP,@SOSAO
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		UPDATE SANPHAM
		SET TONGDANHGIA = @SOSAO
		WHERE IDSP = @IDSP
		FETCH NEXT FROM CONTRO3 INTO @IDSP,@SOSAO
	END
	CLOSE CONTRO3
	DEALLOCATE CONTRO3
END

--CẬP NHẬT SỐ LƯỢNG SẢN PHẨM

--SELECT *FROM SANPHAM
--SELECT *FROM HOADON
--SELECT *FROM HOADON_SP


--insert into HOADON_SP values (5,	500000,	500000,	0,	0,	'SP002', 'HD001')
--insert into HOADON_SP values (10,500000,	500000,	0,	0,	'SP003', 'HD001')
--insert into HOADON_SP values (8,	500000,	500000,	0,	0,	'SP002', 'HD002')

--delete from HOADON_SP 
--where IDSP = 'SP003' and IDHOADON = 'HD001'

CREATE OR ALTER TRIGGER trig_insert ON HOADON_SP
FOR INSERT
AS BEGIN	
	
	declare @IDSP char(15),
			@SL int

	declare cur_hd_sp CURSOR for
	select IDSP, SOLUONG  from inserted
	open cur_hd_sp
	fetch next from cur_hd_sp into @IDSP, @SL
	while @@FETCH_STATUS = 0
	begin

	update SANPHAM
	set SOLUONG = SOLUONG - @SL
	where IDSP = @IDSP

	fetch next from cur_hd_sp into @IDSP, @SL
	end

	close cur_hd_sp
	deallocate cur_hd_sp

END