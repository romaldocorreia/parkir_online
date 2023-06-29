-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 03:19 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `NID` varchar(10) NOT NULL,
  `NAMA_DOSEN` varchar(100) NOT NULL,
  `GELAR` varchar(25) NOT NULL,
  `TEMPAT_LAHIR` varchar(50) NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL,
  `JENIS_KELAMIN` varchar(10) NOT NULL,
  `TAHUN_MASUK` year(4) NOT NULL,
  `KDPRODI` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`NID`, `NAMA_DOSEN`, `GELAR`, `TEMPAT_LAHIR`, `TANGGAL_LAHIR`, `JENIS_KELAMIN`, `TAHUN_MASUK`, `KDPRODI`) VALUES
('23893', 'Kuswanto Hardjo', 'dr., M.Kes.', 'Sleman', '1965-05-31', 'L', 2009, 'P04'),
('25234', 'Arif Himawan', 'S.Kom., M.M., M.Eng', 'Pati', '1969-01-31', 'L', 2004, 'P02'),
('25616', 'Edhy Tri Cahyono', 'S.Si., M.M.', 'Yogyakarta', '1970-02-17', 'L', 2005, 'P07'),
('30297', 'Tri Sunarsih', 'S.ST., M.Kes', 'Boyolali', '1982-12-12', 'P', 2007, 'P04'),
('31461', 'Aris Wahyu Murdiyanto', 'S.Kom., M.Cs.', 'Wonogiri', '1986-02-18', 'L', 2017, 'P02'),
('31864', 'David Sulistiyanto', 'S.E., M.Acc., Ak.', 'Jombang', '1987-03-28', 'L', 2018, 'P07'),
('32071', 'Gerlan Hana Nusa', 'S.E., M.Acc., Ak.', 'Sleman', '1987-10-21', 'L', 2018, 'P06'),
('32200', 'Andika Bayu Saputra', 'S.Kom., M.Kom', 'Lombok', '1988-02-27', 'L', 2015, 'P01'),
('32643', 'Melisa Putri Rahmadhena', 'S.ST., M.Clin.Mid', 'Yogyakarta', '1989-05-15', 'P', 2016, 'P05'),
('32882', 'Puji Winar Cahyo', 'S.Kom., M.Cs.', 'Sleman', '1990-01-09', 'L', 2017, 'P01'),
('33495', 'Adri Priadana', 'S.Kom., M.Cs.', 'Kulon Progo', '1991-09-14', 'L', 2017, 'P01'),
('33558', 'Alfirna Rizqi Lahitani', 'S.Kom., M.Eng', 'Kalimantan', '1991-11-16', 'P', 2016, 'P03'),
('33763', 'Muhammad Habibi', 'S.Kom., M.Cs.', 'Ngawi', '1992-06-08', 'L', 2017, 'P01');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `KDFAKULTAS` varchar(10) NOT NULL,
  `NAMA_FAKULTAS` varchar(50) NOT NULL,
  `DEKAN` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`KDFAKULTAS`, `NAMA_FAKULTAS`, `DEKAN`) VALUES
('F01', 'Teknik dan Teknologi Informasi', '25234'),
('F02', 'Fakultas Kesehatan', '23893'),
('F03', 'Fakultas Ekonomi dan Sosial', '25616');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `KDKRS` varchar(10) NOT NULL,
  `KDSEMESTER` varchar(10) NOT NULL,
  `NIM` varchar(10) NOT NULL,
  `KDMK` varchar(10) NOT NULL,
  `NILAI` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`KDKRS`, `KDSEMESTER`, `NIM`, `KDMK`, `NILAI`) VALUES
