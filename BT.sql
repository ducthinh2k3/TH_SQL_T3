--Q1--
SELECT HOTEN, LUONG
FROM GIAOVIEN
WHERE PHAI = N'Nữ'

--Q2--
SELECT HOTEN, LUONG*1.1 AS LUONG_MOI
FROM GIAOVIEN

--Q3--
SELECT DISTINCT MAGV, HOTEN
FROM GIAOVIEN AS GV, BOMON AS BM
WHERE (GV.HOTEN LIKE N'Nguyễn%' AND GV.LUONG > 2000)  OR (GV.MAGV = BM.TRUONGBM AND DATEDIFF(YEAR, BM.NGAYNHANCHUC, 1995) < 0)

--Q3 TEST--
SELECT DISTINCT MAGV, HOTEN
FROM GIAOVIEN AS GV, BOMON AS BM
WHERE GV.MAGV = BM.TRUONGBM AND ((GV.HOTEN LIKE N'Nguyễn%' AND GV.LUONG > 2000)  OR (DATEDIFF(YEAR, BM.NGAYNHANCHUC, 1995) < 0))

--Q4--
SELECT GV.HOTEN
FROM GIAOVIEN AS GV, BOMON AS BM, KHOA AS K
WHERE GV.MABM = BM.MABM AND BM.MAKHOA = K.MAKHOA AND K.TENKHOA = N'Công nghệ thông tin'

--Q5--
SELECT *
FROM BOMON AS BM, GIAOVIEN AS GV
WHERE BM.TRUONGBM = GV.MAGV

--Q6--
SELECT *
FROM GIAOVIEN AS GV, BOMON AS BM
WHERE GV.MABM = BM.MABM

--Q7--
SELECT DT.TENDT, GV.*
FROM DETAI AS DT, GIAOVIEN AS GV
WHERE DT.GVCNDT = GV.MAGV

--Q8--
SELECT *
FROM KHOA AS K, GIAOVIEN AS GV
WHERE K.TRUONGKHOA = GV.MAGV

--Q9--
SELECT*
FROM GIAOVIEN AS GV, BOMON AS BM, THAMGIADT
WHERE BM.TENBM = N'Vi sinh' AND GV.MABM = BM.MABM AND THAMGIADT.MADT = '006' AND GV.MAGV = THAMGIADT.MAGV
