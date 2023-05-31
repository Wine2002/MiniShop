CREATE DATABASE QLBanHang1
USE [QLBanHang1]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[MaHoaDon] [char](25) NOT NULL,
	[MaChiTietSP] [char](25) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GiamGia] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietSanPham]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietSanPham](
	[MaChiTietSP] [char](25) NOT NULL,
	[MaSP] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[Video] [char](100) NULL,
	[DonGiaBan] [float] NULL,
	[GiamGia] [float] NULL,
	[SLTon] [int] NULL,
 CONSTRAINT [PK_tChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDanhMucSP]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [char](25) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[CanNang] [float] NULL,
	[ThoiGianBaoHanh] [float] NULL,
	[GioiThieuSP] [nvarchar](max) NULL,
	[ChietKhau] [float] NULL,
	[MaLoai] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GiaNhoNhat] [money] NULL,
	[GiaLonNhat] [money] NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[MaHoaDon] [char](25) NOT NULL,
	[NgayHoaDon] [datetime] NULL,
	[MaKhachHang] [char](25) NULL,
	[MaNhanVien] [char](25) NULL,
	[TongTienHD] [money] NULL,
	[GiamGiaHD] [float] NULL,
	[PhuongThucThanhToan] [tinyint] NULL,
	[MaSoThue] [char](100) NULL,
	[ThongTinThue] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhanhHang] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[LoaiKhachHang] [tinyint] NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhanhHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