('1', 'SM04', '17221', 'MK01', 'A'),
('10', 'SM05', '18327', 'MK06', 'B'),
('11', 'SM03', '18327', 'MK07', 'A'),
('12', 'SM03', '18322', 'MK07', 'A'),
('13', 'SM03', '18323', 'MK07', 'B'),
('2', 'SM04', '17222', 'MK01', 'B'),
('3', 'SM04', '17223', 'MK01', 'A'),
('4', 'SM04', '17224', 'MK01', 'C'),
('5', 'SM04', '17223', 'MK03', 'A'),
('6', 'SM02', '17226', 'MK03', 'B'),
('7', 'SM02', '17227', 'MK03', 'D'),
('8', 'SM02', '18324', 'MK03', 'A'),
('9', 'SM05', '18326', 'MK06', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(10) NOT NULL,
  `NAMA` varchar(200) NOT NULL,
  `TEMPAT_LAHIR` varchar(100) NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL,
  `JENIS_KELAMIN` varchar(5) NOT NULL,
  `TAHUN_MASUK` year(4) NOT NULL,
  `AGAMA` varchar(20) NOT NULL,
  `KDPRODI` varchar(10) NOT NULL,
  `DOSENPA` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `NAMA`, `TEMPAT_LAHIR`, `TANGGAL_LAHIR`, `JENIS_KELAMIN`, `TAHUN_MASUK`, `AGAMA`, `KDPRODI`, `DOSENPA`) VALUES
('17221', 'AGUS SANTOSO', 'PALEMBANG', '1998-03-15', 'L', 2017, 'ISLAM', 'P01', '33763'),
('17222', 'RAHMAT', 'BOYOLALI', '1998-06-15', 'L', 2017, 'ISLAM', 'P01', '33763'),
('17223', 'INDRA IRAWAN', 'MADURA', '1997-01-09', 'L', 2017, 'ISLAM', 'P01', '33763'),
('17224', 'MUFIDATUN', 'BANDUNG', '1998-01-31', 'P', 2017, 'ISLAM', 'P01', '33495'),
('17225', 'M. ZIKRULLAH', 'YOGYAKARTA', '1998-11-16', 'L', 2017, 'ISLAM', 'P01', '33495'),
('17226', 'ARRAHMAN SYAFEBRI', 'NGAWI', '1997-01-18', 'L', 2017, 'ISLAM', 'P03', '33558'),
('17227', 'AISYAH MAHBUBAH', 'PURWOKERTO', '1999-01-27', 'P', 2017, 'ISLAM', 'P03', '33558'),
('18321', 'MARQO', 'JAKARTA', '1998-10-21', 'L', 2018, 'ISLAM', 'P03', '33558'),
('18322', 'YULAINI', 'BANDUNG', '2000-09-14', 'P', 2018, 'KRISTEN', 'P03', '33558'),
('18323', 'NOOR FADHILAH', 'KALIMANTAN SELATAN', '1998-12-12', 'P', 2018, 'ISLAM', 'P03', '33558'),
('18324', 'AYU WANDIRA', 'PACITAN', '1999-02-17', 'P', 2018, 'ISLAM', 'P04', '30297'),
('18325', 'OPIANSYAH', 'LOMBOK', '1998-05-31', 'L', 2018, 'ISLAM', 'P04', '30297'),
('18326', 'MUHAMMAD LEHAN', 'SLEMAN', '2000-05-15', 'L', 2018, 'ISLAM', 'P04', '23893'),
('18327', 'YESSI ULANDARI', 'MAGELANG', '1999-06-08', 'P', 2018, 'ISLAM', 'P04', '23893'),
('18328', 'WISNU SAPUTRA', 'JAKARTA', '1999-03-28', 'L', 2018, 'HINDU', 'P04', '23893');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `KDMK` varchar(10) NOT NULL,
  `NAMA_MK` varchar(100) NOT NULL,
  `SKS` int(11) NOT NULL,
  `DOSEN_PENGAMPU` varchar(10) NOT NULL,
  `KDSEMESTER` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`KDMK`, `NAMA_MK`, `SKS`, `DOSEN_PENGAMPU`, `KDSEMESTER`) VALUES
