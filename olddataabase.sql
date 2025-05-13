use master
create database QuanLyCHXe
go
use QuanLyCHXe
go

CREATE TABLE NhanVien (
    MaNhanVien varchar(50) PRIMARY KEY,
    MatKhau VARCHAR(255) not null,
    HoVaTen NVARCHAR(50) not null,
    VaiTro bit default 0,
	Hinh image default null,
	Mail varchar(50) default null,
	NgaySinh Date not null,
	NgayBatDau Date default getdate(),
	NgayKetThuc Date default null
);


CREATE TABLE HangXe (
    MaHangXe varchar(50) PRIMARY KEY,
    TenHang NVARCHAR(255) not null,
);
CREATE TABLE KhachHang (
    MaKhachHang varchar(50) PRIMARY KEY,
    HoVaTen NVARCHAR(50) not null,
    NgaySinh DATE not null,
    GioiTinh bit default 1,
    SoDienThoai VARCHAR(15) not null,
	NgayDangky date default getdate(),
	MaNV varchar(50) null,
	foreign key (MaNV) references NhanVien(Manhanvien)
);


CREATE TABLE PhuKien (
    MaPhuKien varchar(50) PRIMARY KEY,
	TenPhuKien nvarchar(255) not null,
    GiaTien FLOAT not null,
	Hinh image default null,
	MaNV varchar(50) null,
	Soluong int,
	foreign key (MaNV) references NhanVien(Manhanvien)
);

CREATE TABLE XeMay (
    MaXeMay varchar(50) PRIMARY KEY,
	TenXe nvarchar(255) not null,
    MaHangXe varchar(50) not null,
    GiaTien FLOAT not null,
    NgayNhap DATE default getdate() not null ,
	Hinh image default null,
	Soluong int,
	MaNV varchar(50) null,
	foreign key (MaNV) references NhanVien(Manhanvien),
    FOREIGN KEY (MaHangXe) REFERENCES HangXe(MaHangXe) 
);

CREATE TABLE HoaDon (
    MaHoaDon varchar(50) PRIMARY KEY,
	MaKhachHang varchar(50),
	MaNV varchar(50) null,
	TongTien Float default 0 not null,
	NgayTao Date default getdate(),
	FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang),
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNhanVien)
);

CREATE TABLE HoaDonChiTiet (

    MaHoaDonCT int identity(1,1) PRIMARY KEY,
	MaHoaDon varchar(50) ,
	LoaiSanpham varchar(20) not null,
    MaSanPham varchar(50)  not null,	
	Soluong int default 0,
	GiaTien Float default 0,
	FOREIGN KEY (MaHoaDon) REFERENCES HoaDon(MaHoaDon) 

);



insert into NhanVien (MaNhanVien,MatKhau,HoVaTen,VaiTro,Mail,NgaySinh) 
values ('NV01','123','Nguyen Van A',1,'mushiyo8@gmail.com','2000-12-3'),
('NV02','543','Nguyen Van B',0,'B@gmail.com','2000-12-3'),
('NV03','677','Nguyen Van C',0,'C@gmail.com','2000-12-3'),
('NV04','321','Nguyen Van D',0,'D@gmail.com','2000-12-3'),
('NV05','546','Nguyen Van E',1,'E@gmail.com','2000-12-3')

insert into HangXe (MaHangXe,TenHang)
values ('YMH','Yamaha'),
('HD','Honda'),
('SM','Sym'),
('SZ','Suzuki')

insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH5522', 'Abigael Sterzaker', '20021215', 0, '610 867 5637', 'NV01');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH5786', 'Kristine Pullan', '19901112', 0, '728 779 4960', 'NV01');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH7607', 'Bertina De Rechter', '19840318', 0, '731 195 6080', 'NV02');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH3260', 'Rycca Chrispin', '19920502', 0, '753 981 0134', 'NV02');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH6864', 'Dimitri Trevenu', '19920109', 1, '789 321 5587', 'NV01');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH5319', 'Jillene Gergher', '19830829', 0, '773 195 6224', 'NV01');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH9677', 'Bette Bickerstasse', '19841223', 0, '718 131 0546', 'NV01');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH7386', 'Zedekiah Maling', '19960706', 1, '175 153 1074', 'NV02');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH3273', 'Ambrose Billborough', '19890130', 1, '320 341 2264', 'NV01');
insert into KhachHang (MaKhachHang, HoVaTen, NgaySinh, GioiTinh, SoDienThoai, MaNV) values ('KH3730', 'Jordana Bassingden', '20030525', 0, '231 407 9687', 'NV01');

--delete PhuKien

insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK6287', 'Lentils - Green Le Puy', 1828491, null, 4, 'NV02');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK0535', 'Mangoes', 2765249, null, 6, 'NV01');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK0336', 'Plate - Foam, Bread And Butter', 8771642, null, 4, 'NV02');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK5078', 'Wine - Riesling Dr. Pauly', 8105054, null, 7, 'NV02');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK7673', 'Cup - 4oz Translucent', 1393310, null, 1, 'NV01');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK7736', 'Scrubbie - Scotchbrite Hand Pad', 6513061, null, 7, 'NV02');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK4375', 'Brocolinni - Gaylan, Chinese', 7818470, null, 6, 'NV02');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK1999', 'Iced Tea - Lemon, 460 Ml', 5980538, null, 3, 'NV01');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK5269', 'Bacardi Mojito', 5243198, null, 8, 'NV02');
insert into PhuKien (MaPhuKien, TenPhuKien, GiaTien, Hinh, Soluong, MaNV) values ('PK7089', 'Sauce - Vodka Blush', 8559281, null, 10, 'NV01');

--delete XeMay

insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X3563', 'XK Series', 'SM', 31156973, null, 6, 'NV02');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X7038', '960', 'SZ', 325081177, null, 9, 'NV02');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X7402', 'G37', 'SM', 171152413, null, 1, 'NV02');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X6985', 'Voyager', 'SZ', 356660430, null, 8, 'NV02');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X3679', 'Ram Van 1500', 'YMH', 344334295, null, 3, 'NV02');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X7779', 'Mazdaspeed 3', 'SM', 490767543, null, 1, 'NV01');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X1767', 'Rally Wagon 2500', 'HD', 49369356, null, 10, 'NV02');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X0144', '626', 'HD', 364665000, null, 7, 'NV02');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X4205', 'RAV4', 'SM', 136729163, null, 7, 'NV02');
insert into XeMay (MaXeMay, TenXE, MaHangXe, GiaTien, Hinh, Soluong, MaNV) values ('X0113', 'Cirrus', 'YMH', 186089500, null, 4, 'NV01');
 
go
go

---- xoa khach hang
CREATE or alter TRIGGER trg_DeleteKhachHang
ON KhachHang
Instead of DELETE
	AS
	BEGIN
		DELETE FROM HoaDon WHERE MaKhachHang IN (SELECT MaKhachHang FROM deleted);
		delete KhachHang where MaKhachHang IN (SELECT MaKhachHang FROM deleted);
	END;
go
--xoa hoa don
CREATE or alter TRIGGER trg_DeleteHoaDon
ON HoaDon
instead of DELETE
	AS
	BEGIN
		DELETE FROM HoaDonChiTiet
		WHERE MaHoaDon IN (SELECT MaHoaDon FROM deleted);
		DELETE FROM HoaDon
		WHERE MaHoaDon IN (SELECT MaHoaDon FROM deleted);
	END;
go
--them hoa don
CREATE or alter TRIGGER trg_ThemHoaDon
ON HoaDon
instead of insert
	AS
	BEGIN
	declare @Makh varchar(50),@MaHD varchar(50),@MaNV varchar(50)
	select @Makh= MaKhachHang from inserted
	select @MaHD= MaHoaDon from inserted
	select @MaNV= MaNV from inserted
		if not exists (select MaKhachHang from KhachHang where MaKhachHang like @Makh)
			begin
				Throw 51000,'Ma khach hang khong ton tai',1
			end
		else 
			begin
				insert into HoaDon (MaHoaDon, MaKhachHang, MaNV) VALUES(@MaHD, @Makh, @MaNV)
			end
	END;
go
--them hoa don chi tiet
go
CREATE OR ALTER TRIGGER ThemSanPham
ON HoaDonChiTiet
INSTEAD OF INSERT
	AS
	BEGIN
	Declare @LoaiSanPham varchar(20),@soluong int,@soluongSanpham int,@GiaTien float,@tongtienSP float,@tongtienHD float
	select @LoaiSanPham = LoaiSanpham from inserted
	select @soluong= Soluong from inserted
	select @GiaTien = GiaTien from inserted
	select @tongtienHD=TongTien from HoaDon where MaHoaDon in (select MaHoaDon from inserted)
	set @tongtienSP =@soluong *@GiaTien	
		  -- Ki?m tra 
		  IF @LoaiSanPham like 'xemay'
			  BEGIN
				if exists(select MaXeMay from XeMay where XeMay.MaXeMay in (select MaSanPham from inserted))
					begin
						select @soluongSanpham= Soluong from XeMay where MaXeMay in (select MaSanPham from inserted)
						if(@soluong>@soluongSanpham or @soluongSanpham = 0)
							begin 
								throw 51002,'So luong khong hop le',1;
							end
						else
							begin
								update HoaDon set TongTien=@tongtienHD+@tongtienSP where MaHoaDon in (select MaHoaDon from inserted)	
								update XeMay set Soluong=@soluongSanpham-@soluong where MaXeMay in (select MaSanPham from inserted)
								insert into HoaDonChiTiet(MaHoaDon,LoaiSanpham,MaSanPham,Soluong,GiaTien) 	
								select 
									MaHoaDon,
									LoaiSanpham,
									MaSanPham,
									Soluong,
									@tongtienSP
								from inserted
							end						
					end
				else 
					begin
						throw 51000,'ma xe khong ton tai',1;
					end
			  END
		 ElSE IF @LoaiSanPham like 'phukien'
			  BEGIN
				if exists(select MaPhuKien from PhuKien where PhuKien.MaPhuKien in (select MaSanPham from inserted))
					begin
						select @soluongSanpham= Soluong from PhuKien where MaPhuKien in (select MaSanPham from inserted)
						if(@soluong>@soluongSanpham or @soluongSanpham = 0)
							begin 
								throw 51002,'So luong khong hop le',1;
							end
						else
							begin
								update HoaDon set TongTien=@tongtienHD+@tongtienSP where MaHoaDon in (select MaHoaDon from inserted)
								update PhuKien set Soluong=@soluongSanpham-@soluong where MaPhuKien in (select MaSanPham from inserted)
								insert into HoaDonChiTiet(MaHoaDon,LoaiSanpham,MaSanPham,Soluong,GiaTien) 	
								select 
									MaHoaDon,
									LoaiSanpham,
									MaSanPham,
									Soluong,
									@tongtienSP
								from inserted
							end						
					end
				else 
					begin
						throw 51001,'ma phu kien khong ton tai',1;
					end
			  END
		 ELSE 
			 begin
					throw 52000,'Ma san pham khong hop le',1;
			 end
	  
	END;
	--ThongKeDoanhSocua nhanvienTheoNam
	go