GO
/****** Object:  Table [dbo].[tLoaiSP]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [char](25) NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhanVien]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNhanVien] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai1] [char](15) NULL,
	[SoDienThoai2] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUser]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[username] [char](100) NOT NULL,
	[password] [char](256) NOT NULL,
	[LoaiUser] [tinyint] NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP01', N'Rau cần', 5, NULL, N'Cần tây chứa các chất chống oxy hóa và polysaccharide (một loại phân tử carbohydrate) được biết có tác dụng như chất chống nhiễm khuẩn, đặc biệt là chất chống oxy hóa flavonoid và polyphenol. Những chất này hỗ trợ sức khỏe toàn diện, đặc biệt cho người lớn tuổi, bằng cách chống lại các tác hại của gốc tự do (hay còn gọi là mất cân bằng oxy hóa) làm cơ thể bị nhiễm khuẩn. Đây thường là nguyên nhân của bệnh mạn tính như ung thư, tim mạch,…', NULL, N'raucu', N'001.jpg', 20000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP06', N'Măng trúc quân thử Kim Bôi', 300, NULL, N'Măng trúc quân tử Kim Bôi 300g được chọn lọc từ măng nứa tự nhiên. Trong măng chứa khá nhiều magiê và rất giàu chất xơ, cùng với hàm lượng chất béo, chất đường rất thấp, măng là loại thực phẩm có tác dụng thúc đẩy nhu động ruột, trợ giúp tiêu hóa, phòng chống có hiệu quả tình trạng béo phì, xơ vữa động mạch, cao huyết áp.', NULL, N'raucu', N'006.jpg', 41500, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP07', N'Bắp cải trái tim WinEco', 1000, NULL, N'Bắp cải trái tim L1 WinEco có chứa rất nhiều chất xơ, kích thích các nhu động ruột, giúp tiêu hóa dễ dàng và phòng chống táo bón. Ngoài ra trong bắp cải còn chứa nhiều vitamin C, K, B6, folate, mangan, thiamin, canxi, sắt, magiê, phốt pho và kali rất có lợi cho sức khỏe. Hàm lượng vitamin cao trong bắp cải giúp ổn định và bền vững cấu trúc các thành mạch, phòng chống các bệnh về tim mạch. Ngoài ra, trong bắp cải còn nhiều chất chống ung thư như: Sulforaphane, phenethyl isothiocyanate và Indol -33 carbinol.', NULL, N'raucu', N'007.jpg', 23920, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP08', N'Bắp cải tím WinEco', 1000, NULL, N'Bắp cải tím là loại thực phẩm ngon, giàu chất dinh dưỡng, lại có nhiều tác dụng đối với sức khỏe con người. Trong bắp cải tím chứa nhiều dưỡng chất là vitamin C, vitamin K và đặc biệt là anthocyanin polyphenols. Đây là một chất có khả năng chống oxy hóa cao, nên có tính khả viêm, giảm nguy cơ bệnh tiểu đường, tim mạch và ung thư. Các tác dụng hữu ích đem lại khi sử dụng bắp cải tím là: Hỗ trợ hiệu quả cho người đang trong giai đoạn ăn kiêng và giảm cân, Tăng cường chức năng của hệ miễn dịch, giúp bảo vệ cơ thể hiệu quả hơn, Cải thiện hệ tiêu hóa, phòng chống viêm loét dạ dày, Ngăn ngừa bệnh loãng xương, giúp xương và răng chắc khỏe, cứng cáp.', NULL, N'raucu', N'008.jpg', 27600, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP09', N'Cải cúc WinEco', 300, NULL, N'Cải cúc Vietgap do Sói Biển cung cấp cam kết tuân thủ những nguyên tắc, trình tự, thủ  tục hướng dẫn sản xuất, thu hoạch, xử lý sau thu hoạch nhằm đảm bảo an toàn, loại bỏ hoàn toàn các mối lo về thuốc trừ sâu, thuốc kích thích tăng trưởng, đảm bảo tiêu chí ngon, an toàn thực phẩm.', NULL, N'raucu', N'009.jpg', 9200, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP10', N'Cải chíp WinEco', 300, NULL, N'Cải canh hữu cơ do Sói Biển cung cấp cam kết tuân thủ những nguyên tắc, trình tự, thủ tục hướng dẫn sản xuất, thu hoạch, xử lý sau thu hoạch nhằm đảm bảo an toàn, loại bỏ hoàn toàn các mối lo về thuốc trừ sâu, thuốc kích thích tăng trưởng,... nâng cao chất lượng sản phẩm, đảm bảo phúc lợi xã hội, sức khỏe người sản xuất và người tiêu dùng.', NULL, N'raucu', N'010.jpg', 10300, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP11', N'Rau mầm cải ngọt WinEco', 100, NULL, N'Rau mầm cải ngọt WinEco 100g có màu xanh, lá thật mới nhú. Vị ngọt và giòn.', NULL, N'raucu', N'011.jpg', 14800, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP12', N'Giá đỗ WinEco', 300, NULL, N'Giá đỗ chứa nhiều axid amin, canxi và khoáng chất giúp chống lão hóa xương. Giàu giá trị dinh dưỡng, giàu protein, vitamin E, C ở dạng thiên nhiên. Đặc biệt trong mầm đậu nành còn chứa chất isoflavones hay còn được gọi là estrogen thảo mộc, thích hợp cho phụ nữ ', NULL, N'raucu', N'012.jpg', 8000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP13', N'Hành lá WinEco', 100, NULL, N'Hành lá có chứa các hợp chất hóa học tự nhiên (dinh dưỡng thực vật), lưu huỳnh cần thiết để trung hòa các gốc tự do và sự lây lan của một số tế bào ung thư. Hành được coi là thực phẩm có tính kháng viêm cao. Ngoài ra, nó lại rất giàu vitamin A, B, C là một nguồn tiềm năng của axit folic, canxi, phốt pho, magiê, crom, sắt và chất xơ. Bạn có thể cho hành lá vào món ăn nấu chín và trứng tráng, thêm vào súp, nước dùng, món hầm, xào với các loại rau khác.', NULL, N'raucu', N'013.jpg', 4000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP14', N'Cải thảo WinEco', 1200, NULL, N'Cải thảo có thể sử dụng để chế biến thành nhiều món ăn như xào, canh, nấu lẩu hay đặc biệt là món kim chi Hàn Quốc được rất nhiều người yêu thích. Cải thảo có vị ngọt, tính mát, dễ ăn, chứa nhiều chất xơ, tốt cho hệ tiêu hóa và phòng ngừa táo bón. Trong cải thảo chứa nhiều chất dinh dưỡng như vitamin A, C, K, B2, B6, calcium, sắt, mangan, folat, cùng nhiều chất dinh dưỡng khác tốt cho cơ thể. Cải thảo là loại rau phổ biến và được nhiều người dùng ưa chuộng.', NULL, N'raucu', N'014.jpg', 20000, NULL)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP02', N'Pepsi', 330, NULL, N'Nước giải khát không calo Pesi 330ml là loại nước giải khát độc đáo vị chanh và không calo. Sản phẩm hứa hẹn sẽ mang đến một trải nghiệm hoàn toàn mới mẻ đầy thú vị.', NULL, N'douong', N'002.jpg', 20000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP15', N'Nước giải khát Coca Cola', 1500, NULL, N'Nước giải khát Coca Cola chai 1.5L đã có mặt tại thị trường Việt Nam từ rất lâu và đã đạt được rất nhiều thành công. Không chỉ là đồ uống để giải khát sau những giờ chơi thể thao liên tục, Coca Cola còn là một thức uống giúp giải tỏa mệt mỏi sau những ngày làm việc căng thẳng và mệt mỏi.', NULL, N'douong', N'015.jpg', 14000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP16', N'Nước giải khát có gas 7 Up', 1500, NULL, N'Nước giải khát có gas 7 Up được sản xuất trên dây chuyền hiện đại, không chứa chất bảo quản và hóa chất độc hại cho người sử dụng. Sản phẩm thuộc thương hiệu nước giải khát nổi tiếng Pepsico nên người dùng hoàn toàn yên tâm về chất lượng. Nước giải khát có gas 7 Up​ giúp bù đắp lượng nước bị mất đi do vận động, chơi thể thao, với hương vị đặc trưng, không chỉ giải khát, mà còn giúp bạn lấy lại năng lượng cho hoạt động hàng ngày.', NULL, N'douong', N'016.jpg', 15900, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP17', N'Nước hương dâu thạch dừa MOGU', 320, NULL, N'Nước uống hương dâu thạch dừa MOGU chai 320ml là thức uống giải khát nổi tiếng được rất nhiều người tiêu dùng yêu thích. Sản phẩm được sản xuất trên dây chuyền công nghệ hiện đại, đảm bảo an toàn vệ sinh với thiết kế chai nắp vặn kín, dễ dàng mang theo bên mình để sử dụng mọi lúc, mọi nơi. Nước uống Mogu thạch dừa với nhiều hương vị thơm ngon, cung cấp nước và các vitamin thiết yếu cho cơ thể, tuyệt vời cho những người vận động mạnh, cần bổ sung năng lượng cho cơ thể.', NULL, N'douong', N'017.jpg', 14500, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP18', N'Trà ô long Tea Plus vị chanh', 1000, NULL, N'Được chế biến từ những lá trà ô long hảo hạng mang đến cho bạn một cơ thể khỏe mạnh, tinh thần sảng khoái suốt ngày dài. Thùng 12 chai trà ô long Tea Plus 1 lít chính hãng trà Tea Plus không có đường hóa học, không chứa hóa chất độc hại, an toàn cho người sử dụng.', NULL, N'douong', N'018.jpg', 18400, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP19', N'Nước tăng lực Monster Mango Loco', 335, NULL, N'Nước Tăng Lực Monster Mango Loco là thương hiệu nước tăng lực hàng đầu tại Mỹ, là biểu tượng toàn cầu và có mặt trên 125 quốc gia. Monster thể hiện đẳng cấp, phong cách sống khác biệt, là hiện thân của sự mạnh mẽ, huyền bí và vui nhộn. Kết hợp cùng vị Xoài độc đáo tạo nên sự kết hợp tuyệt vời mang đến nguồn năng lượng tích cực. Mango Loco là sự pha trộn tuyệt vời của nước ép Xoài lạ miệng nhất định sẽ thu hút cả những tinh thần cứng đầu nhất. Vị ngon tuyệt vời với lượng dồi dào vừa đủ để giữ bữa tiệc kéo dài lâu hơn. Monster là thức uống dành cho thế hệ trẻ dám sống khác biệt và đương đầu với thử thách mới. Monster luôn gắn kết với các hoạt động thể thao phiêu lưu mạo hiểm, những trò chơi trực tuyến và âm nhạc sôi động.', NULL, N'douong', N'019.jpg', 26000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP20', N'Trà chanh với sả Fuze Tea', 1000, NULL, N'Trà chanh sả Fuze Tea+ với thành phần chứa tinh chất của những lá trà xanh tinh khiết hòa quyện cùng hương vị chanh sả thơm mát không chỉ giúp giải khát tức thì mà còn mang lại những công dụng tuyệt vời cho sức khỏe.', NULL, N'douong', N'020.jpg', 15000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP21', N'Nước đào Vfresh Vinamilk', 1000, NULL, N'Nước đào Vfresh Vinamilk hộp 1L của thương hiệu Vinamilk được sản xuất trên quy trình công nghệ hiện đại, mang đến chất lượng tốt chất cho người tiêu dùng. Sản phẩm chứa đến 42% nước đào ép, giữ nguyên được hương vị tự nhiên, thơm ngon vốn có trong quả đào. Nước đào ép là nguồn dinh dưỡng rất tốt cho vóc dáng và sức khoẻ, để bạn luôn khoẻ khoắn và tươi tắn năng động. Đào chứa đuờng glucoza, đường saccaro, protein, caroten, vitamin B1, B2, C, PP và các chất sắt.', NULL, N'douong', N'021.jpg', 43000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP22', N'Trà sữa Latte Kirin chai', 345, NULL, N'Nước vị trà sữa Latte 345ml với hương vị đậm đà của trà đen thiên nhiên pha trộn cùng sữa vô cùng thơm ngon, bổ dưỡng nhanh chóng đập tan cơn khát và mang lại cho bạn cảm giác sảng khoái khi thưởng thức. Sản phẩm được sản xuất trên dây chuyền hiện đại, đảm bảo vệ sinh an toàn thực phẩm, an toàn với sức khoẻ người dùng.', NULL, N'douong', N'022.jpg', 10000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP23', N'Nước gạo Morning Rice chai', 1500, NULL, N'Sản phẩm có thành phần tự nhiên từ tinh chất gạo 45%, tinh chất gạo nâu, đường, kem không sữa, gạo nếp khô, hương gạo, vitamin C, glyxerin, axit citric… Tất cả nguyên liệu đều được lựa chọn theo tiêu chuẩn, không chứa hóa chất độc hại vô cùng an toàn cho người sử dụng. Nước gạo rang Woongjin có vị ngọt, thơm dịu, bùi nhưng không ngấy, không chứa nhiều chất béo. Không chỉ giúp cơ thể bù đắp nước, nước gạo rang còn là thức uống dinh dưỡng bổ sung năng lượng, nhiều vitamin và khoáng chất có lợi, giúp xua tan cơn khát và cảm giác mệt mỏi. Nước gạo rang Woongjin​ được đóng chai với quy trình khép kín, có thể bảo quản dễ dàng nơi khô mát hay trong ngăn mát tủ lạnh mà không sợ sản phẩm hư hỏng hay bị thay đổi mùi vị. Người dùng có thể mang theo dễ dàng khi đi học, đi làm hay trong những chuyến đi chơi, picnic.', NULL, N'douong', N'023.jpg', 75000, NULL)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP03', N'Pate cột đèn Hải Phòng', 5, NULL, N'Pate Hạ Long thơm ngon tiện lợi cho bữa ăn của bạn thêm phần hấp dẫn. Pate thịt đóng hộp cột đèn Hải Phòng Hạ Long hộp 150g được làm từ những nguyên liệu tươi ngon, chọn lọc kỹ lưỡng như thịt heo, gan heo. Pate thịt mang đến hương vị thơm ngon cho người dùng.', NULL, N'dohop', N'003.png', 30000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP24', N'Cá sốt cà Pompui hộp', 155, NULL, N'Xuất xứ tại Thái Lan, Cá sốt cà Pompui hộp 155g của Cá hộp Pompui sẽ là sự lựa chọn tuyệt vời khi kết hợp giữa vị giòn, ngọt của thịt cá hộp kết hợp với vị đậm đà của xốt cà chua được pha chế đặc biệt. Đây là một món ăn vừa thơm ngon, vừa đầy đủ dinh dưỡng vừa lạ miệng.', NULL, N'dohop', N'024.jpg', 19000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP25', N'Thịt heo Pork Luncheon Meat ít muối Tulip hộp', 340, NULL, N'Tiện lợi, thơm ngon và dinh dưỡng. Thịt heo Pork Luncheon Meat ít muối Tulip hộp 340g  tiết kiệm thời gian nấu nướng cho những người bận rộn nhưng vẫn cũng cấp cho bạn và gia đình món ăn ngon, chất lượng và an toàn. Heo hộp Tulip đậm đà gia vị, kích thích vị giác, ăn không ngán.', NULL, N'dohop', N'025.jpg', 100000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP26', N'Cá ngừ xắt lát ngâm dầu đậu nành Nautilus hộp', 170, NULL, N'Xuất xứ tại xứ sở chùa vàng Thái Lan, cá ngừ xắt lát ngâm dầu đậu nành Nautilus hộp 170g được sản xuất từ thịt cá ngừ tươi ngon, chọn lọc kĩ càng ngâm trong dầu đậu nành  cao cấp, tạo nên một món ăn béo ngậy, thơm ngon, có thể kết hợp với salad hoặc sandwish để chống ngấy, phù hợp với người bận rộn.', NULL, N'dohop', N'026.jpg', 49000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP27', N'Cá mòi sốt cà chua Bigcan lon', 140, NULL, N'Cá mòi được tắm trong sốt cà chua tạo nên vị đậm đà từ cà chua. Cá mòi sốt cà chua Bigcan lon 140g là một nguyên liệu chế biến thành nhiều món ăn ngon. Sản phẩm cá hộp từ thương hiệu cá hộp Bigcan có thể ăn trực tiếp.', NULL, N'dohop', N'027.jpg', 21000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP28', N'Cá ngừ ngâm dầu Seaspimex hộp', 185, NULL, N'Cá ngừ ngâm dầu Seaspimex là sản phẩm mang đến hương vị cá ngừ truyền thống. Với phần thịt cá ngừ chiếm 70% và dầu thực vật cùng các loại gia vị, sản phẩm sẽ giúp bạn có cảm nhận được độ béo và tơi xốp của phần thịt cá cùng với lớp dầu thực vật thơm ngon, lạ miệng.', NULL, N'dohop', N'028.jpg', 30000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP29', N'Cá saba xốt sriracha Seaspimex hộp', 185, NULL, N'Cá hộp là món ăn tiện lợi, tiết kiệm thời gian và nhưng vẫn đảm bảo dinh dưỡng. Cá saba xốt sriracha Seaspimex hộp 185g thơm ngon, có thể dùng ăn trực tiếp với cơm hoặc chế biến thành những món ăn khác như salad, trộn,... Cá hộp Seaspimex chất lượng, thơm ngon và dinh dưỡng', NULL, N'dohop', N'029.jpg', 26000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP30', N'Thịt heo nguyên vị Bristol', 340, NULL, N'Thịt heo hộp Bristol thơm ngon được làm từ thịt đùi heo chất lượng, gia vị hoàn chỉnh. Thịt heo nguyên vị Bristol hộp 340g với đóng gói tiện lợi, dễ mở, nhỏ gọn dễ mang theo bên người. Thịt heo hộp tiện lợi, đậm đà có thể dùng với cơm nóng, chế biến các món ăn ngon như salad, chiên, xào,...', NULL, N'dohop', N'030.jpg', 99000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP31', N'Bò hai lát Vissan hộp', 170, NULL, N'Thành phần bao gồm thịt bò, thịt heo cùng các loại gia vị khác được chọn lựa kĩ càng. Với bò 2 lát Vissan hộp 170g của thương hiệu thịt bò hộp Vissan,  bạn sẽ tiết kiệm thời gian nấu ăn, chỉ cần làm nóng lại thịt bò hộp trước khi dùng là đã sẵn sàng cho một món ăn thơm ngon bổ dưỡng.', NULL, N'dohop', N'031.jpg', 37000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP32', N'Cá ngừ xốt gia vị Century hộp', 180, NULL, N'Cá hộp Century chứa hàm lượng cao chất đạm, vitamin B, vitamin D và các khoáng chất nên rất tốt cho sức khỏe. Cá ngừ xốt gia vị Century hộp 180g là sản phẩm cá hộp làm từ cá ngừ, giúp bạn có bữa ăn nhanh chóng, tiện lợi, đảm bảo đầy đủ chất dinh dưỡng.', NULL, N'dohop', N'032.jpg', 32000, NULL)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP04', N'Tôm', 5, NULL, N'Tôm tại Bách hoá XANH tươi ngon vô cùng, tôm to, thịt ngọt và cầm rất chắc tay, dùng làm nguyên liệu chính cho nhiều món ăn. Tôm thẻ chứa nhiều năng lượng và protein tốt cho cơ thể, từ trẻ em cho đến người già ai cũng có thể ăn tôm thẻ.', NULL, N'haisan', N'004.jpg', 50000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP33', N'Cá đù con 1 nắng', 250, NULL, N'Cá đù con 1 nắng khay 250g là loại có chứa nhiều dinh dưỡng, khi ăn thịt béo, thơm ngon. Cá đù con một nắng vô cùng tiện lợi, có thể chế biến thành nhiều món ăn ngon và hấp dẫn. Cá Song Phương được đảm bảo chất lượng và vệ sinh.', NULL, N'haisan', N'033.jpg', 49000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP34', N'Cá hồi đông lạnh cắt khúc', 300, NULL, N'Cá hồi cắt khúc đông lạnh vẫn giữ được độ tươi ngon, màu sắc bắt mắt, được sơ chế sạch sẽ an toàn, đặt mua giao hàng trong ngày tại Bách hoá XANH. Cá hồi xuất xứ Chi Lê, chứa nhiều chất dinh dưỡng, được nhiều chọn mua cung cấp cho bữa ăn gia đình', NULL, N'haisan', N'034.jpg', 89000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP35', N'Cá cam nguyên con đông lạnh', 800, NULL, N'Là loại cá biển bổ dưỡng, được nhiều người yêu thích, chứa nhiều chất dinh dưỡng tốt cho sức khoẻ như omega-3, protein, vitamin E, A... Cá cam tươi đông lạnh giúp bảo quản lâu hơn mà thịt cá vẫn chắc, không bở mà vẫn giữ nguyên vị đậm đà.', NULL, N'haisan', N'035.jpg', 49000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP36', N'Cua thịt Cà Mau 1 con', 230, NULL, N'Cua thịt nguyên con, tươi ngon, thịt cua chắc, ngọt thịt. Cua thịt giàu dinh dưỡng, hương vị thơm ngon, hấp dẫn, được nhiều người yêu thích lựa chọn. Cua thịt tại Bách hóa XANH chất lượng, đảm bảo độ tươi, mang đến sự hài lòng của khách hàng.', NULL, N'haisan', N'036.jpg', 118000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP37', N'Tôm hùm bông nguyên con', 300, NULL, N'Tôm hùm bông tươi ngon, có thịt ngọt và dai, là tôm ngộp có nguồn gốc tại Khánh Hòa. Là loại hải sản giàu dinh dưỡng, cung cấp hàm lượng canxi và sắt rất cao cho chế độ ăn hằng ngày. Tôm hùm bông còn mang lại nhiều lợi ích cho sức khỏe.', NULL, N'haisan', N'037.jpg', 190000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP38', N'Cá lóc làm sạch', 300, NULL, N'Cá lóc hay còn được gọi là cá quả, là một nguyên liệu quen thuộc thường xuất hiện trên bàn ăn của mỗi gia đình. Cá lóc có thịt ngọt, rất ngon, thích hợp làm nhiều món ăn hấp dẫn như bánh canh cá lóc, canh chua cá lóc, cá lóc kho tộ,... đảm bảo sẽ khiến cả nhà mê tít', NULL, N'haisan', N'038.jpg', 37000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP39', N'Râu mực nhập khẩu đông lạnh', 500, NULL, N'Râu mực tươi ngon, có vị dai giòn, sật sật ăn đã miệng vô cùng. Râu mực là hải sản tạo nên nhiều món ăn thơm ngon vô cùng, được các bà nội trợ ưa chuộng và tin dùng, dùng làm nguyên liệu cho bữa ăn của cả nhà', NULL, N'haisan', N'039.jpg', 49000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP40', N'Thịt ốc bươu làm sạch', 200, NULL, N'Thịt ốc bươu làm sạch là một món ngon quen thuộc với người dân Việt Nam. Thịt ốc bươu mát, ngon, khi hấp lên có vị giòn giòn ăn không ngán. Thịt ốc bươu khay được làm sạch sẽ vô cùng, chỉ cần mua về rửa sạch là có thể chế biến tuỳ thích', NULL, N'haisan', N'040.jpg', 13000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP41', N'Đầu cá hồi đông lạnh', 500, NULL, N'Đầu cá hồi có xương mềm, béo có thể nấu canh chua, nấu lẩu,... đầu cá mua về có thể dùng muối và chanh để khử mùi tanh. Đầu cá hồi tươi đông lạnh có thể kéo dài thời gian bảo quản, thích hợp cho nhu cầu gia đình trong việc chế biến và mang đến những món ăn bổ dưỡng.', NULL, N'haisan', N'041.jpg', 36000, NULL)

GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP05', N'Mì tôm', 5, NULL, N'Mì tôm chua cay', NULL, N'doanlien', N'005.jpg', 5000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP42', N'Phở gà Cung Đình Hà Nội', 68, NULL, N'Phở có sợi to, đẹp, khá là thơm và có gói nước cốt xương hầm, vị đậm vị. Phở gà Cung Đình Hà Nội gói 68g thơm ngon, đậm đà kích thích vị giác. Phở Cung Đình chất lượng là lựa chọn sáng suốt cho bữa sáng chất lượng.', NULL, N'doanlien', N'042.jpg', 8400, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP43', N'Phở bò Cung Đình Hà Nội', 68, NULL, N'Từng sợi phở dai ngon hòa quyện trong nước súp đậm đà của phở Cung Đình phong cách phở Hà Nội thấm đẫm trong từng sợi sóng sánh, cùng hương thơm đặc trưng khó quên. Phở bò Cung Đình Hà Nội gói 68g ngon hơn nhờ gói nước cốt xương hầm chất lượng cho bạn hương vị phở đậm đà hấp dẫn', NULL, N'doanlien', N'043.jpg', 8400, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP44', N'Phở bò nguyên miếng Chinsu', 132, NULL, N'Sợi phở dẹp, to, dai ngon cùng nước sốt đậm đà, có gói thịt bò thật thơm ngon. Phở bò Chinsu hộp 132g (có gói thịt bò thật) thơm ngon, là lựa chọn cho bữa ăn sáng dinh dưỡng và tiện lợi. Phở Chinsu giúp bạn tiết kiệm thời gian, không mất thời gian nấu nướng', NULL, N'doanlien', N'044.jpg', 34000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP45', N'Phở thịt bò Vifon tô', 120, NULL, N'Những sợi phở trắng, thơm ngon và dai cùng với nước sốt đậm đà, thơm ngon với hương vị bò thơm thơm. Phở thịt bò Vifon tô 120g (có gói thịt bò thật) với sự tiện lợi, nhanh chóng cho bạn bữa ăn không mất nhiều thời gian mà vẫn đảm bảo dinh dưỡng của phở Vifon', NULL, N'doanlien', N'045.jpg', 26500, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP46', N'Phở thịt bò Vifon Hoàng Gia', 120, NULL, N'Những sợi phở trắng, thơm ngon và dai cùng với nước sốt đậm đà, thơm ngon với hương vị bò thơm thơm. Phở thịt bò Vifon Hoàng Gia gói 120g (gói thịt bò thật 61g) với sự tiện lợi, nhanh chóng cho bạn bữa ăn không mất nhiều thời gian mà vẫn đảm bảo dinh dưỡng của phở Vifon', NULL, N'doanlien', N'046.jpg', 24000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP47', N'Phở bò nguyên miếng Chinsu', 140, NULL, N'Sợi phở dẹp, to, dai ngon cùng nước sốt đậm đà, có gói gia vị thơm ngon. Phở bò nguyên miếng Chinsu bò gói 140g thơm ngon, là lựa chọn cho bữa ăn sáng dinh dưỡng và tiện lợi. Phở Chinsu giúp bạn tiết kiệm thời gian, không mất thời gian nấu nướng', NULL, N'doanlien', N'047.jpg', 34000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP48', N'Phở bò Nhớ mãi mãi', 73, NULL, N'Với sợi phở to, dẹp trắng thơm ngon, được đóng to sẵn, tiện lợi khi bạn ở bên ngoài và vẫn muốn thưởng thức tô phở thơm ngon dinh dưỡng của phở Nhớ Mãi Mãi. Phở bò Nhớ mãi mãi tô 73g tiết kiệm, tiện lợi cho cả gia đình sử dụng.', NULL, N'doanlien', N'048.jpg', 15500, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP49', N'Bún riêu cua Vifon', 80, NULL, N'Sản phẩm bún ăn liền thương hiệu bún Vifon được sản xuất từ các thành phần tự nhiên an toàn cho khỏe. Bún riêu cua Vifon 80g thơm ngon với sợi bún tròn dai ngon hòa quyện trong nước súp đậm đà cùng gói riêu cua thật chất lượng, thơm lừng, phù hợp cho bữa ăn nhanh chóng tiện lợi và dinh dưỡng', NULL, N'doanlien', N'049.jpg', 11000, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [CanNang], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SP50', N'Phở bò tái lăn Đệ Nhất', 68, NULL, N'Phở bò ăn liền hương vị chuẩn Hà Nội đậm đà với sợi phở mềm dai và nước súp phở Đệ Nhất thanh ngọt, thơm lừng. Phở bò tái lăn Đệ Nhất gói 68g chính hãng chất lượng, cho bạn món ăn nhanh, ngon như phở nấu, phù hợp cho cả gia đình', NULL, N'doanlien', N'050.jpg', 10800, NULL)
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'raucu', N'Rau củ quả')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'douong', N'Đồ uống')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'dohop', N'Đồ hộp')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'haisan', N'Hải sản')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'doanlien', N'Đồ ăn liền')

GO
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiKhachHang], [AnhDaiDien], [GhiChu]) VALUES (N'KH01', N'Hoa', NULL, N'0987654321', N'Ha Noi', NULL, NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiKhachHang], [AnhDaiDien], [GhiChu]) VALUES (N'KH02', N'Nam', NULL, N'0988733251', N'Nam Dinh', NULL, NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiKhachHang], [AnhDaiDien], [GhiChu]) VALUES (N'KH03', N'Binh', NULL, N'0688335662', N'Ninh Binh', NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[tAnhSP]  WITH CHECK ADD  CONSTRAINT [FK_tAnhSP_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tAnhSP] CHECK CONSTRAINT [FK_tAnhSP_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tChiTietSanPham] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[tChiTietSanPham] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tChiTietSanPham]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tHoaDonBan] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tHoaDonBan]
GO
ALTER TABLE [dbo].[tChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietSanPham_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tChiTietSanPham] CHECK CONSTRAINT [FK_tChiTietSanPham_tDanhMucSP]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tLoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiSP]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tKhachHang] ([MaKhanhHang])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tKhachHang]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tNhanVien]
GO
ALTER TABLE [dbo].[tKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_tKhachHang_tUser] FOREIGN KEY([username])
REFERENCES [dbo].[tUser] ([username])
GO
ALTER TABLE [dbo].[tKhachHang] CHECK CONSTRAINT [FK_tKhachHang_tUser]
GO
ALTER TABLE [dbo].[tNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tNhanVien_tUser] FOREIGN KEY([username])
REFERENCES [dbo].[tUser] ([username])
GO
ALTER TABLE [dbo].[tNhanVien] CHECK CONSTRAINT [FK_tNhanVien_tUser]
GO