('MK01', 'PEMROGAMAN BASIS DATA', 4, '33763', 'SM04'),
('MK02', 'ALGORITMA DAN STRUKTUR DATA', 4, '33495', 'SM02'),
('MK03', 'BAHASA INGGRIS 1', 2, '32882', 'SM02'),
('MK04', 'PENGANTAR ILMU HUKUM', 3, '32071', 'SM01'),
('MK05', 'SOSIOLOGI', 2, '31864', 'SM02'),
('MK06', 'ILMU KEPERAWATAN DASAR', 4, '32643', 'SM05'),
('MK07', 'STATISTIKA BISNIS', 2, '25616', 'SM03'),
('MK08', 'ILMU BIOMEDIK', 2, '30297', 'SM03');

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `KDPRODI` varchar(10) NOT NULL,
  `NAMA_PRODI` varchar(50) NOT NULL,
  `KDFAKULTAS` varchar(10) NOT NULL,
  `KAPRODI` varchar(10) NOT NULL,
  `KETERANGAN` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`KDPRODI`, `NAMA_PRODI`, `KDFAKULTAS`, `KAPRODI`, `KETERANGAN`) VALUES
('P01', 'Teknik Informatika (S-1)', 'F01', '32200', 'FTTI'),
('P02', 'Sistem Informasi (S-1)', 'F01', '31461', 'FTTI'),
('P03', 'Sistem Informasi (D-3)', 'F01', '33558', 'FTTI'),
('P04', 'Farmasi (S-1)', 'F02', '30297', 'FKES'),
('P05', 'Keperawatan (S-1)', 'F02', '32643', 'FKES'),
('P06', 'Hukum (S-1)', 'F03', '32071', 'FES'),
('P07', 'Akuntansi (S-1)', 'F03', '31864', 'FES');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `KDSEMESTER` varchar(10) NOT NULL,
  `SEMESTER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`KDSEMESTER`, `SEMESTER`) VALUES
('SM01', '1'),
('SM02', '2'),
('SM03', '3'),
('SM04', '4'),
('SM05', '5'),
('SM06', '6'),
('SM07', '7'),
('SM08', '8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NID`),
  ADD KEY `KDPRODI` (`KDPRODI`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`KDFAKULTAS`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`KDKRS`),
  ADD KEY `KDMK` (`KDMK`),
  ADD KEY `KDSEMESTER` (`KDSEMESTER`),
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `mahasiswa_ibfk_1` (`KDPRODI`),
  ADD KEY `DOSENPA` (`DOSENPA`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`KDMK`),
  ADD KEY `DOSEN_PENGAMPU` (`DOSEN_PENGAMPU`),
  ADD KEY `KDSEMESTER` (`KDSEMESTER`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`KDPRODI`),
  ADD KEY `KDFAKULTAS` (`KDFAKULTAS`),
  ADD KEY `KAPRODI` (`KAPRODI`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`KDSEMESTER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`KDPRODI`) REFERENCES `program_studi` (`KDPRODI`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`KDMK`) REFERENCES `matakuliah` (`KDMK`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`KDSEMESTER`) REFERENCES `semester` (`KDSEMESTER`),
  ADD CONSTRAINT `krs_ibfk_3` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`KDPRODI`) REFERENCES `program_studi` (`KDPRODI`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`DOSENPA`) REFERENCES `dosen` (`NID`);

--
-- Constraints for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`DOSEN_PENGAMPU`) REFERENCES `dosen` (`NID`),
  ADD CONSTRAINT `matakuliah_ibfk_2` FOREIGN KEY (`KDSEMESTER`) REFERENCES `semester` (`KDSEMESTER`);

--
-- Constraints for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD CONSTRAINT `program_studi_ibfk_1` FOREIGN KEY (`KDFAKULTAS`) REFERENCES `fakultas` (`KDFAKULTAS`),
  ADD CONSTRAINT `program_studi_ibfk_2` FOREIGN KEY (`KAPRODI`) REFERENCES `dosen` (`NID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