CREATE or alter PROCEDURE ThongKeDoanhSoTheoThangVaNam
    @Nam INT,
    @Thang INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
	@Thang as 'Thang',
        NV.MaNhanVien,
        NV.HoVaTen AS TenNhanVien,
        ISNULL(SUM(HD.TongTien), 0) AS DoanhSo
    FROM
        NhanVien NV
    LEFT JOIN
        HoaDon HD ON NV.MaNhanVien = HD.MaNV
               AND YEAR(HD.NgayTao) = @Nam
               AND MONTH(HD.NgayTao) = @Thang
    GROUP BY
        NV.MaNhanVien, NV.HoVaTen 
	order by DoanhSo
	desc
		
END;


exec ThongKeDoanhSoTheoThangVaNam 2023,11

--thong ke khach hang moi trong cac thang cua nam

CREATE or alter PROCEDURE ThongKeVaLuuKhachHangMoi
    @Nam INT
AS
BEGIN
    SET NOCOUNT ON;

    CREATE TABLE #TempThongKe (
        Thang INT,
        SoLuongKhachHangMoi INT
    );

    DECLARE @Thang INT = 1;
    WHILE @Thang <= 12
    BEGIN
        DECLARE @SoLuongKhachHangMoi INT;

        SELECT
            @SoLuongKhachHangMoi = COUNT(*)
        FROM
            KhachHang
        WHERE
            YEAR(NgayDangky) = @Nam
            AND MONTH(NgayDangky) = @Thang;

        INSERT INTO #TempThongKe (Thang, SoLuongKhachHangMoi)
        VALUES (@Thang, @SoLuongKhachHangMoi);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #TempThongKe;

    DROP TABLE #TempThongKe;
END;


exec ThongKeVaLuuKhachHangMoi 2023
--thong ke doanh thu
CREATE OR ALTER PROCEDURE ThongketheoThangtrongnam
	@year int
AS
BEGIN
	DECLARE @month int = 1; -- Bắt đầu từ tháng 1
	DECLARE @TongXe int, @XeDaBanTrongthang int, @PhuKienDaBanTrongThang int,@xetruockhiban int

	CREATE TABLE #MonthlyRevenue
	(
		[Thang] INT,
		[Loinhuan] DECIMAL(18, 2),
		[Soluongdaban] INT,
		[XeDaban] INT,
		[PhuKienDaban] INT
	);

	WHILE @month <= MONTH(GETDATE())
	BEGIN
		SET @XeDaBanTrongthang = (SELECT ISNULL(SUM(Soluong), 0) FROM HoaDonChiTiet
								JOIN HoaDon ON HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon
								WHERE LoaiSanpham LIKE 'XeMay' AND MONTH(NgayTao) = @month AND YEAR(NgayTao) = @year);

		SET @PhuKienDaBanTrongThang = (SELECT ISNULL(SUM(Soluong), 0) FROM HoaDonChiTiet 
							JOIN HoaDon ON HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon
							WHERE LoaiSanpham LIKE 'PhuKien' AND MONTH(NgayTao) = @month AND YEAR(NgayTao) = @year);


		INSERT INTO #MonthlyRevenue
		SELECT
			@month AS 'Thang',
			ISNULL(SUM(HoaDon.TongTien), 0) AS 'Loinhuan',
			@XeDaBanTrongthang + @PhuKienDaBanTrongThang AS 'Soluongdaban',
			@XeDaBanTrongthang AS 'XeDaban',
			@PhuKienDaBanTrongThang as'PhuKienDaBan'
		FROM
			HoaDon
			LEFT JOIN HoaDonChiTiet ON HoaDon.MaHoaDon = HoaDonChiTiet.MaHoaDon
		WHERE
			MONTH(HoaDon.NgayTao) = @month AND YEAR(HoaDon.NgayTao) = @year;

		SET @month = @month + 1;
	END;

	SELECT * FROM #MonthlyRevenue;

	DROP TABLE #MonthlyRevenue;
END;

exec ThongketheoThangtrongnam 2023
select sum(soluong) from XeMay


