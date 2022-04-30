-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 11:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT '0',
  `password` varchar(50) DEFAULT '0',
  `nama_admin` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `nama_admin`) VALUES
(1, 'naufal', 'a7ef174d3ed272acd2b72913a7ef9d40', 'Arief Fatih Naufal'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Naufal'),
(3, 'ateng', 'ef5520284506178c31ee67d94be7bf67', 'Naufal'),
(4, 'pustaka20', '70be15b148ddfe4cccadbf7b42b50a2e', 'Admin Perpustakaan');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `buku_id` int(11) NOT NULL,
  `kode_buku` varchar(50) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `th_terbit` varchar(50) DEFAULT NULL,
  `rak_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`buku_id`, `kode_buku`, `judul`, `penerbit`, `pengarang`, `th_terbit`, `rak_id`, `jumlah`, `ket`) VALUES
(2, '9786023746095', 'Smp/Mts Kls IX Seni Budaya Jl.3 K/13 Rev: 3', ' Yrama Widyaa', 'Harry D.fauzi & Yadi Mulyadi', '2020', 1, 10, 'Smp/Mts Kls IX Seni Budaya Jl.3 K/13 Rev: 3'),
(3, '9786023208548', 'Smp/Mts Kls VIII Platinum Bahasa Dan Sastra Indo 2 Rb', ' Tiga Serangkai', 'Budi Waluyo', '2020', 1, 11, 'Buku Bahasa dan Sastra Indonesia merupakan buku pegangan bagi siswa yang akan belajar Bahasa Indonesia pada jenjang SMP dan MTs. Buku ini terdiri atas tiga jilid, yang diperuntukkan bagi siswa kelas VII (Jilid 1),Kelas VII (Jilid 2),dan kelas IX (Jilid 3). Materi yang disajikan pada buku ini disesuaikan dengan Kompetensi Inti dan Kompetensi Inti dan Kompetensi Dasar mata pelajaran Bahasa Indonesia dalam Kurikulum 2013 yang disempurnakan.'),
(4, '9786023208357', 'Smp/Mts Kls VIII Platinum PPKn 2 Rb', ' Tiga Serangkai', 'Samidi', '2020', 1, 11, 'Smp/Mts Kls VIII Platinum PPKn 2 Rb'),
(5, '9786023207879', 'Smp/Mts Kls VII Platinum Informatika 1 Rb', ' Tiga Serangkai', 'Ngatiyono', '2020', 1, 11, 'Smp/Mts Kls VII Platinum Informatika 1 Rb'),
(6, '9786023571857', 'Dobel Ekspres Matematika IPA Smp/Mts Kls.VII,VIII, IX', ' Edu Penguin', 'Trianawati Ramadhani, S.si Dan Tim', '2020', 1, 10, 'Kemampuan berpikir tingkat tinggi (higher order thinking skills) harus mulai diasah sejak dini. Hal ini bertujuan agar siswa Indonesia mampu mengikuti perkembangan dunia yang begitu cepat.'),
(7, '9786232052147', 'Smp/Mts Kls IX Super Master Semester 1-2', ' Yrama Widya', 'Tim Quantum Research', '2020', 1, 10, 'Salah satu Program Merdeka Belajar adalah mengembalikan pelaksanaan ujian di kelas IX ke masing-masing satuan pendidikan. Oleh karena itu, USBN (Ujian Sekolah Berstandar Nasional) diganti dengan US/USP. Mungkin banyak siswa atau pun orang tua/wali siswa yang belum mengetahui apa yang berbeda antara USBN dengan US/USP.  Perbedaan mendasar antara USBN dan US/USP adalah standar kelulusan peserta didik ditentukan oleh masing-masing satuan pendidikan (sekolah), sehingga pembuatan soal untuk US/USP diserahkan sepenuhnya ke masing-masing satuan pendidikan dan dibuat oleh guru di masing-masing satuan pendidikan tersebut. Perbedaan lainnya adalah pada US/USP bentuk ujiannya bisa bervariasi. Bisa berbentuk tes tertulis, tugas portofolio, tugas proyek (penugasan), dan bentuk ujian lainnya.  Khusus untuk tes tertulis berupa soal, soal-soal yang akan diujikan digunakan untuk mengukur kemampuan siswa, mulai dari jenjang C1 sampai C6. Bentuk-bentuk soal tipe C1 – C6 bisa kamu dapatkan di dalam buku ini. Oleh karena itu, buku ini bisa dijadikan solusi untuk menghilangkan kecemasanmu pada saat akan menghadapi berbagai jenis ujian Matematika, Ilmu Pengetahuan Alam, Ilmu Pengetahuan Sosial, Bahasa Indonesia, dan Bahasa Inggris.  Pembahasan di dalam buku ini difokuskan kepada penguasaan konsep. Melalui buku ini, kamu akan lebih mudah memahami konsep kelima mata pelajaran melalui Intisari Materi yang disajikan dan langsung diimplementasikan pada pemecahan masalah dalam bentuk Soal dan Pembahasan. Untuk mengukur penguasaan konsep untuk setiap sub pokok bahasan, kamu dapat mengerjakan Soal Pengetahuan dan Pemahaman serta Soal Aplikasi dan Penalaran. Adapun penguasaan konsep keseluruhan bab dapat kamu ukur dengan mengerjakan soal-soal Review.  Buku ini juga dapat digunakan oleh guru sebagai referensi dalam penyusunan soal-soal Ujian Sekolah (US) atau Ujian Satuan Pendidikan (USP) dan ujian-ujian lainnya. Di samping itu, buku ini juga dapat digunakan sebagai referensi yang tepat bagi orang tua/wali siswa yang ingin mendampingi putra/putrinya belajar di rumah.  Selamat Berlatih dan Berjuang Menjadi yang Terbaik!!!'),
(8, '9786023208340', 'Smp/Mts Kls VII Platinum PPKn 1 Rb', ' Tiga Serangkai', 'Samidi', '2020', 1, 10, 'Belajar Memahami Pendidikan Pancasila dan Kewarganegaraan, buku ini disusun menitikberatkan pada pencapaian hard skills dan soft skills, di mana pembelajaran yang diberikan kepada peserta didik dirancang dalam empat hal utama yang saling berkaitan, yaitu berkenaan dengan sikap keagamaan ,sikap sosial,pengetahuan dan penerapan pengetahuan.'),
(9, '9786023207893', 'Smp/Mts Kls IX Platinum Informatika 3 Rb', ' Tiga Serangkai', 'Samidi', '2020', 1, 11, 'Smp/Mts Kls IX Platinum Informatika 3 Rb'),
(10, '9786023208555', 'Smp/Mts Kls IX Platinum Bahasa Dan Sastra Indo 3 Rb', ' Tiga Serangkai', 'Budi Waluyo', '2020', 1, 10, 'Smp/Mts Kls IX Platinum Bahasa Dan Sastra Indo 3 Rb'),
(11, '9786023208364', 'Smp/Mts Kls IX Platinum Ppkn 3 Rb', ' Tiga Serangkai', 'Barmin', '2020', 1, 14, 'Smp/Mts Kls IX Platinum Ppkn 3 Rb'),
(12, '9786024868437', 'Smp/Mts Kls.Viii Piawai Berbahasa Indonesia /K13N', ' Penerbit Erlangga', 'NURHADI, DKK', '2020', 1, 13, 'Buku ini disusun untuk memfasilitasi siswa sehingga menjadi piawan berbahasa Indonesia. Buku ini menyajikan pembelajaran bahasa Indonesia secara praktis dengan basis kegiatan.Sesuai dengan tujuan Kurikulum 2013 Revisi, bahasa Indonesia dalam buku ini dipelajari sebagai penghela bagi mata pelajaran lain.'),
(13, '9786024341947', 'Smp/Mts Kls VIII Bupena IPA Jl.2 K/13N Rev', 'Erlangga Pen', 'Khristiyono', '2020', 1, 12, 'Smp/Mts Kls VIII Bupena IPA Jl.2 K/13N Rev'),
(14, '9786024349301', 'Smp/Mts Kls VIII Bupena B.Indonesia Jl.2 K/13N Rev', ' Erlangga Pen', 'Ima Rohimah', '2020', 1, 10, 'Smp/Mts Kls VIII Bupena B.Indonesia Jl.2 K/13N Rev'),
(15, '9786232051997', 'Smp/Mts Kls.VIII Super Master Semester 1-2', ' Yrama Widya', 'Tim Quantum Research', '2020', 1, 14, 'Asesmen Kompetensi Minimum & Survei Karakter (AKM & SK) merupakan salah satu kebijakan untuk merealisasikan Program Merdeka Belajar. AKM & SK ini merupakan pengganti Ujian Nasional (UN) yang selama ini sudah diselenggarakan. Adapun pelaksanaannya adalah di Kelas VIII. Hal ini bertujuan supaya sekolah masih mempunyai waktu satu tahun (di Kelas IX) untuk memperbaiki apabila hasilnya kurang baik. Di samping itu, pemerintah mengembalikan proses ujian di kelas IX ke sekolah masing-masing sehingga dikenal dengan istilah Ujian Sekolah (US) atau Ujian Satuan Pendidikan (USP).  AKM & SK serta US/USP bentuknya tidak hanya tes tertulis untuk menjawab soal, tetapi bisa juga berupa penugasan, baik berupa Tugas Proyek atau Tugas Portofolio dan tugas-tugas lainnya.  Tes tertulis berupa kumpulan soal. Soal-soal yang akan diujikan digunakan untuk mengukur kemampuan siswa, mulai dari jenjang C1 sampai C6. Bentuk-bentuk soal tipe C1 – C6 bisa Anda dapatkan di dalam buku ini. Oleh karena itu, buku ini bisa dijadikan solusi untuk menghilangkan kecemasan pada saat Anda akan menghadapi berbagai jenis ujian Matematika, Ilmu Pengetahuan Alam, Ilmu Pengetahuan Sosial, Bahasa Indonesia, dan Bahasa Inggris.  Pembahasan di dalam buku ini difokuskan kepada penguasaan konsep. Melalui buku ini, Anda akan lebih mudah memahami konsep kelima mata pelajaran melalui Intisari Materi yang disajikan dan langsung diimplementasikan pada pemecahan masalah dalam bentuk Soal dan Pembahasan. Untuk mengukur penguasaan konsep untuk setiap sub pokok bahasan, Anda dapat mengerjakan Soal Pengetahuan dan Pemahaman serta Soal Aplikasi dan Penalaran. Adapun penguasaan konsep keseluruhan bab dapat Anda ukur dengan mengerjakan soal-soal Review.  Buku ini juga dapat digunakan oleh guru sebagai referensi dalam penyusunan soal-soal Asesmen Kompetensi Minimum (AKM), Ujian Sekolah (US) atau Ujian Satuan Pendidikan (USP), dan ujian-ujian lainnya.'),
(16, '9789792836493', 'Smp/Mts Kl.8 Matematika Smt.1 Rev.2020 Kur.2013', ' PT Penerbi Intan Pariwara', 'Miyanto, Noviana Endah Santoso, Suparno', '2020', 1, 12, 'Smp/Mts Kl.8 Matematika Smt.1 Rev.2020 Kur.2013'),
(17, '9789792834901', 'Smp/Mts Kl.8 Bahasa Inggris Smt.1 Rev.2020 Kur.2013', ' PT Penerbit Intan Pariwara', 'Cicik Kurniawati, Sonny Irawan Putra, Susiningsih', '2020', 1, 12, 'Smp/Mts Kl.8 Bahasa Inggris Smt.1 Rev.2020 Kur.2013'),
(18, '9786026643827', 'Komunikasi Antarpribadi', ' Adipura', 'Ngalimun', '2020', 2, 6, 'Komunikasi interpersonal merupakan komunikasi yang dilakukan oleh dua orang atau lebih secara tatap muka yang dapat dilakukan secara verbal maupun non verbal. Komunikasi antar pribadi adalah komunikasi antar perorangan dan bersifat pribadi, baik yang terjadi secara langsung (tanpa medium) ataupun tidak langsung (melalui medium). Komunikasi interpersonal ini adalah terjadi ketika seseorang (komunikator) mengirimkan stimuli (biasanya simbol-simbol verbal) untuk mengubah tingkah laku orang lain (komunikan) dalam sebuah peristiwa komunikasi. Seperti komunikasi secara umum yang memiliki ciri-ciri tertentu, komunikasi interpersonal juga memiliki ciri dan karakteristik yang lebih khusus. Diantaranya arus pesan dua arah, dilakukan secara tatap muka serta umpan balik segera. Komunikasi interpersonal merupakan kegiatan aktif bukan pasif. Komunikasi interpersonal bukan hanya komunikasi dari pengirim pada penerima pesan, begitupula sebaliknya, melainkan komunikasi timbal balik antara pengirim dan penerima pesan. Komunikasi interpersonal bukan sekedar serangkaian rangsangan-tanggapan, stimulus-respon, akan tetapi serangkaian proses saling menerima, penyeraan dan penyampaian tanggapan yang telah diolah oleh masing-masing pihak. Dalam proses komunikasi dapat dibedakan menjadi dua yaitu proses komunikasi primer dan sekunder. Proses komunikasi primer adalah proses penyampaian fikiran atau perasaan seseorang kepada orang lain dengan menggunakan lambang (simbol) sebagai media. Biasanya proses komunikasi ini dilakukan dalam bentuk antar pribadi yang melibatkan dua orang dalam situasi interaksi, komunikator mengirim pesan kepada komunikan. Disini komunikator menjadi Encoder (pengirim) dan komunikan menjadi Decoder (penerima). Akan tetapi komunikasi antar pribadi bersifat dialogisme, maka terjadilah pertukaran pesan, dimana komunikator menjadi Decoder (penerima) sementara komunikan menjadi Encoder (pengirim) dalam komuniaksi antar pribadi, karena situasinya adalah tatap muka (face to face communication) berbeda dengan komunikasi bermedia, dimana umpan balik tertunda .'),
(19, '9786232052260', 'Mempersiapkan Multimedia Pembelajaran Berbantuan Internet', 'Yrama Widya', 'Sunardi / Sujito / Sri Hartini / Sri Ramdhani', '2020', 2, 5, 'Di era teknologi seperti saat ini, guru dituntut untuk dapat melakukan pembelajaran secara digital. Apalagi ketika Belajar dari Rumah, penggunaan teknologi saat dibutuhkan. Namun, bagaimana apabila kita tidak mengetahui cara menggunakannya? Buku ini hadir untuk memberikan panduan cara mempersiapkan multimedia pembelajaran berbantuan internet.  Buku ini berisi tentang prinsip dasar multimedia pembelajaran; cara menggunakan Web Browser dan Search Engine; fitur Paint; fitur Ms PowerPoint; cara mengakses dan menyalin materi pembelajaran dari internet; mengakses dan mengunduh gambar, animasi, audio, dan video dari internet; dan membuat multimedia pembelajaran dengan Ms PowerPoint.  Buku ini disajikan dengan bahasa yang sederhana dan mudah dimengerti. Penjelasan materi diuraikan secara lengkap dengan disertai gambar-gambar yang menarik. Guru dapat mempraktikkannya secara langsung dengan mengikuti petunjuk pada buku'),
(20, '9786024447380', 'Pembelajaran Cerpen', 'Bumi Aksara', 'Dr. Saifur Rahman, M.Hum., M.Si.', '2020', 2, 4, 'Pembelajaran Cerpen'),
(21, '9786024448509', 'Bahasa Rezim: Cermin Bahasa Dalam Kekuasaan', 'Sinar Grafika', 'PROF.DR.H. DADANG S. ANSHORI, S.PD.,M.SI.', '2020', 2, 3, 'Relasi bahasa dengan kekuasaan selalu ditandai dengan terjadinya instrumentalisasi atas bahasa demi capaian kekuasaan. Pada setiap zaman dan periode rezim kekuasaan, bahasa digunakan secara dominatif untuk melanggengkan atau mencapai kekuasaan. Dalam konteks Indonesia, relasi yang tergambar dalam kekuasaan selalu menyuratkan variasi penggunaan bahasa yang khas pada zamannya. Bahasa kekuasaan pada rezim Orde Lama, Orde Baru, Orde Reformasi, dan Neo-reformasi menggambarkan variasi penggunaan (tepatnya politisasi) bahasa demikian khas, menggambarkan karakteristik pola kepemimpinan rezim dan bagaimana resistansi kekuasaan terhadap lawan politiknya. Ibarat jendela rumah, bahasa dapat meneropong peristiwa yang ada dalam sebuah rezim kekuasaan. Melalui penggunaan kosakata bahasa, kíta dapat memantik bagaimana model dan pola kekuasaan pada sebuah rezim. Melalui analisis terhadap bahasa yang digunakan, watak kekuasaan yang sejati dapat digambarkan secara gamblang dan transparan. Buku ini menggambarkan bagaimana bahasa diposisikan rezim kekuasaan sekaligus digunakan untuk mempertahankan kekuasaan. Diawali dengan perbincangan bahasa di tangan kekuasaan, dilanjutkan dengan penggunaan bahasa pada fase-fase sejarah bangsa Indonesia. Pada fase-fase kekuasaan rezim tersebut tergambar tabiat yang terepresentasi dalam bahasa kekuasaan. Di akhir dijelaskan sedikit mengenai penggunaan bahasa pada media sosial, yang dapat dipandang sebagai rezim baru dalam kehidupan kita. Kuasa media sosial bahkan dapat mengalahkan lembaga formal dalam memengaruhi masyarakat (citizen). Dengan penggambaran ini pembaca disuguhi kenyataan bahwa bahasa tidak vis-à-vis dengan kekuasaan, sebaliknya menjadi subordinasi kekuasaan.'),
(22, '9786232050129', 'Functional English Grammar Edisi Revisi', ' Yrama Widya', 'Otong Setiawan Dj', '2020', 2, 5, 'Grammar atau tata bahasa bukan suatu hal yang bisa diabaikan. Meskipun sebenarnya semua orang dapat berkomunikasi dalam bahasa Inggris tanpa menggunakan grammar yang benar-benar sesuai, tidak jarang timbul makna ganda dan menyebabkan kesalahpahaman. Dalam konteks informal, seperti dalam kehidupan sehari-hari mungkin hal ini tidak terlalu fatal. Namun, dalam konteks formal, misalnya dalam hal pekerjaan, kesalahan ini terkadang tidak bisa dibiarkan begitu saja. Oleh karena itu, kemampuan berbahasa Inggris dengan tata bahasa yang baik dan benar telah menjadi kebutuhan bagi sebagian besar akademisi maupun masyarakat umum, terutama dalam konteks formal.  Untuk menjawab kebutuhan tersebut, buku Functional English Grammar ini hadir sebagai salah satu referensi yang dapat digunakan pembaca untuk mempelajari tata bahasa Inggris secara mendalam. Dalam buku ini pembaca akan diperkenalkan dengan struktur kebahasaan bahasa Inggris standar yang disajikan dari hal yang paling sederhana (elementary) hingga ke level yang kompleks (advanced). Selain itu, materi yang diberikan pun didukung oleh contoh-contoh peggunaannya agar para pembaca tidak hanya mampu berkomunikasi dengan benar secara gramatika, tetapi juga memahami konteks yang ada secara logis. Di akhir materi disajikan juga soal-soal latihan yang menguji pemahaman pembaca. Sebagai nilai plus, buku ini dipaparkan dalam bahasa Indonesia agar mempermudah pembaca dalam memahami materi-materi.'),
(23, '9786024447373', 'Linguistik Disruptif Pendekatan Kekinian Memahami Perkembang', ' Bumi Aksara', 'PROF. DR. FATHUR ROKHMAN, M.HUM', '2020', 2, 11, 'Buku linguistik disruptif menawarkan pendekatan baru dalam memahami dan mempelajari bahasa. Pendekatan baru tersebut di perlukan karena bahasa mengalami perubahan disrutif akibat pesatnya perkembangan teknologi. Perubahan tersebut tidak bisa di pahami menggunakan teori teori linguistik lama yang fondasi keilmuannya di letakkan pada akhir abad ke 19 atau awal ke 20.'),
(24, '9786025945076', 'Smart Master Kamus Poket Arab (Indonesia-Arab Arab-Indonesia)', ' Scritto Books', 'Laila Al Qudsi', '2020', 2, 5, 'Smart Master Kamus Poket Arab (Indonesia-Arab Arab-Indonesia)'),
(25, '9786025172557', 'Yuk! Belajar Otodidak Bahasa Jepang', 'Andaliman Books', 'Diramoti Benedict', '2018', 2, 4, 'Secara garis besar, ada tiga materi utama yang diusung buku ini. Pertama, pembelajaran huruf Jepang (Hiragana, Katakana, Kanji, dan Romaji). Kedua, pembelajaran tata bahasa yang penerapannya dekat dengan berbagai kebutuhan percakapan sehari-hari. Ketiga, latihan percakapan melalui materi percakapan ragam situasi; di rumah, di sekolah, hingga di berbagai tempat umum.'),
(26, '9786025172571', 'Conversation Skills Booster', ' Andaliman Books', 'Forum Alumni Pare', '2018', 2, 6, 'Melalui materinya, buku ini berupaya menopang sekaligus mendorong (booster) kita untuk tekun berlatih conversation (percakapan). Hampir 2.500 item percakapan yang disajikan. Dan itu, terangkum dalam 38 kategori tema percakapan situasional sehari-hari. Yang tidak kalah istimewa dari buku ini adalah beberapa bonus e-book dan aplikasi yang dapat kita akses melalui gadget. Isinya tentu saja sangat bermanfaat dalam menunjang proses latihan dan pembelajaran berbahasa Inggris.'),
(27, '9786023916559', 'No Day Without Speaking', 'Diva Press', 'Ayun', '2018', 2, 4, 'No Day Without Speaking'),
(28, '9786024074401', 'Panduan Terlengkap PUEBI (Pedoman Umum Ejaan Bahasa Indonesia)', ' Laksana', 'Munnal Hani`ah', '2018', 2, 8, 'Panduan Terlengkap PUEBI (Pedoman Umum Ejaan Bahasa Indonesia)'),
(29, '9786025964008', 'Super Lengkap Sarikata Bahasa Indonesia', ' Caesar Media Pustaka', 'Nilla Endah', '2018', 2, 3, 'Bahasa Indonesia merupakan bahasa nasional yang berasal dari beragam dan dialek, sehingga tidak dapat dihindari muncul kesalahan antara pengucapan atau penulisan kalimat dengan makna asli dari kalimat yang dimaksud. Untuk mengatasi hal tersbut, maka diperlukan suatu aturan wajib digunakan dalam penulisan maupun pengucapan bahasa Indonesia yanug baik dan benar, yaitu ejaan.   Buku ini disusun untuk menunjang keterampilan berbahasa Indonesia yang baik dan benar, secara lisan maupun tulisan untuk para pelajar, atau pun pembaca umumnya. Penyajian buku ini sangat lengkap, mulai dari pemakaian huruf, pemakaian tanda baca, jenis-jenis kata, jenis-jenis imbuhan, jenis-jenis kalimat, paragraf, singkatan dan akronim, serta aspek semantik peristilahan. Buku ini juga dilengkapi dengan pantun, puisi, serta majas dan peribahasa. Dimana setiap pokok bahannya disertai contoh.'),
(30, '9786025011184', 'Simple Master Japanese Grammar', ' Scritto Books Publisher', 'Eva Nurdinawati', '2018', 2, 2, 'Buku ini secara rinci dan asyik membahas:  > Struktur Kalimat  > Perubahan bentuk Kata Kerja dan Kata Sifat  > Tingkat Bahasa (Honorifik, Formal, Informal)  > Waktu (Tenses)  > Kata Penghubung/Kata Sambung dan Partikel  > Keinginan/Harapan  > Negasi  > Perintah, Permintaan, dan Larangan  > Alasan. Sebab-Akibat, dan Penjelasan  > Tujuan dan Rencana  > Ajakan dan Menanyakan Pendapat  > Bentuk Tidak Langsung  > Kata Kerja/Kata Sifat Tidak Beraturan  > Percakapan di segala situasi  > Idiom/Peribahasa  > Bahasa Populer  > Kosakata dan Ekspresi'),
(31, '9786026475336', 'Lets Speak Up!', ' Penerbit Genesis Learning', 'Suatman, S.pd.', '2018', 2, 8, 'Salah satu bagian terpenting dalam mempelajari bahasa adalah dengan mempelajari bagaimana cara berkomunikasi dengan orang lain. Berkomunikasi tak hanya mengacu pada kemampuan menyampaikan pesan menggunakan bahasa sasaran, melainkan juga menggunakan cara-cara yang diterima oleh adat dan budaya setempat. Buku “Let’s Speak Up: Panduan Percakapan Berdasarkan Konteks dan Budaya” ini menyajikan cara berkomunikasi yang alami karena menyajikan pengetahuan tentang aturan tak tertulis yang dianut oleh masyarakat penutur bahasa Inggris serta disesuaikan dengan konteks penggunaannya.'),
(32, '9786025067440', 'Excellent English Grammar', ' Syalmahat Publishing', 'Kembarini', '2018', 2, 9, 'Buku ini merupakan pengetahuan lengkap tentang tata bahasa Inggris dengan penjelasan yang singkat namun padat. Disamping itu, buku ini bisa melatih kemampuan dalam pemahaman terhadap apa yang telah kita pelajari melalui latihan-latihan yang disajikan.'),
(33, '9786230017414', 'Hikayat Majapahit - Kebangkitan dan Keruntuhan Kerajaan Terbesar di Nusantara', 'Elex Media Komputindo', 'Nino Oktorino', '2020', 2, 3, 'Bersumber dari serat-serat kuno, Nino Oktorino berusaha merekonstruksi lini masa kebangkitan dan keruntuhan Majapahit, sebuah kerajaan yang bukan hanya terbesar di nusantara, tetapi juga disegani di wilayah Asia hingga China. Hikayat Majapahit berusaha memberikan dokumentasi secara objektif dan utuh mengenai kerajaan besar yang dalam historiografi nasional dianggap sebagai cikal bakal dari negara Indonesia modern. Sebuah laporan yang bukan hanya mencatat kisah para penguasa Majapahit tetapi juga kehidupan sehari-hari rakyatnya maupun hubungan kerajaan tersebut dengan dunia internasional pada zamannya. Sebuah catatan sejarah yang tidak hanya menuliskan kesohoran nama Majapahit tetapi juga borok-borok sejarahnya, mulai dari berdirinya hingga keruntuhan kerajaan tersebut.'),
(34, '9786237254393', 'Lahirnya Pancasila: Kumpulan Pidato Bpupki (2019)', ' MEDIA PRESSINDO', 'FLORIBERTA AING', '2019', 2, 1, 'Rezim Orde Baru permah berusaha menghapus sejarah dengan menolak anggapan bahwa Sukarno adalah penggali Pancasila. Sebenarnya siapa yang lebih tepat disebut sebagai penggali Pancasila, Muhammad Yamin atau Sukarno?'),
(35, '9786232441323', 'Sejarah Lengkap Perang Dunia 1: 1914-1918', ' Sociality', 'Alfi Arifian', '2020', 2, 2, 'Perang Dunia I (WW1) adalah kontes gladiator terbesar sepanjang sejarah umat manusia yang melibatkan para hegemon Eropa serta koloninya. Vladimir Lenin, sang tokoh komunis Rusia yang dijuluki ‘virus’ oleh para hegemon Eropa menyebut perang ini sebagai ”perangnya bangsawan”, bukan ”perang rakyat”. Pemikirannya yang dilandasi sikap anti kaum ningrat dan prorakyat ini nantinya melahirkan gagasan berdirinya negara komunis di Rusia setelah berhasil menumbangkan dinasti penguasa Kekaisaran Rusia, Dinasti Romanov, melalui serangkaian revolusi: Revolusi Februari dan Revolusi Oktober 1917.  Selain itu, perang ini juga mengubah peta politik dunia: terdisintegrasinya negara Balkan yang tadinya berada di bawah kontrol Dinasti Hapsburg dari Kekaisaran Austro-Hongaria, runtuhnya Kekaisaran Turki Utsmani sebagai pemangku kekhalifahan Islam terakhir, terbentuknya Liga Bangsa-Bangsa (yang merupakan benih organisasi PBB), bangkrutnya Jerman yang harus menanggung semua dampak kerugian perang bagi negara-negara Blok Sekutu (yang memicu dendam rakyat Jerman hingga merencanakan Perang Dunia II), pengambilalihan koloni Jerman di Afrika dan Tiongkok oleh aliansi Sekutu (Inggris, Perancis, Jepang), serta pemindahan besar-besaran (eksodus) warga etnis Yahudi Eropa menuju ‘tanah yang dijanjikan’ (Palestina) yang merupakan implementasi dari “Deklarasi Balfour”. Lalu apa peran Raja Edward VII dari Inggris dalam konflik PD I, siapa juga tokoh yang disebut-sebut dalam Deklarasi Balfour sebagai Lord Rothschild? Buku ini akan menjawabnya!'),
(36, '9786237495291', 'Dear G', 'Haru Semesta Persada Pt.', 'Despersa', '2020', 3, 2, '[Saat berusia belasan tahun, ada dua laki-laki berinisial G yang memenuhi masa remaja Larisa. Yaitu Garran dan Giko.] Bagi Larisa, rasanya sudah lebih dari cukup mempunyai orang tua angkat yang mengasihinya, serta sosok kakak yang begitu menyayanginya. Dikenal sebagai \\\'adik\\\' Garran Si Ketua OSIS yang begitu disegani seisi sekolah membuat kehidupan sekolah Larisa terdengar menyenangkan. [Saat berusia puluhan tahun, ada dua laki-laki berinisial G juga yang begitu berarti dalam hidup Larisa. Yaitu sang suami dan putranya.] Sayangnya, meski orang-orang melihat hubungan keduanya hanya sebatas persaudaraan semata. Ternyata Giko, si biang onar yang juga berada satu angkatan yang sama dengannya mengetahui dengan jelas jika baik Garran maupun Larisa saling menyukai dan berniat merecoki hubungan keduanya. Akankah hubungan Larisa dan Garran baik-baik saja? Ataukah Giko yang malah semakin jungkir balik akibat Larisa karena terlanjur jatuh cinta? [Dan ini sepenggal kisah masa remaja Larisa bersama kedua laki-laki G-nya yang salah satunya akan menjadi suaminya.]'),
(37, '9780399179495', 'Lost & Found', 'Gramedia Pustaka Utama', 'Danielle Steel', '2020', 3, 1, 'It all starts with a fall from a ladder, in a firehouse in New York City. The firehouse has been converted into a unique Manhattan home and studio where renowned photographer Madison Allen works and lives after raising three children on her own. But the accident, which happens while Maddie is sorting through long-forgotten personal mementos and photos, results in more than a broken ankle. It changes her life.  Spurred by old memories, the forced pause in her demanding schedule, and an argument with her daughter that leads to a rare crisis of confidence, Maddie embarks on a road trip. She hopes to answer questions about the men she loved and might have married—but didn’t—in the years after she was left alone with three young children. Wearing a cast and driving a rented SUV, she sets off to reconnect with three very different men—one in Boston, one in Chicago, and another in Wyoming—to know once and for all if the decisions she made long ago were the right ones. Before moving forward into the future, she is compelled to confront the past.'),
(38, '9786020331751', 'Selamat Menunaikan Ibadah Puisi', 'Gramedia Pustaka Utama', 'Joko Pinurbo', '2020', 3, 4, 'Dari kamar mandi yang jauh dan sunyi saya ucapkan Selamat Menunaikan Ibadah Puisi.  Sabda sudah menjadi saya. Saya akan dipecah-pecah menjadi ribuan kata dan suara.  Tubuhku kenangan yang sedang menyembuhkan lukanya sendiri.  Menggigil adalah menghafal rute menuju ibu kota tubuhmu.  Lupa: mata waktu tidur sementara.  Tuhan yang merdu, terimalah kicau burung dalam kepalaku.  Kita adalah cinta yang berjihad melawan trauma.'),
(39, '9786237439400', 'Renata', 'Coconuts Book', 'Hytrrahmi', '2020', 3, 0, 'Setelah diklaim sebagai pacar di lapangan sekolah, Renata menyadari bahwa untuk memastikan status dirinya dan kakak laki-lakinya tetap aman, terlebih dahulu ia harus mengikuti permainan Dewa—Raja Kriminal SMA Gemilang—yang bertekad untuk membalas dendam. Terjebak dalam permainan yang Dewa ciptakan membuat Renata harus patah berkali-kali. Kehadiran Dewa yang tiba-tiba berhasil menjungkirbalikkan kehidupan damai Renata, menghasilkan dunia baru yang sebelumnya tak pernah ingin ia selami. Selama menjadikan Renata sebagai alat untuk balas dendam, Dewa menemukan beberapa fakta baru. Salah satunya mengenai dirinya dan Renata yang telah dijodohkan. Hal tersebut justru memperkeruh konflik di antara keduanya. Lantas jika sudah sebegitu rumit, pada jalur apa Renata harus memantapkan diri? Tetap terjebak atau memilih untuk bergerak menjauh?'),
(41, '9786020524665', '5cm : Aku, Kamu, Samudera, dan Bintang Bintang', ' Gramedia Widiasarana Indonesia', 'Donny Dhirgantoro', '2020', 3, 1, 'Ia di sini sekarang, perjalanan pulang setelah Mahameru—Perjalanan Hati—puncak tertinggi Jawa, dan segala tentangnya. Alih pandangnya sekarang melihat jendela kereta Matarmaja yang melaju membawanya pulang menuju Jakarta. Pejaman mata dan tarikan nafasnya, seakan mencoba menjawab segala pertanyaan besar yang terus memenuhi benaknya semenjak kemarin Ranu Kumbolo hilang dari pandangannya. Pertanyaan-pertanyaan yang bukan dari siapa-siapa, tetapi dari dirinya sendiri. Teruntuk yang tidak lain adalah diriku sendiri... Zafran, manusia paling idealis, humanis, dan fantastis… Manusia paling keren ditongkrongan ini… Sebenarnya, untuk siapa kamu melakukan semua yang ingin kamu lakukan di dunia ini? Untuk kebahagiaan diri kamu? Atau untuk kebahagiaan orang lain? Apakah kamu seorang manusia yang hanya hidup untuk ngabis-ngabisin waktu aja? Celingak-celinguk, berbagi tanah, air, dan udara, namun tanpa tujuan. Menjadi manusia hanya untuk menuh-menuhin bumi, ngabisin airnya, ngabisin oksigennya. Hanya menjadi seonggok daging yang bisa berbicara, berjalan, dan punya nama—tanpa punya makna? Apakah kamu telah menjalani hidup yang kamu mau? Hidup yang kamu inginkan? Bukan yang orang lain inginkan dari kamu? Apakah kamu mencintai diri kamu sendiri? Apakah ada seseorang yang kamu cintai, lebih dari kamu mencintai diri kamu sendiri? Adakah cintamu yang terbalas? Atau mungkin tak terbalas? Atau ada yang begitu mencintaimu, tapi kamu tidak bisa membalasnya. Pernahkah kamu mengalami kesedihan yang luar biasa dalam hidup kamu? Pernahkah kamu mengalami kebahagiaan yang luar biasa dalam hidup kamu? Apakah kamu hidup dalam ketakutan-ketakutan kamu? Atau dalam harapan-harapan kamu? Apa yang harus kamu perbuat? Zafran termenung sejenak, namun beban pertanyaan yang baru saja menghunjam itu terasa ringan saat di bangku kereta, tak jauh darinya, ia melihat Genta, Riani, Ian, Arial, dan Dinda tersenyum kepadanya.'),
(42, '9786230020513', 'Love Cruise', ' Elex Media Komputindo', 'MosaicRile', '2020', 3, 2, 'Alexander Liam, seorang model yang sedang naik daun, mendapat kesempatan untuk berlibur di sebuah kapal pesiar bernama Crystal Seas. Dia berencana untuk istirahat selama pesiar, setelah segala kesibukannya. Namun rencananya gagal setelah sesosok wanita figure skater bernama Scarlett yang tampil di kapal pesiar itu membuatnya terpana. Liam, begitu dia dipanggil, berencana untuk mengenal Scarlett lebih dekat. Wanita itu terkesan misterius baginya. Tak disangka, Cassandra, sahabatnya saat SMP dulu juga berlibur naik Crystal Seas. Ada kisah yang belum selesai antara dirinya dengan Cassandra. Belum lagi Thunder, pasangan skater wanita itu juga sepertinya menjadi penghalang rencananya. Liam tahu dia harus melakukan banyak hal untuk mendekati Scarlett. Sayang, semuanya tidak semudah yang Liam pikirkan – karena dia harus menyelamatkan Scarlett dari diri wanita itu sendiri.'),
(43, '9786022203704', 'Lacuna', ' Bukune', 'Hyonashi', '2020', 3, 1, 'Tidak ada yang tahu bagaimana sebuah rangkaian kejadian dapat mengubah takdir; membalik arah kehidupan, membawa perasaan berlabuh. Tidak juga Lee Jongkuk. Awalnya, ia begitu yakin tidak akan pernah menaruh rasa kepada Shin Yoonji. Tapi, semua itu salah dan ia baru rnenyadarinya rnalam itu, setelah Yoonji memutuskan menghilang dari kehidupannya. Tiga tahun kemudian, ketika Jongkuk menemukan Yoonji lagi, perasaan itu semakin kuat, apalagi ketika melihat denyar di mata Hyunki, putra mereka, yang tumbuh menjadi anak menggemaskan dan menyimpan sejuta pesona.  Di sisi lain, Yoonji tidak memiliki perasaan yang sama. Baginya, malam itu adalah sebuah petaka; kesalahan di masa lalu yang terasa mustahil untuk dimaafkan. Karena itu, semua yang berhubungan dengan Jongkuk harus dilupakan dan disingkirkan. Lalu, bagaimana usaha Jongkuk untuk memenangkan hati Yoonji? Atau akankah penolakan dan sikap kelewat dingin Yoonji membuatnya berhenti?'),
(45, '9786023208357', 'Pembelajaran Cerpen', 'Bumi Aksara', 'Danielle Steel', '2019', 6, 4, ''),
(46, '9786027031937', 'Imam Syafi\\\\\\\'i Pejuang Kebenaran : Seri Novel Biografi Imam Mazhab', 'Emir', 'Talib, Abdul Latip', '2014', 2, 10, 'Namanya adalah Muhammad bin Idris bin Abbas bin Utsman bin Syafi’ bin Sa’ib bin Abdul Yazid bin Hasyim bin Muthalib bin Abdul Manaf. Ayahnya berasal dari keturunan Quraisy yaitu dari Bani Muthalib.  Imam Syafi’i dilahirkan di kota Gaza, Palestina pada bulan Rajab tahun 150 Hijriah. Ada yang mengatakan pada malam beliau dilahirkan, Imam Abu Hanifah meninggal dunia. Khalifah Islam pada masa itu ialah Khalifah Abu Ja’far Al-Mansur dari Bani Abbasiyyah   Imam Syafi’i dibesarkan dalam keadaan serba kekurangan. Sejak kecil beliau sudah mempelajari Al-Qur’an. Pada umur sembilan tahun beliau telah hafal Al-Qur’an. Pada umur sepuluh tahun beliau telah hafal dan memahami kitab Al-Muwatha’ yang ditulis oleh Imam Malik. Beliau memiliki suara yang merdu, pandai bersyair dan bersajak. Ketika berusia lima belas tahun, beliau juga sudah mengajar dan menjadi penceramah di Masjid Al-Haram. Karena kegigihan dan kepandaiannya yang luar biasa, beliau mendapat sanjungan masyarakat.  Novel ini menceritakan kisah hidup Imam Syafi’i: suka, duka, pahit, dan manis perjuangannya dalam menegakkan kebenaran.'),
(47, '9786022528227', 'Pemimpin Pasukan Manusia, Jin, dan Hewan : Nabi Sulaiman AS', 'Erlangga for Kids', 'Adnan, Ummu Tim Emir', '2016', 2, 2, ''),
(48, '9786020935584', 'Ensiklopedia Tokoh Islam Berpengaruh di Dunia', 'Emir', 'Saiful Hadi El-Sutha', '2017', 1, 4, 'Sejak kemuculannya pada empat belas abad yang silam, dunia Islam tidak pernah sepi melahirkan tokoh-tokoh yang tidak hanya berpengaruh di dunia muslim, tetapi juga bagi peradaban dunia. Pengaruh mereka besar sekali, sehingga nama mereka lestari. Bidang yang mereka kuasai sangat beragam, mulai dari ilmu-ilmu agama, filsafat, sains, matematika, sejarah, kedokteran, penggerak sosial, sampai dengan politik. Tidak jarang di antara mereka adalah seorang universalis, yang menguasai hampir semua cabang ilmu di masanya.'),
(49, '9786024346577', 'Jenengku Tegar', 'Erlangga', 'Haryo Guritno, Sri Sunarsih', '2017', 4, 5, ''),
(50, '9786028318884', 'Ajisaka', 'Dinosaurus Bacaan kanak-kanak PT Imperial Bhakti U', 'Hidayat Suryalaga, Raden Haji', '2009', 6, 8, ''),
(51, '9789796887880', 'Mothers Are Special', 'Erlangga', 'Lucy Mead', '2000', 8, 19, ''),
(52, '9786027596832', 'Panen Rupiah Dari Budidaya Ikan Mas Rajadanu', 'Erlangga', 'Estu Nugroho', '2015', 8, 5, ''),
(53, '9789790024854', 'Sukses Budidaya Gurame di Lahan Sempit dan Hemat Air', 'Penebar Swadaya', 'Estu Nugroho', '2016', 7, 4, ''),
(54, '9786027596894', 'Seri Hidangan Mancanegara: Thailand', 'Erlangga', 'Tabularasa', '2016', 8, 2, 'Thai cuisine atau hidangan Thailand yang dikenal lezat dan bercita rasa pedas, ternyata digemari di seluruh dunia, termasuk Indonesia. Sebetulnya kelezatan hidangan Thailand tak jauh berbeda dengan hidangan Indonesia pada umumnya. Bahkan, ada yang mirip dengan hidangan Manado, seperti Tom Yum Goong yang mirip bumbu dan cara masaknya dengan Kuah Asam Ikan serta Nasi Goreng Nam Pla yang mirip dengan Nasi Goreng Kampung. Beberapa hidangan penutup atau kue-kuenya juga sangat mirip, seperti kolak, bubur ketan, dan pisang goreng.  Sangat tidak mengherankan apabila hidangan Thailand kini menjadi kuliner favorit di Indonesia, khususnya Jakarta. Terbukti dengan cukup banyaknya restoran Thailand di beberapa tempat di Jakarta, bahkan aneka jenis bumbu Thailand bisa Anda jumpai di sejumlah pasar swalayan ternama di Jakarta. Nah, bagi Anda yang gemar memasak, cobalah menjajal resep-resep Thailand yang akrab cita rasanya dengan lidah kita.Dari aneka salad, sup, lauk pauk, dan dessert yang tersaji di buku ini, semua lezat dan mudah dibuat.'),
(55, '9786027596931', 'Seri Hidangan Mancanegara: Vietnam', 'Erlangga', 'Tabularasa', '2016', 8, 3, 'Hidangan Vietnam meliputi makanan dan minuman Vietnam yang biasanya merupakan kombinasi lima rasa dasar, yaitu pedas, asam, asin, manis, dan gurih yang disantap secara bersamaan. Setiap hidangan Vietnam memiliki rasa khas yang mencerminkan satu atau lebih dari elemen-elemen tersebut. Bumbu yang sering digunakan meliputi kecap ikan, terasi, kecap, beras dan tepung beras, rempah segar, buah-buahan, dan sayuran segar.  Kebanyakan hidangan Vietnam diolah dengan cara dicincang, diiris lalu dicampur dengan bumbu-bumbu beraroma harum dan menggugah selera. Banyak masakan yang diolah dengan cara cepat atau quick cooking, misalnya Pho atau mi kuah yang segar karena sayuran dan daun mint dimasukkan saat masakan sudah diangkat dari api. Ada pula yang dapat disantap mentah, seperti Bahn Mi atau sandwich khas Vietnam yang bercita rasa segar karena berisi banyak sayuran yang dibumbui cuka beras serta lumpia Vietnam atau Goi Cuon yang sudah mendunia.  Dalam buku ini Anda bisa menemukan resep-resep populer hidangan Vietnam yang mudah diperoleh bahan dan bumbunya. Bumbu-bumbu kemasan khas Vietnam juga bisa ditemukan di pasar swalayan ternama di kota Anda. Mencoba memasak hidangan Vietnam di rumah? Pasti seluruh keluarga akan menyukainya. Cita rasa Vietnam memang tak pernah membosankan!'),
(56, '9786027596917', 'Seri Hidangan Mancanegara: Singapura', 'Esensi', 'Tabularasa', '2015', 8, 2, 'Singapura, negeri kecil berpenduduk multikultural, merupakan surga beragam cita rasa kuliner. Mulai dari hidangan China, Melayu, India, hingga Peranakan dapat dijumpai di seluruh pelosok Singapura. Anda bisa menikmati lezatnya Nasi Lemak, Rojak, dan Popiah yang khas Melayu, atau Nasi Briyani dan Kari yang bercita rasa India, serta berbagai masakan China seperti Hainan Chicken Rice dan Peking Duck dan masakan Peranakan seperti Laksa, Kue Lapis, dan Onde-onde. Sajian yang menggiurkan itu  bisa Anda peroleh resep-resepnya dalam buku ini.'),
(57, '9786027596733', 'Hidangan Lezat Nusantara', 'Erlangga', 'Tim Dapur Esensi', '2016', 8, 3, 'Sejuta rasa lezatnya Hidangan Nusantara adalah warisan nenek moyang yang layak untuk dinikmati dan patut kita jaga kelestariannya. Negeri yang kaya rempah ini juga merupakan surga rasa yang amat patut dibanggakan dari generasi ke generasi. Cobalah resep-resep yang sangat bervariasi dari camilan hingga hidangan utama dan minuman lezat khas Indonesia. Sajikan untuk keluarga tercinta, untuk acara perhelatan, atau untuk ide bisnis kuliner yang kian marak saat ini. Temukan lebih dari 250 resep pilihan dalam buku ini dan nikmati kelezatannya.'),
(58, '9786026847768', 'Wujudkan Tulisanmu Menjadi Buku', 'Esensi', 'BKP', '2018', 7, 4, 'Siapa bilang menulis buku itu sulit? Banyak orang yang berpendapat demikian, padahal mereka tidak tahu atau belum paham betul hal-hal apa saja yang termasuk dalam proses pembuatan sebuah buku. Wujudkan Tulisanmu Menjadi Buku membahas langkah demi langkah pembuatan buku hingga proses cetak dan distribusi buku itu sendiri. Dalam buku ini, terjawablah semua pertanyaan yang sering merundung calon penulis baru (tak terkecuali juga penulis berpengalaman!)  Tidak hanya itu, Wujudkan Tulisanmu Menjadi Buku juga memberikan inspirasi bagi guru dan peserta didik agar keduanya dapat menjalankan peran saling mendukung di sekolah.Hal inilah yang akan menjadi kunci utama dalam perkembangan budaya literasi dan tulis-menulis yang solid di lingkungan akademik dan masyarakat.'),
(59, '9789790752009 ', 'The Rules of Love', 'Erlangga', 'Richard Templar', '2018', 5, 3, ''),
(60, '9786020638850', 'Damai Di Bumi Sawerigading - Pengelolaan Konflik Berbasis Komunitas', 'Gramedia Pustaka Utama', 'Dwia Aries Tina Pulubuhu', '2020', 8, 1, 'Menjelang 2000, masyarakat Indonesia diguncang oleh krisis ekonomi dan transisi politik. Masa itu ditandai dengan maraknya konflik sosial yang berkembang menjadi peristiwa kekerasan. Di beberapa tempat, seperti Ambon, Poso, dan Sampit, ketidakpuasan, kekecewaan, dan keputusasaan diselesaikan dengan aksi perusakan, pembakaran, dan penganiayaan.  Alih-alih sekadar menggunakan analisis makro dalam memetakan fenomena kekerasan tersebut, Damai di Bumi Sawerigading menyorot fakta bahwa fenomena kekerasan tidak terjadi di semua tempat. Mengapa tempat-tempat tertentu relatif aman dan damai, meski masyarakatnya juga  mengalami dampak krisis ekonomi dan transisi politik? Artinya, diperlukan kajian yang bersifat fenomenologis untuk membongkar penyebab konflik dan kekerasan. Apalagi, sebagian besar kasus kekerasan komunal didahului oleh konflik sosial yang bersifat lokal dan regional. Dalam kerangka resolusi konflik dan upaya membangun damai, sumbangsih yang buku ini berikan adalah mekanisme penyelesaian konflik berbasis kultur lokal.  Buku yang menguraikan konflik dan kekerasan sosial di Luwu, Sulawesi Selatan ini dapat menjadi referensi bagi pemerintah, LSM, aparat keamanan, dan masyarakat untuk melestarikan budaya damai, menghentikan konflik kekerasan, dan membangun harmoni dalam keberagaman. Selain itu, buku ini juga memberikan perspektif baru karena memperkenalkan pendekatan fenomenologis dalam studi konflik.'),
(61, '9789790155091', 'Kebenaran Maksud Anda', 'Erlangga', 'Lonnie Paceli', '2008', 6, 4, ''),
(62, '9789790158559 ', 'Sushi & Miso Mudah Saji', 'Erlangga', 'Fiona Smith', '2018', 4, 3, ''),
(63, '9797814394665', 'Double Your Brain Power', 'Gramedia Pustaka Utama', 'Kathy Carner', '2017', 7, 3, 'Sebagian pendidik dan orang tua beranggapan bahwa bermain dan belajar adalah dua aktivitas yang berbeda. Bermain dapat menghabiskan waktu belajar anak. Sebenarnya hal itu tidak sepenuhnya benar. Jika kita bisa memahami dunia anak, kita dapat memasukkan konsep-konsep pembelajaran layaknya yang berlaku di sekolah.  Ada 300 aktivitas favorit yang dapat memberikan inspirasi dan mengembangkan imajinasi anak. Beberapa di antaranya : Berburu Harta Karun, Petunjuk: ak Detektif, saus Apel Berwarna, Keju Swiss, studio Yoga, dan lain-lain.'),
(64, '9789790157934', 'Detoksifikasi Hidup Anda', 'Erlangga', 'Josephine Collins', '2008', 4, 2, ''),
(65, '9789790331570', 'Kreasi Kado Untuk Anak', 'Erlangga', 'Cheryl Owen', '2009', 7, 5, ''),
(66, '9789790156340', 'Nyeri Tulang dan Otot', 'Erlangga', 'Kim Davies', '2008', 9, 2, ''),
(67, '9789790158214', 'Aneka Resep Makanan Nasi', 'Erlangga', 'Utari Ninghadiyati', '2015', 9, 3, ''),
(68, '9789790152533', 'Jangan Jual Tristan!', 'Erlangga', 'Afrinaldi', '2007', 8, 2, ''),
(69, '9789790752962', 'Sookie: Klub Vampire', 'Erlangga', 'Charlaine Harris', '2010', 1, 3, ''),
(70, '9789790754355', 'Kenali Narkoba Dan Musuhi Penyalahgunaannya', 'Esensi', 'Subagyo Partodihardjo', '2007', 1, 2, ''),
(71, '9789797816780', 'Narkoba Sayonara', 'Erlangga', 'Fanny Jonathans Poyk', '2006', 4, 2, 'Ketika kampanye antinarkoba dibombardir oleh pesan-pesan bernada tidak/jangan yang vulgar di tepi jalan, rasanya kita butuh jenis pesan lain. Pesan tidak/jangan tadi sering kali tak disertai alasan. Atau, kalaupun iya, sifatnya hanya menekankan apa yang semua orang sudah ketahui (stating the obvious). Akibatnya, anjuran berhenti memakai narkoba makin terasa klise. Keputusan untuk berhenti/keluar/sembuh adalah sebuah sikap utuh (kesatuan antara aspek kognitif, afektif, dan konatif).  Tak bisa hanya aspek kognitif/pengetahuan saja yang disentuh melalui kampanye/buku bernuansa medis. Aspek afektif/rasa juga perlu digugah atau disentuh. Narkoba Sayonara adalah upaya menggugah rasa tadi. Dua belas kisah tentang kehidupan pengguna narkoba, tersaji. Beragam. Ada yang karena dikekang, dijadikan korban obsesi orang tua, sikap protektif yang berlebihan, dll. Melalui kisah naratif orang diajak untuk sadar. Narkoba sayonara adalah pesan subtil yang lebih memiliki kedalaman makna daripada sekadar jangan.'),
(72, '9789791479554', 'Panduan Salat Doa & Zikir : Sehari-Hari dan sepanjang Masa Sesuai Tuntunan Rasul', 'Kaysa Media', 'Abdurrahman Adlib', '2011', 7, 3, ''),
(73, '9786024343491', 'Panduan Anti Merokok untuk Pelajar,Guru dan Orangtua', 'Erlangga', 'Asrorun Niam Sholeh', '2017', 7, 6, ''),
(74, '9786020331416', 'Pemikiran Karl Marx: Dari Sosialisme Utopis ke Perselisihan Revisionisme', 'Gramedia Pustaka Utama', 'Franz Magnis Suseno', '2018', 4, 5, '\\\'Marxisme\\\', karena dilebih-lebihkan, telah menjadi momok yang menakutkan sebagai sarana pembebasan umat manusia dari ketidakadilan maupun sebagai sumber segala subversi. Dalam buku ini, Prof. Dr. Franz Magnis-Suseno, SJ menjelaskan pokok-pokok pemikiran Marx secara objektif dan kritis. Setelah mengemukakan bentuk-bentuk sosialisme \\\'utopis\\\' yang mendahului Marx, ia kemudian menelusuri perkembangan dalam pemikiran Marx: dari paham Marx muda tentang peran filsafat kritis dan keterasingan manusia sampai terbentuknya teori tentang hukum-hukum yang mendasari perubahan masyarakat dan kritik terhadap kapitalisme. Selanjutnya, ia menggariskan kembali bagaimana ajaran Marx menjadi \\\'Marxisme\\\', ideologi perjuangan kaum buruh, serta memperkenalkan aliran-aliran terpenting dalam Marxisme. Siapa pun yang ingin mengetahui apa yang sebenarnya diajarkan oleh Marx serta membentuk penilaian kritis sendiri tentangnya akan sangat terbantu oleh buku ini, tanpa terjebak oleh jargonjargon yang serta-merta mengutuk maupun memuji Marxisme, yang sebenarnya hanya untuk menyelamatkan kepentingan-kepentingan sempit tertentu.'),
(75, '9786020935249', 'Romansa Dua Benua', 'Erlangga', 'Pipiet Senja', '2016', 2, 3, ''),
(76, '9786027596573 ', 'Keterampilan Pramuka: Talli Menali', 'Erlangga', 'Israr Ardiansyah', '2014', 9, 3, ''),
(77, '9786020935164', 'Astrie Ivo: Sepasang Sayap Menuju Surga', 'Emir', 'Astrie Ivo', '2015', 9, 3, 'Buku Astrie Ivo: Sepasang Sayap Menuju Surga (Autobiografi Parenting) merupakan buku yang ditulis berdasarkan kisah seorang Astrie Ivo selama menjalani rumah tangga, banyak cerita menarik dan inspiratif terutama suka dukanya mendidik ketiga orang putranya agar selalu berada di jalan yang diridhai oleh Allah SWT. Uniknya hal tersebut tak disampaikan lewat aneka teori melainkan melaui jejak kehidupan Astrie sebagai anak maupun ia sebagai seorang ibu. Sebuah buku yang sangat menginspirasi pembaca untuk berjuang menjadi pribadi sekaligus orang tua yang lebih baik lagi bagi anak-anaknya, dalam naungan keindahan Islam. buku dkirim H 1 setelah verifikasi, cut off jam 14.00, lewat dari itu masuk order keesokan harinya'),
(78, '9786027596757', 'Seri Lulus SKU Pramuka: Penggalang Ramu', 'Erlangga', 'Maman Sumanta', '2014', 8, 2, ''),
(79, '9786027596825', 'Seri Lulus SKU Pramuka: Penegak Bantara', 'Erlangga', 'Maman Sumanta', '2015', 9, 3, ''),
(80, '9786027341494', 'Kamus Lengkap Inggris-Indonesia Indonesia-Inggris', 'Senja Publishing', 'Sutrisno, S.Pd & Achmad Fanani, M.Pd', '2016', 6, 5, ''),
(81, '9786020323411', 'Le Petit Prince: Pangeran Cilik', 'Gramedia Pustaka Utama', 'Antoine De Saint-Exupery', '2001', 3, 2, ''),
(82, '9786020630960', 'Selamat Datang, Bulan Puisi', 'Gramedia Pustaka Utama', 'Theresia Rumthe', '2019', 1, 2, ''),
(83, '9786021201732', 'Pesan Cinta Mbah Moen: Nasihat Pilihan KH Maimoen/Maimun Zubair', 'Turos Pustaka', 'Tim Rene Islam', '2019', 7, 2, ''),
(84, '9786025907067', 'Sabar Kemudian Syukur Lalu Ikhlas', 'Agama Islam', 'Retno D. N', '2018', 5, 2, 'Setiap Orang Muslim Dalam Shalat Mereka Berdoa Agar Diberi Petunjuk Ke Jalan Yang Lurus. Mereka Meminta Setiap Lima Kali Sehari, Atau Bahkan Lebih. Seolah-Olah Mereka Takut Jika Jalan Itu Tidak Diberikan Oleh Allah Pada Mereka. Atau Tenyata Sudah Diberikan Kepada Mereka, Tetapi Mereka Selalu Melupakannya. Jalan-Jalan Itu Ada Untuk Menempuh Tujuan Hidup, Yaitu Ridha Allah, Cinta Allah, Kerelaan Allah Untuk Menerima Kembali Makhluk-Nya Yang Penuh Kesalahan Dan Dosa. Buku Ini Berbicara Tentang Tiga Jalan Yang Ditempuh Oleh Hati, Oleh Lisan, Maupun Oleh Perbuatan. Ketiganya Mencakup Sabar, Syukur, Dan Ikhlas Yang Selam Ini Menjadi Formula Yang Tidak Kunjung Basi. Formula-Formula Yang Justru Terus Dibutuhkan Seperti Sebuah Obat Yang Harus Diproduksi Besar-Besaran Setiap Tahunnya. Formula Yang Harus Ada Dalam Diri Dan Dalam Buku Ini Membahas Dengan Sedikit Banyak Dari Ketiganya.'),
(85, '9786020623849', 'Aviarium', 'Gramedia Pustaka Utama', 'Hasan Aspahani', '2019', 9, 2, ''),
(86, '9789797944995', 'Senja Hujan dan Cerita Yang Telah Usai', 'Media Kita', 'Boy Chandra', '2015', 1, 1, 'Buku ini dipersembahkan untuk orang-orang yang pernah dilukai, hingga susah melupakan. Untuk orangorang yang mencintai, tapi dikhianati. Juga yang mengkhianati, lalu menyadari semua bukanlah hal yang baik untuk hati. Kepada orang-orang yang diam-diam jatuh cinta, suka pada sahabat sendiri, tidak bisa berpaling dari orang yang sama, dan hal-hal yang lebih pahit dari itu. Mari mengenang, tapi jangan lupa jalan pulang. Sebab, setelah tualang panjang ke masa lalu, kamu harus menjadi lebih baik, dan mulailah menata rindu yang baru.  Kita kepada masa lalu: kita adalah cerita yang telah usai'),
(87, '9786020476865', 'Tips & Trik Office Word, Excel Dan Powerpoint 2016', 'Elex Media Komputindo', 'Arista Prasetyo Adi', '2018', 8, 2, ''),
(88, '9786237465386', 'Yuk, Jadi Pelajar Full Prestasi', 'Noktah', 'Husni Mubarrok', '2019', 6, 2, '“If you can dream it, you can do it!” (Walt Disney).  Sebagai pelajar sekaligus pembelajar yang aktif, kamu punya potensi yang luar biasa untuk berprestasi dan meraih kesuksesan. Sayang bila kamu tidak mau mengembangkan seluruh potensi yang ada dalam dirimu. Sayang juga bila kamu menyia-nyiakan masa muda yang penuh dengan tantangan dan kesempatan untuk berprestasi lebih tinggi lagi.  Motivasi dan kisah-kisah inspiratif di dalam buku ini baka melejitkan potensi kamu dan mengubah masa depan kamu lebih cemerlang.'),
(89, '9786021441510', 'Ayat-Ayat Motivasi', 'Mutiara Alamah', 'Abu Ali Al-Bikhal', '2014', 5, 4, 'Buku ini menggali sebagian kecil ayat-ayat motivasi yang ada dalam al-Qur\\\'an untuk di eksplorasi. Merujuk pada al-Qur\\\'an dengan bantuan dua referensi penting, yakni tafsir Ibn Katsir dan tafsir al-Maraghi, buku ini memaparkan ayat-ayat motivasi tersebut dengan uraian sederhana dan ringan. Oleh karena itu, buku ini sangat cocok dibaca oleh siapa pun sebagai motivasi dalam menjalani kehidupan. Mari, buat hidup lebih berarti. Selamat membaca!'),
(90, '9786237345138', 'Nadiem Makarim', 'Andaliman Books', 'Ardi Darmawan', '2019', 8, 2, ''),
(91, '9786230007279', 'Masih Adakah Tobat Untukku?', 'Elex Media Komputindo', 'Indahnursf', '2019', 9, 2, 'Setiap manusia pasti memiliki masa lalu yang buruk. Akan tetapi, tidak menutup kemungkinan suatu saat ia akan menjadi baik. Sebab, kita bisa belajar untuk memperbaiki diri dari masa lalu. Kita memang punya masa lalu yang buruk, tapi ingat, kita masih punya masa depan yang suci.  Buku ini mengajak kita untuk bermuhasabah dan memotivasi diri untuk berubah. Allah selalu menunggu kita untuk bertobat, Allah tidak pernah mempermasalahkan seberapa banyak dosa-dosa kita. Oleh sebab itu, kita tidak perlu menyerah dan berputus asa.'),
(92, '9786232810389', 'The Puzzle', 'Emedia', 'Wahyuni Tubasyah', '2020', 1, 12, ''),
(93, '9786027052260', 'Catatan Dari Balik Penjara : Goresan Pena Revolusi Pramoedya Ananta Toer', 'Glosaria Media', 'Muhammad Muhibbuddin', '2014', 3, 2, ''),
(94, '9786027303362', 'Detik-Detik yang Menentukan - Jalan Panjang Indonesia Menuju Demokrasi', 'The Habibie Center Mandiri', 'Bacharuddin Jusuf Habibie', '2006', 6, 2, 'Mengingat bahwa buku ini ditulis berdasarkan catatan harian beliau dan komentar berbagai surat kabar nasional pada masa itu maka buku ini seolah-olah merupakan rekaman ulang sebuah realitas politik yang amat mencekam saat itu. Meskipun demikian sisi-sisi kelembutan, di tengah-tengah ketegasan sikapnya, seorang anak bangsa yang bernama B.J. Habibie sangat jelas tergambarkan pula di dalam buku ini. (Hermawan K. Dipojono)');
INSERT INTO `buku` (`buku_id`, `kode_buku`, `judul`, `penerbit`, `pengarang`, `th_terbit`, `rak_id`, `jumlah`, `ket`) VALUES
(95, '9786020331010', 'Make It Happen', 'Gramedia Pustaka Utama', 'Prita Hapsari Ghozie', '2016', 8, 4, 'Pernah bermimpi ingin. Memiliki rumah yang indah tempat berkumpulnya keluarga? Memiliki kendaraan sehingga tidak perlu repot berpindah tempat ke sana kemari? Melihat anak-anak tumbuh bahagia dan mengantarkan mereka menjadi the best that they can be tanpa mengkhawatirkan dana pendidikannya? Hidup nyaman dan meraih kebebasan finansial meski sudah tidak lagi bekerja?, tapi saat ini masih bisa memiliki kehidupan sosial yang menyenangkan. Make It Happen! Buku ini berisi tahapan-tahapan dalam perencanaan keuangan untuk mewujudkan berbagai mimpi Anda. Dirangkum dalam ilustrasi yang sangat menarik dan bahasa yang membumi, buku ini dapat menjadi panduan bagi siapa saja. Tidak ketinggalan, Anda bisa temukan rajutan kisah inspiratif para sahabat Prita: Merry Riana, Moza Pramita, dan Ria Hanin \\\"Coffee Toffe\\\" di buku ini. Buku yang bukan hanya ditulis untuk menginspirasi Anda meraih mimpi, tapi juga menjadikan kehidupan Anda lebih baik dan sejahtera.'),
(96, '9786029498646', 'Happiness Inside', 'Noura Books', 'Gobind Vashdev', '2012', 9, 2, 'Di sebuah desa, berembuslah berita tentang sebuah batu permata berharga milik seorang petapa. Seorang pemuda mendatanginya, dan meminta batu tersebut. Ini, ambil untukmu, kata petapa itu tanpa beban. Sang pemuda pulang dengan senang, tetapi ada sesuatu yang mengusik pikirannya. Hingga keesokan harinya dia kembali ke tempat petapa. Hai, orang suci, ambillah permata ini kembali, tetapi berikan hati penuh ikhlas yang mampu memberikan permata ini. Itulah sepenggal kisah yang menjadi ilustrasi dalam buku ini. Sebuah analogi yang sangat pas menggambarkan seseorang yang telah menemukan makna KEBAHAGIAAN. Ya, demi kebahagiaan kita berusaha memenuhi diri dengan berbagai macam fasilitas: harta melimpah, rumah mewah, mobil mewah, kekuasaan, dan lain sebagainya. Tetapi, benarkah kita sudah bahagia? Ataukah kita masih merasa bahwa kebahagiaan itu begitu jauh dari genggaman? Gobind Vashdev, seorang pembicara multitalenta, menjawab alasan kekosongan manusia dalam menjalani hidup dan memberikan jalan keluarnya. Jalan keluar yang sederhana, tetapi kerap terlupakan. Jalan keluar yang sebenarnya membimbing kita melihat ke dalam, ke diri kita, dan menemukan kebahagiaan sejati.'),
(97, '9786024125189', 'Filosofi Teras', 'Penerbit Buku Kompas', 'Henry Manmpiring', '2018', 5, 2, 'Apakah kamu sering merasa khawatir akan banyak hal? baperan? susah move-on? mudah tersinggung dan marah-marah di social media maupun dunia nyata?  Lebih dari 2.000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turunnya kehidupan. Jauh dari kesan filsafat sebagai topik berat dan mengawang-awang, Filosofi Teras justru bersifat praktis dan relevan dengan kehidupan Generasi Milenial dan Gen-Z masa kini.'),
(98, '9786024812461', 'Artisan Brand', 'Kepustakaan Populer Gramedia', 'Handoko Hendroyono', '2019', 9, 3, 'Bagaimana kita memahami kian tumbuh suburnya berbagai brand lokal belakangan ini? Lihat saja, mulai dari kedai kopi, retoran, produk fashion, hingga film, musik dan buku lokal makin diterima oleh masyarakat, khususnya kaum milenial.  Apakah ini hanya tren sesaat? Ataukah, muncul gelombang pasar yang baru akibat perubahan selera dan prilaku konsumen?  Artisan Brand karya Handoko Hendroyono ini membantu kita untuk lebih memahami fenomena baru tersebut. Berbekal pengalaman puluhan tahun sebagai praktisi periklanan dan pengembang barnd lokal, Handoko juga membeberkan seperangkat cara jitu untuk tetap bertahan dan berkembang di zaman yang terus berubah.'),
(99, '9786024020156', 'The Miracle of Enzyme: Self-Healing Program', 'Qanita', 'Dr. Hiromi Shinya', '2016', 6, 3, ''),
(100, '9786230009082', 'More Of You', 'Elex Media Komputindo', 'Acha Sinaga & Andy Ambarita', '2019', 6, 4, 'Pertemuan pertama Acha dan Andy terjadi saat mereka sedang beribadah. Sebuah kebetulan yang membuka jalan bagi mereka menjalin hubungan lebih dari sekadar pertemanan. Namun, kisah mereka tidak berjalan dengan mulus. Semakin hari, keduanya semakin memperlihatkan sifat kontradiktif yang sulit untuk membawa mereka pada satu tujuan. Komunikasi mereka berjalan lancar, meskipun terhalang jarak antara Jakarta dan Sydney. Namun, hubungan jarak jauh yang mereka jalani¬ memperumit keadaan. Ada pergumulan batin di antara pribadi masing-masing. Selain dari diri sendiri, pergesekan kadang muncul dari orang lain di sekitar. Membuat Acha akhirnya memutuskan menyerah dan mengakhiri hubungan mereka. Di tengah-tengah perasaan hancur karena tidak berhasil mempertahankan hubungan, hadir setitik harapan yang akhirnya membuat Acha dan Andy sepakat untuk memperjuangkan lagi kisah mereka. Keduanya menyadari, bahwa semua tidak akan berjalan dengan baik tanpa campur tangan Tuhan sebagai tempat pengaduan serta sumber dari segala keputusan yang mereka tempuh. Bukan hanya saling mengalah. Namun, Acha dan Andy akhirnya bisa sama-sama belajar untuk merendahkan hati, saling mendukung untuk menguatkan, dan yang terpenting, sama-sama mau berubah untuk menjadi pribadi yang lebih baik.'),
(101, '9786020457031', 'Anak Muda Miliarder Saham', 'Elex Media Komputindo', 'Andika Sutoro Putra', '2018', 3, 2, 'Apakah Anda sedang mencari panduan step-by-step untuk menjadi full time investor yang sukses? Sudah lama berkecimpung di pasar modal namun belum juga bisa menghasilkan profit yang konsisten? Bagaimana cara membangun passive income dari investasi saham? Apakah mungkin mencapai kebebasan finansial dengan investasi saham? Mengapa trading saham justru akan membuat Anda merugi? Buku ini akan menjawab semua pertanyaan di atas dan memberikan solusi yang sudah teruji. Juga akan menunjukkan mengapa anak muda memiliki kesempatan dan sumber daya yang besar untuk mencapai kesuksesan finansial dengan memanfaatkan pasar saham.'),
(102, '9786023940776', 'Atlas Geografi Indonesia Dan Dunia', 'Bhuana Ilmu Populer', 'TIM BIP', '2016', 1, 11, 'Atlas Geografi Indonesia dan Dunia berisi Peta 34 provinsi di Indonesia terlengkap.Atlas ini berisi Peta NKRI Terbaru, Peta 34 Provinsi Terbaru, Peta Tematik Indonesia, Peta Benua, Peta Iklim Dunia, Cara Membaca Peta, Citra Satelit, Pakaian dan Rumah Adat, Siklus Hidrologi, Siklus dan Jenis Batuan, Tata Surya dengan Teori Terbaru, Lempeng tektonik, arus laut dunia, Bendera Negara di dunia, Index.'),
(103, '9786020628899', 'Tak Mungkin Membuat Semua Orang Senang', 'Gramedia Pustaka Utama', 'Jeong Moon Jeong', '2019', 9, 3, 'Dalam hidup, kita pasti akan berhadapan dengan orang-orang yang kelewat batas. Mereka menyakiti kita, mempermalukan kita, dan mengguncangkan kepercayaan diri kita. Hal-hal seperti itu sangat sulit diterima. Hubungan antar manusia kerap membutuhkan terlalu banyak usaha. Kita ingin mengatakan apa yang sebenarnya kita rasakan, tetapi kita tidak melakukannya karena takut orang lain salah paham dan takut dianggap egois. Apakah kita bisa memberitahu seseorang. tanpa merasa tidak enak hati. Bahwa sikapnya sudah kelewat batas? Tentu saja bisa.'),
(104, '9786232167155', 'Kita Dan Waktu', 'Bhuana Ilmu Populer', 'Bagas Ali Prasetyo', '2020', 8, 2, 'Kamu merasa takut akan sesuatu, tapi pada saat bersamaan, semesta ternyata memberikan jawaban atas ketakutanmu itu dengan hadirnya seorang teman. Yang tanpa diminta, tanpa disuruh, melakukan “tugasnya” dengan sangat baik. Hingga dirasa, semuanya lebih dari sekadar teman. Hingga lambat laun percaya bahwa dia adalah sosok yang tepat. Tapi, bukankah semua sudah ada waktunya? Kehadirannya, termasuk kepergiannya? Di situlah waktu terus berjalan, dan kita tetap membuat cerita yang tak tahu kapan berakhirnya. Kita dan waktu. Tentang indahnya “rasa”. Tentang menyayangi yang masih ada. Tentang mengikhlaskan yang sudah pergi. Juga tentang merawat ingatan itu sendiri.'),
(105, '9786020307473', 'Marketing to the Middle Class Muslim', 'Gramedia Pustaka Utama', 'Yuswohady', '2014', 6, 2, ''),
(106, '9786020516899', 'Mind Platter', 'Gramedia Widiasarana Indonesia', 'Najwa Zebian', '2019', 1, 2, 'Pada hari akhir, takkan ada yang menapaki perjalananmu. Kamu harus melakukan itu. Pada hari akhir, takkan ada yang memimpikanmu. Kamu harus melakukan itu.'),
(107, '9786024246945', 'Laut Bercerita', 'KPG', 'Leila S. Chudori', '2017', 5, 3, 'Jakarta, Maret 1998 Di sebuah senja, di sebuah rumah susun di Jakarta, mahasiswa bernama Biru Laut disergap empat lelaki tak dikenal. Bersama kawan-kawannya, Daniel Tumbuan, Sunu Dyantoro, Alex Perazon, dia dibawa ke sebuah tempat yang tak dikenal. Berbulan-bulan mereka disekap, diinterogasi, dipukul, ditendang, digantung, dan disetrum agar bersedia menjawab satu pertanyaan penting: siapakah yang berdiri di balik gerakan aktivis dan mahasiswa saat itu.  Jakarta, Juni 1998 Keluarga Arya Wibisono, seperti biasa, pada hari Minggu sore memasak bersama, menyediakan makanan kesukaan Biru Laut. Sang ayah akan meletakkan satu piring untuk dirinya, satu piring untuk sang ibu, satu piring untuk Biru Laut, dan satu piring untuk si bungsu Asmara Jati. Mereka duduk menanti dan menanti. Tapi Biru Laut tak kunjung muncul.'),
(108, '9786020623221', 'Pet Sematary', 'Gramedia Pustaka Utama', 'Stephen King', '2019', 2, 3, 'Rumah itu tampak nyaman, terasa nyaman bagi Dr. Louis Creed. Rumah tua, luas, dan asri. Tempat yang cocok untuk keluarga, anak-anak bisa bermain dan menjelajah. Perbukitan dan bentangan padang rumput Maine terasa begitu jauh dari kota besar penuh bahaya dan sesak oleh polusi.  Cuma satu yang mencemaskan: truk-truk besar yang menderu lewat di jalanan depan rumah.  Di belakang rumah ada jalan setapak ke dalam hutan, tempat anak-anak sekitar biasa berjalan khidmat beriringan, mengantar hewan-hewan kesayangan yang telah mati untuk dikuburkan.  Tempat yang sedih, mungkin, namun aman. Ya, tempat itu pasti aman. Bukan tempat yang akan merasukimu dalam mimpi, membuatmu terbangun dengan berkeringat ngeri dan waswas….'),
(109, '9786020522173 ', 'Indonesia Dalam Rekayasa Kehidupan', 'Gramedia Widiasarana Indonesia', 'Dharma Pongrekun', '2020', 1, 1, ''),
(110, '9786024526986', 'Sebuah Seni Untuk Bersikap Bodo Amat', 'Gramedia Widiasarana Indonesia', 'Mark Manson', '2017', 3, 4, 'Selama beberapa tahun belakangan, Mark Mansonmelalui blognya yang sangat populertelah membantu mengoreksi harapan-harapan delusional kita, baik mengenai diri kita sendiri maupun dunia. Ia kini menuangkan buah pikirnya yang keren itu di dalam buku hebat ini.  Dalam hidup ini, kita hanya punya kepedulian dalam jumlah yang terbatas. Makanya, Anda harus bijaksana dalam menentukan kepedulian Anda.   Manson menciptakan momen perbincangan yang serius dan mendalam, dibungkus dengan cerita-cerita yang menghibur dan kekinian, serta humor yang cadas.   Buku ini merupakan tamparan di wajah yang menyegarkan untuk kita semua, supaya kita bisa mulai menjalani kehidupan yang lebih memuaskan, dan apa adanya.'),
(111, '9786022912446', 'The Life Changing Magic Of Tidying Up', 'Bentang Pustaka', 'Marie Kondo', '2016', 8, 2, 'Walaupun sudah susah payah merapikan rumah, apakah kertas-kertas terus saja bertumpuk dan pakaian harus terus Anda jejal-jejalkan di lemari? Kenapa kita tidak bisa menjaga kerapian rumah?  Konsultan berbenah asal Jepang, Marie Kondo, memperkenalkan metode merapikan yang ampuh tiada duanya, KonMari. Keampuhan metode yang kini semakin marak diterapkan di Jepang dan telah dikemas dalam program televisi laris, Tidy Up with KonMari! ini, telah menular ke seluruh dunia. Saking ampuhnya, tak seorang pun klien Kondo kembali ke kebiasaan berantakan (dan calon kliennya harus masuk daftar tunggu selama tiga bulan). '),
(112, '9786020339764', 'Genom - Kisah Spesies Manusia Dalam 23 Bab', 'Gramedia Pustaka Utama', 'Matt Ridley', '2017', 8, 3, ''),
(113, '9789791255189', 'Biografi Bacharuddin Jusuf Habibie', 'The Habibie Center Mandiri', 'A. Makmur Makka', '2013', 7, 3, 'SETELAH kembali jadi rakyat biasa, kesan orang dari luar mungkin memperkirakan BJ. Habibie sudah dapat menikmati hari tuanya, membaca, berkumpul selalu dengan keluarga, terlepas dari dunia luar dan tidak mau tahu apa yang terjadi dengan bangsa Indonesia. Ternyata semua itu keliru. B.J. Habibie masih seperti semula, perhatiannya kepada masalah kesejahteraan rakyat tidak berubah seperti ketika ia masih menjabat dalam pemerintahan. la tetap peduli pada lingkungannya. \\\"Bagaimana saya bisa tentram jika melihat sekeliling saya masih memprihatinkan\\\", katanya pada suatu ketika. Bedanya, kini ia tidak bisa terjun langsung ke lapangan atau urun rembuk dalam kebijakan-kebijakan yang dibuat pemerintah. Tetapi ia tetap masih seperti dulu, hatinya selalu mendidih jika melihat kesenjangan dalam masyarakat yang tidak kunjung selesai.  Obsesinya pada kemajuan sumber daya manusia yang terbarukan memiliki nilai tambah dan daya saing masih juga seperti dulu. Tetapi kini ia hanya bisa melampiaskan kegeramannya melalui orasi-orasi yang disampaikannya di depan publik atau di depan para tamu-tamu yang tidak henti-henti datang menemuinya. Mereka yang datang meminta masukan pada acara konferensi, seminar atau mereka yang mendambakan pemikiran B.J, Habibie untuk suatu masalah. Tamu-tamu itu dijadwalkan rutin seperti ketika B.J. Habibie masih dalam tugas-tugas pemerintahan. Bahkan tidak hanya pasif untuk mengemukakan gagasan kepada mereka yang datang menemuinya.'),
(114, '9786024810733', 'Matinya Kepakaran', 'Kepustakaan Populer Gramedia', 'Tom Nichols', '2018', 5, 4, 'Seberapa pentingkah vaksinasi? Benarkah Bumi itu datar? Apakah telur baik untuk dikonsumsi? Pada era informasi seperti sekarang, yang menjawab pertanyaan-pertanyaan semacam itu bukan hanya pakar, melainkan juga para penganut teori konspirasi, orang awam sok tahu, hingga pesohor yang menyesatkan.   Kadang, dalam rimba informasi masa kini, penjelasan pakar tidak didengar, sementara jawaban dari tokoh yang mempunyai banyak pengikut justru lebih dipercaya dan membahayakan banyak orang.'),
(115, '9786230001024', 'Mengamankan Laut - Tata Ruang dan Keamanan Maritim', 'Elex Media Komputindo', 'KEMENKO MARITIM', '2019', 4, 2, ''),
(116, '9786020383026', 'Buku Panduan Matematika Terapan', 'Gramedia Pustaka Utama', 'Triskaidekaman', '2018', 4, 4, 'Pertanyaan P-NP (sesuatu yang bisa diperhitungkan-sesuatu yang tidak bisa diperhitungkan) muncul setelah Prima didatangi oleh hantu yang mengajarinya cara berhitung dan berbagai teori matematika di dalam mimpi. Teka-teki itu semakin mengusiknya ketika ia bertemu Tarsa—si cerdas yang juga memiliki pertanyaan sama tentang P-NP. Namun, meski telah mencurahkan seluruh hidupnya, Prima tak juga mampu menemukan jawabannya. Tentu. Karena, siapa pula manusia di dunia ini yang bisa menjawab kapan ia akan dimatikan?'),
(118, '9786020638010', 'Ganjil Genap', 'Gramedia Pustaka Utama', 'Almira Bastari', '2020', 5, 5, 'Gimana rasanya diputusin setelah berpacaran selama tiga belas tahun? Hidup Gala yang mendadak jomblo semakin runyam ketika adiknya kebelet nikah! Gala bertekad pantang lajang menjelang umur kepala tiga. Bersama ketiga sahabatnya, Nandi, Sydney, dan Detira, strategi pencarian jodoh pun disusun. Darat, udara, bahkan laut “disisir” demi menemukan pria idaman. Akankah Gala berhasil menemukan pasangan untuk menggenapi hari-hari ganjilnya?'),
(119, '9786020638102', 'Dari Ekologi Manusia ke Ekologi Politik', 'Gramedia Pustaka Utama', 'Prof.Oekan S. Abdoellah, Ph.D.', '2020', 6, 3, 'Buku ini memaparkan dua cara pandang terhadap hubungan antara lingkungan hidup dan komunitas manusia, yakni ekologi manusia dan ekologi politik. Dengan menggabung ulasan tentang dua pendekatan sekaligus ke dalam satu buku, penulis berharap kepelikan pertalian antara lingkungan hidup dan komunitas manusia dapat terungkap. Cara pandang monolitik khas Cartesian, yang memisahkan antara alam dan manusia, yang telah menimbulkan pemisahan antara ilmu-ilmu alam dan ilmu-ilmu sosial, tampaknya sudah tidak lagi memadai saat ini. Di tengah-tengah krisis-krisis ekologis mendalam karena model pembangunan ekonomi yang juga monolitik, buku ini diharapkan dapat menjadi sarana kritik, baik terhadap ilmu alam yang buta politik maupun terhadap ilmu sosial kritis yang buta ilmu alam.'),
(120, '9786020634074', 'Quiet Impact: Tak Masalah Jadi Orang Introver', 'Gramedia Pustaka Utama', 'Sylvia Loehken', '2019', 6, 2, ''),
(121, '9786232161573', 'Sukses Tembus TPA SMP/MTS', 'Bhuana Ilmu Populer', 'Mohammad Jauhar, S.Pd.', '2019', 9, 23, 'Tes Potensi Akademik (TPA): Tes Kemampuan Bahasa Indonesia. Tes Kemampuan Matematika. Tes Kemampuan Bahasa Inggris. Tes Kemampuan Teknologi, Informasi & Komunikasi (TIK). Tes Kemampuan Ilmu Pengetahuan Sosial (IPS). Tes Kemampuan Ilmu Pengetahuan Alam (IPA)/Sains. Tes Psikologi (Psikotes). Tes Kepribadian. Terlengkap dengan: Tes Psikologi (Psikotes). Tes Kepribadian. Tip Lolos Tes Potensi Akademik (TPA) Trik Lolos TPA Strategi Lolos TPA Tip Lolos Tes Psikologi (Psikotes)'),
(122, '9786020633176', 'Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa', 'Gramedia Pustaka Utama', 'James Clear', '2019', 4, 2, ''),
(123, '9789792745436', 'Why Series: The Sea - Laut', 'Elex Media Komputindo', 'Yearimdang, Kwang Woong Lee', '2017', 3, 4, 'Serial WHY merupakan pengetahuan dasar yang dikemas dalam bentuk komik untuk anak-anak sekolah, guru, dan orangtua. Isi buku berwarna, 160 halaman, dan dipandu oleh karakter-karakter yang lucu sehingga memudahkan anak-anak mempelajarinya. WHY? THE SEA Laut yang luas dan biru memberi harapan baru bagi manusia untuk menempatinya. Memberikan hasrat bagi orang-orang untuk berwisata ke seluruh pelosok tanpa batas, karena kehidupan di laut bagaikan kampung halaman yang ditinggal ibu. Semua kehidupan berawal dari laut sejak ratusan ribu tahun yang lalu, dan berbagai jenis kehidupan ada di laut yang sangat mengagumkan.'),
(124, '9786020497518', 'Kekuatan Pikiran Bawah Sadar', 'Elex Media Komputindo', 'Yuan N. Yudistira', '2019', 5, 4, ''),
(125, '9786024411947', 'Buat Apa Beragama?: Renungan Memaknai Religiusitas Di Tengah Kemodernan', 'Mizan Publishing', 'Abdillah Toha', '2020', 2, 3, 'Buku ini adalah refleksi Abdillah Toha tentang berbagai aspek keberagamaan Islam.  Apakah cara beragama kita sudah sesuai dengan tujuan agama. Apakah keberagamaan kita menciptakan nilai tambah dalam kehidupan disini atau justru sebaliknya merusak. Bagaimana orang luar melihat wajah Islam saat ini? Siapa sebenarnya yang berhak menyebut dirinya ulama? Apakah agama harus dibela? Kalau ya, bagaimana cara membela agama? Bolehkah kita memvonis Muslim lain sebagai munafik, sesat, tidak beriman dsb? Apakah Islam harus selalu curiga kepada semua yang datang dari luar?  Buku ini mengajak pembaca untuk berpikir dan ikut merenung bagaimana seharusnya cara beragama yang pas dan bermanfaat untuk diri dan lingkungan kita serta umat manusia.'),
(126, '9786020298436', 'Seni Kepemimpinan Para Nabi', 'Elex Media Komputindo', 'Bachtiar Firdaus', '2016', 5, 4, 'Kualitas kepemimpinan menjadi salah satu indikatir penting maju tidaknya suatu bangsa. Membahas tentang kepemimpinan berarti kita harus menguraikaannya dalam konteks kekinian, tentang idealisme kepemimpinan menurut Islam.  Buku ini disusun dengan semgat belajar dan meneladani best practices dari para nabi terdahulu dalam memimpin dan membawa umatnya menuju jalan cahaya pada masa mereka. Mari kita contoh kepemimpinan para nabi terdahulu untuk memajukan bangsa dan negara. Insya Allah, kita akan menyongsong Indonesia yang lebih baik dan bermartabat.'),
(127, '9786020478241', 'Why? People - Thomas Alva Edison', 'Elex Media Komputindo', 'Yearimdang', '2018', 6, 2, 'Thomas Alva Edison memiliki rasa ingin tahu dan daya imajinasi yang tinggi sejak kecil, serta dianggap sebagai anak pembawa masalah karena sifatnya yang nakal dan ceroboh. Namun, ia tumbuh menjadi pemuda yang gigih dan penuh semangat menuntut ilmu meski tidak mengikuti sekolah formal. Ia berhasil menciptakan berbagai inovasi selama setengah abad berkat semangat dan usahanya yang tanpa henti, sehingga dapat memberikan kenyamanan dan kebahagiaan bagi banyak orang.'),
(128, '9786024812324', 'Perang Padri Di Sumatra Barat (1803-1838)', 'Kepustakaan Populer Gramedia', 'Muhamad Radjab', '2019', 1, 4, 'Politik identitas bukan perkara baru bagi bangsa ini. Di Minangkabau masa silam, terjadi perseteruan antara kaum adat pemeluk teguh tradisi matrilineal dengan kaum padri yang berkehendak menegakkan ajaran Islam yang murni. Kita mengenal peristiwa itu sebagai Perang Padri, berlangsung pada 1803-1838. Di tengah perang, kolonialisme hadir memanfaatkan perpecahan dua saudara itu. Namun, perang bukan semata tentang pemenang mengalahkan pecundang. Kolonialisme memantik kesadaran berbangsa kaum adat dan kaum padri. Perang Padri memang berujung kemenangan Belanda, tetapi juga menciptakan perubahan besar dalam struktur masyarakat Minangkabau. Buku Muhamad Radjab, Perang Padri di Sumatra Barat (1803-1838), merupakan telaah awal terhadap Perang Padri. Berbekal literatur yang memadai dan keterampilan jurnalistiknya, Radjab mengisahkan Perang Padri secara runtut dan mengalir, sejak awal mula, titik balik, hingga keadaan Minangkabau pascaperang. Melalui buku ini, Radjab mengajak kita menelusuri kampung-kampung, medan perang, hingga ruang-ruang perundingan selama peristiwa itu berlangsung. Buku ini kemudian mengilhami kajian-kajian termutakhir tentang Perang Padri dan dinamika masyarakat Minangkabau dari masa ke masa.'),
(129, '9789790993235 ', 'KAFE 3 IN 1 MATEMATIKA SMP KLS. IX', 'Erlangga', 'Sukino', '2018', 5, 24, ''),
(130, '9789790154520', 'IPA BIOLOGI SMP JL.3(KTSP)', 'Erlangga', 'Istamar Syamsuri', '2007', 6, 25, ''),
(131, '9789790153561', 'KIMIA SMP JL.1(KTSP)', 'Erlangga', 'Michael Purba', '2007', 2, 26, ''),
(132, '9786022987505', 'Matematika SMP/MTs Jilid 1A', 'Erlangga', 'M. Cholik Adinawan', '2016 ', 5, 26, ''),
(133, '9786022415862', 'MANDIRI MATEMATIKA SMP/MTS KLS.IX/K2013', 'Erlangga', 'Kurniawan', '2015', 6, 30, ''),
(134, '9786022989882', 'MAHIR BERBAHASA INDONESIA SMP/MTS KLS.VIII/K13N', 'Erlangga', 'Tim Edukatif', '2017', 4, 29, ''),
(135, '9786022541714', 'SPM MATEMATIKA SMP/REVISI', 'Erlangga', 'M. Cholik Adinawan', '2015', 4, 28, ''),
(136, '9786022987611', 'BRIGHT JL.1 - ENGLISH COURSE FOR JUNIOR HIGH SCHOOL/K13N', 'Erlangga', 'Nur Zaida', '2016', 5, 26, ''),
(137, '9786024340407', 'MANDIRI IPS TERPADU SMP/MTS KLS.VII/K13N', 'Erlangga', 'N. Suparno', '2016', 6, 24, ''),
(138, '9786024346973', 'ESPS IPA BIOLOGI SMP/MTS KLS.VII/K13N', 'Erlangga', 'Khristiyono', '2019', 8, 22, ''),
(139, '9786027596641', 'Seri Lulus SKU Pramuka Siaga Bantu', 'Esensi', 'Maman Sumanta', '2014', 6, 19, ''),
(140, '9786027596658', 'Seri Lulus SKU Pramuka Siaga Tata', 'Esensi', 'Maman Sumanta', '2014', 6, 11, ''),
(141, '9786027596665', 'Seri Lulus SKU Pramuka Siaga Mula', 'Esensi', 'Maman Sumanta', '2014', 8, 22, ''),
(142, '9786027596764', 'Seri Lulus SKU Pramuka : Penggalang Rakit', 'Esensi', 'Maman Sumanta', '2014', 2, 20, ''),
(143, '9786027596771', 'Seri Lulus SKU Pramuka : Penggalang Terap', 'Esensi', 'Maman Sumanta', '2014', 7, 17, ''),
(144, '9786027279315', 'Peci Miring: Novel Biografi Gus Dur', 'Javanica', 'Aguk Irawan MN', '2015', 1, 4, ''),
(145, '9789790731431', 'Mengenal lebih dekat tokoh sejarah : Ken Arok dan Raden Wijaya leluhur raja-raja Jawa = menurut Para', 'Multi Kreasi Satudelapan', 'Yusandi', '2019', 5, 2, ''),
(146, '9786028417303', 'Al-Jawabul Kafi : Solusi Qur\\\'ani Dalam Mengatasi Msalah Hati', 'Pustaka AL-Qowam ', 'Ibnu Qayyim AL-Jauziyah', '2016', 6, 3, 'Suatu hari dihadapkanlah kepada Ibnu Abbas seorang pemuda kurus kering hingga tampak seperti tulang berbalut kulit. Beliaupun bertanya, \\\"ada apa gerangan dengan pemuda ini ?\\\"  Orang-orang menjawab, \\\"Ia sedang dilanda isyq (mabuk cinta).\\\" Lantas Ibnu Abbas segera memohon perlindungan pada Allah dari isyq sepanjang umurnya.  Ishaq bin Ibrahim berkata :   \\\"Ruh orang-orang yang mencintai itu wangi nan lembut. Badan mereka tipis dan ringan. Hiburan mereka adalah persahabatan. Kata-kata mereka menghidupkan hati dan menambah kecerdasan akal. Kalau saja bukan karena cinta,tentu kenikmatan dunia ini tidak akan ada lagi.\\\"  Cinta, Sesuatu yang bermula dari hati. Apabila ia kelola dengan cara yang benar, tentunya akan mengantarkan pemiliknya menuju kebahagiaan. Namun bila yang terjadi adalah sebaliknya, tentu ia akan menyeret pemiliknya menuju kehancuran.  Al-Jawabul Kafi : Solusi mengatasi masalah hati Sebuah kitab fenomenal karya Imam Ibnu Qayyim al-Jauziyah. Seorang Ulama, Pakar masalah hati, Ahli Tafsir, ahli Hadits, dan sederet ilmu SyarI lainya yang tidak dapat di ragukan lagi kedalaman dan keluasan ilmunya. Seperti judulnya, buku ini akan memandu pembaca mengelola hati dengan lebih baik. Di lengkapi contoh-contoh berbagai permasalahan hati dan tentunya tak lupa solusi untuk mengobatinya.'),
(147, '9789790244207', 'Revolusi Belum Selesai', 'Serambi', 'Budi Setiyono & Bonnie Triyana', '2014', 6, 4, ''),
(148, '9786022912064', 'Saat-Saat Terakhir Bersama Soeharto', 'Bentang Pustaka', 'Emha Ainun Nadjib', '2016', 8, 2, ''),
(149, '9786237713394', 'Islam & Kebangsaan: Tauhid, Kemanusiaan dan Kewarganegaraan', 'Lentera Hati', 'M. Quraish Shihab', '2020', 9, 2, 'Pada abad ke-21, Islam dan kebangsaan masih jadi masalah penting. Ada yang menilai paham kebangsaan bertentangan dengan tauhid: Ketuhanan Yang Maha Esa.  Sebagian orang Islam berusaha menegakkan dr al-Islm (istilah yang tidak pernah ada dalam Al-Quran dan hadis) dan khilfah.  M. Quraish Shihab menjernihkan konsep ummah dan qawm yang diperbandingkan dengan konsep bangsa. Dia juga menilik sejarah lahirnya kebangsaan di Barat dan khususnya di Timur Tengah. M. Quraish Shihab mendapati bahwa Islam dan kebangsaan seiring sejalan dan tidak bertentangan.  Yang lebih penting dan menarik, buku ini menggambarkan bagaimana Nabi Muhammad saw. saat menghimpun manusia di Madinah menjadi satu umat dengan keragaman agama dan etnis. Itulah masyarakat madani, yang pantas disebut masyarakat terbuka atau masyarakat warga yang diterapkan pertama kali dalam sejarah manusia'),
(150, '9786020520155', 'Menyusuri Jejak Kisah 25 Para Nabi', 'Gramedia Pustaka Utama', 'Irma Irawati, Maya Lestari Gf', '2020', 6, 3, ''),
(151, '9786026380524', 'Bung Karno: Sang Nasionalis Sejati', 'Anak Hebat Indonesia', 'Usman Hadi', '2017', 6, 2, 'Soekarno sudah dikenal sebagai bapak bangsa dan pahlawan kemerdekaan. Kepiawaian beliau mempimpin bangsa ini sudah menjadi sesuatu yang diketahui orang banyak. Buku ini memberi banyak informasi yang mungkin belum diketahui kebanyakan orang. Rahasia mengenai bapak bangsa ini mungkin banyak ditutupi dan diselewengkan ketika rezim pasca Soekarno berkuasa. Kenalilah Sang Nasionalis Sejati dengan menyelami kisahnya di dalam buku ini.'),
(152, '9786022917458', 'Memburu Muhammad', 'Bentang Pustaka', 'Feby Indirani', '2020', 2, 3, '\\\"Mungkin bisa ada ratusan Muhammad baru di kelurahan ini saja, Bapak yakin ingin menemukan satu Muhammad?  Ada cara untuk membuatnya lebih mudah kah? Katanya ini jaman serba canggih, orang kuno seperti aku tidak mengerti! Siapa di sini yang bisa menggunakan benda terang bercahaya itu, yang bisa memberikan jawaban?\\\"   Kumpulan cerpen MEMBURU MUHAMMAD adalah yang kedua dari trilogi Islamisme Magis karya Feby Indirani, setelah BUKAN PERAWAN MARIA yang telah keliling berbagai kota di Indonesia, hingga mancanegara: Italia, Belanda, Jerman, Belgia, dan Inggris. Kumpulan cerita baru ini menggelitik, menyusup masuk ke saripati keberagamaan masa kini.  Aneka rupa tema dan cerita suara dari alam kematian yang menggemparkan kampung di Jakarta, Kyai yang hidup kembali setelah wafat, dilema bakso terenak di dunia, pelukis yang ingin melukis Tuhan, malaikat yang mencintai dengan pedih, negeri Tuantu yang dilanda mitos dan pandemi, juga seorang yang mengaku musuh Nabi menyandera petugas kelurahan. Jenaka, juga mengharukan.'),
(153, '9789790397712', 'Banjir Darah', 'AQWAM', 'Anab Afifi', '2020', 6, 2, 'Kisah Nyata Aksi PKI terhadap Kiai, Santri, dan Kaum Muslimin.'),
(154, '9786237284253', 'Buku Latihan Untuk Calon Penulis', 'Buku Mojok', 'Puthut EA', '2020', 6, 3, ''),
(155, '9789792745429', 'Why? The Human Body - Tubuh Kita', 'Elex Media Komputindo', 'Lee Kwang-Woong, Sun Bong Heo', '2018', 9, 5, ''),
(156, '9786024810016', 'Evolusi Dari Teori ke Fakta', 'KPG', 'Ernst Mayr', '2019', 8, 5, '\\\"DARI mana aku berasal?\\\" Manusia berusaha menjawab pertanyaan itu sejak awal peradaban. Agama dan filsafat mengajukan berbagai jawaban; sains menawarkan jawaban objektif dan teruji mengenai asal-usul manusia dan keragaman makhluk hidup melalui evolusi.  Sejak digagas Charles Darwin pada 1859, evolusi telah dikukuhkan statusnya sebagai fakta dan bukan hanya teori. Evolusi menjadi inti ilmu biologi berikut satu-satunya penjelasan ilmiah untuk kemunculan keragaman makhluk hidup. Penjelasan paling otoritatif atas evolusi bisa didapat dari seorang yang ikut terlibat membangun teori evolusi modern, Ernst Mayr. Buku ini tuntas menjelaskan segala seluk-beluk evolusi dengan jernih. Mayr memaparkan bukti-bukti evolusi, cara kerja evolusi, konsep yang mendasari teori evolusi, juga menjawab berbagai keraguan terhadap evolusi. Siapa pun yang ingin tahu tentang evolusi, baik setuju, menentang, maupun ragu-ragu, akan paham evolusi dengan membaca buku ini.'),
(157, '9786020031484', 'Why? Establishment and Advancement of Europe', 'Elex Media Komputindo', 'Grimmnamu', '2012', 5, 11, 'Kalau kalian ke Eropa, negara mana yang ingin kalian kunjungi? Inggris, Perancis, Jerman, Rusia, dan masih banyak lagi, `kan?  Namun, kalian tidak tahu bagaimana negara-negara ini muncul dan berkembang hingga seperti sekarang. Dalam \\\"Why?  Pendirian dan Perkembangan Eropa\\\" akan dibahas secara lengkap tentang pergerakan bangsa Jerman yang berperan dalam pembentukan Eropa, agama Kristen dan Feodalisme yang merupakan 2 tonggak besar Eropa abad Pertengahan, sampai pada Perang Salib Ayo pergilah menjelajahi Eropa abad Pertengahan bersama dengan Mire dan Ami.'),
(158, '9786230021404', 'Why? Parasite - Parasit', 'Elex Media Komputindo', 'Yearimdang', '2020', 1, 10, 'Apa yang kalian pikirkan saat mendengar kata parasit? Apakah kalian memikirkan makhluk menjijikkan yang menggeliat seperti cacing atau makhluk kotor yang ditemukan di kotoran manusia? Sebenarnya, parasit ada yang berbentuk seperti pita sepanjang 10 meter, kecil hingga tidak bisa dilihat dengan mata telanjang, berbentuk seperti cambuk atau bola rugbi, dan lain-lain. Parasit memiliki berbagai macam bentuk, ukuran, dan ciri khas. Ada yang sampai dapat mengancam nyawa, tetapi ada pula keberadaannya sama sekali tidak terasa padahal dia ada. Dunia ini penuh dengan parasit, dan kita hidup dikelilingi oleh mereka. Ayo cari tahu jenis-jenis, bahaya, dan manfaat parasit bagi kehidupan kita bersama Omji dan Komji!'),
(159, '9786024242244', 'Kosmos', 'KPG', 'Carl Sagan', '2016', 4, 5, 'KOSMOS adalah salah satu buku sains paling laris sepanjang sejarah. Dengan prosa jernih memukau, ahli astronomi Carl Sagan mengungkapkan alam semesta yang dihuni suatu bentuk kehidupan yang baru saja mulai berpetualang menjelajahi luasnya antariksa.  Kosmos menelusuri empat belas miliar evolusi kosmik yang telah mengubah zat menjadi kesadaran, asal-usul kehidupan, misi wahana antariksa, rupa beraneka planet dan bintang, alur hidup tata surya dan galaksi, sampai awal dan akhir alam semesta itu sendiri. Sejak terbit pertama kali, buku ini telah membantu jutaan orang memahami alam semesta nan luas yang telah diungkap sains, menunjukkan betapa jauhnya kini umat manusia bisa memandang, dan betapa banyak hal yang masih menunggu ditemukan di alam semesta kita.'),
(160, '9786020019529', 'Permulaan Sains Modern', 'Elex Media Komputindo', 'Go Yun Gon - Hyeon Jong Wo', '2012', 5, 3, '100% Science adalah kumpulan cerita yang sangat menarik. Ilmu pengetahuan yang muncul dari sebuah kondisi, yang kemudian terbentuk proses untuk menjadikannya sebuah sains. Kenapa ilmu pengetahuan itu sangat dibutuhkan, bagaimana juga menjelaskan proses yang cukup panjang supaya bisa mudah dipahami.  Nilai lebih dari buku ini adalah, isi ceritanya yang sangat \\\"berilmu pengetahuan\\\". Sains yang ada di dalamnya disampaikan dengan cerita yang menarik. Bacaan seperti ini akan memunculkan pemahaman yang dapat tersimpan cukup lama dalam ingatan.'),
(161, '9789799104113', 'Selidik National Geographic Wabah', 'KPG', 'Carles Piddock', '2012', 4, 1, 'Perjalanan dengan moda transportasi udara telah merevolusi kehidupan di Bumi. Kita sering mendengar dunia digambarkan sebagai desa global, dimana para penjelajah dengan mudah berpindah dari satu benua ke benua lain. Sayangnya, penyakit menular pun mudah menyebar flu burung dan SARS, Ebola dan AIDS, jenis tuberkulosis ganas. Para ilmuwan di seluruh dunia memfokuskan penelitian me-reka pada penanganan penyakit-penyakit tersebut dan ancaman lain bagi kesehatan masyarakat. Kita akan melihat orang-orang di garis depan dalam peperangan melawan penyakit menular dan bagaimana teknologi modern memberi mereka senjata baru dalam perjuangan penting itu.  Misi National Geographic adalah menjelajahi dunia dan semua yang ada di dalamnya, dan membawa penemuan serta pengetahuan untuk sebanyak mungkin orang. Selidik National Geographic memperkenalkan generasi muda pada teknik penyelidikan mutakhir, penemuan paling aktual, dan bagaimana penemuan-penemuan itu membawa manfaat bagi dunia.'),
(162, '9789799104410', 'Selidik National Geographic Misteri Medis', 'KPG', 'Scott Auden', '2012', 6, 2, 'Bagaimana seseorang menjadi sakit? Mengapa orang terserang penyakit ganjil dan mengerikan? Peneliti medis kini mempelajari berbagai penyakit langka. Dengan rasa ingin tahu dan kreativitas ilmiah, mereka berjuang menemukan penyebab dan pengobatan untuk Progeria, penyakit Morgellons, penyakit Creutzfeldt-Jakob, dan banyak lagi. Mereka menggunakan teknologi paling modern untuk memberi harapan pada mereka yang penyakitnya dikatakan sebagai misteri medis.  Misi National Geographic adalah menjelajahi dunia dan semua yang ada di dalamnya, dan membawa penemuan serta pengetahuan untuk sebanyak mungkin orang. Selidik National Geographic memperkenalkan generasi muda pada teknik penyelidikan mutakhir, penemuan paling aktual, dan bagaimana penemuan-penemuan itu membawa manfaat bagi dunia.'),
(163, '9789792292121', 'Sejarah Singkat Waktu - A Brief History of Time', 'Gramedia Pustaka Utama', 'Stephen Hawking', '2013', 7, 3, 'Inilah salah satu buku sains terpenting yang ditulis oleh satu di antara para ilmuwan besar zaman kita, Stephen Hawking. Dalam buku ini Hawking membahas pertanyaan-pertanyaan besar seperti: Bagaimana alam semesta bermuladan apa yang memulainya? Apakah waktu itu, dan apakah ia selalu bergerak maju? Adakah ujung alam semesta, dalam ruang maupun waktu? Adakah dimensi lain dalam alam semesta? Apa yang terjadi ketika alam semesta berakhir?  Lewat penulisan yang bisa dimengerti semua orang, A Brief History of Time mengajak kita menjelajahi dunia ajaib lubang hitam dan quark, antizat dan \\\"panah waktu\\\", ledakan besar dan peran Tuhan di alam semesta beserta segala kemungkinan yang luar biasa dan tak terduga. Dengan penggambaran yang menarik dan menggugah imajinasi, Stephen Hawking membawa kita makin dekat ke rahasia pamungkas penciptaan alam semesta.'),
(164, '9789792264395', 'The Grand Design, Rancang Agung', 'Gramedia Pustaka Utama', 'Stephen Hawking', '2017', 8, 4, 'Alam semesta menyimpan keajaiban dan misteri yang sangat memesona yang sampai kini belum tersingkap seluruhnya oleh ilmu fisika. Keajaiban itu antara lain adalah planet-planet yang selalu beredar di garis edarnya, tidak pernah melenceng sedikit pun, dan tidak pernah bertabrakan satu sama lain. Bumi adalah keajaiban yang lain:  Bumi berada di zona jarak yang begitu tepat terhadap Matahari sehingga iklim Bumi sangat sesuai bagi kehidupan manusia dan makhluk-makhluk lainnya. Keagungan rancangan seluruh alam semesta selalu membangkitkan keingintahuan selama berabad-abad: Kapan dan bagaimana alam semesta bermula? Mengapa kita ada di dunia ini? Bagaimana campur tangan Tuhan dalam rancang agung alam semesta?  Dalam buku ini, Stephen Hawking dan Leonard Mlodinow menyajikan pemikiran sains terkini mengenai misteri alam semesta, dalam bahasa nonteknis yang cemerlang sekaligus sederhana. Buku ini adalah buku pedoman singkat, jelas, dan menyentak, yang menyajikan penemuanpenemuan yang akan mengubah pemahaman sekaligus mengusik keyakinan; buku ini mencerahkan dan menohok. Buku yang tiada duanya'),
(165, '9786020300061', 'My Brief History: Sejarah Singkat Saya', 'Gramedia Pustaka Utama', 'Stephen Hawking', '2014', 4, 4, 'My Brief History menceritakan perjalanan luar biasa Stephen Hawking, dari masa kecilnya di London sesudah Perang Dunia II sampai menjadi pesohor yang terkenal di seluruh dunia. Dilengkapi foto-foto yang jarang terlihat, buku singkat, kocak, dan cerdas ini memperkenalkan pembaca dengan seorang Hawking yang belum tampak di buku-buku terdahulu: anak sekolah yang ingin tahu dan dijuluki Einstein oleh teman-temannya; orang yang suka bercanda dan pernah bertaruh dengan temannya perihal keberadaan lubang hitam; serta suami dan ayah muda yang berjuang untuk mendapat tempat di dunia akademia.  Dengan tulisannya yang khas, rendah hati dan penuh humor, Hawking mengungkap mengenai tantangan yang dia hadapi sesudah didiagnosis mengidap penyakit neuron motor pada umur dua puluh satu. Dia menelusuri perkembangannya sebagai pemikir untuk menjelaskan bagaimana kemungkinan mati muda mendorong dia meraih banyak terobosan intelektual, dan berbicara mengenai kelahiran mahakaryanya A Brief History of Timesalah satu buku terbesar pada abad keduapuluh.  Jernih, akrab, dan bijak, My Brief History membuka jendela bagi kita untuk menengok jagat raya pribadi Hawking.'),
(166, '9786020004495', 'Aku Ingin Tahu Sains - Air & Hidrosfer', 'Erlangga', 'Wong Comic', '2011', 4, 6, 'Air merupakan salah satu sumber energi bagi kehidupan makhluk hidup. Air juga bagian dari ekosistem makhluk hidup. Sedangkan Hidrosfer adalah lapisan air yang ada di Bumi.  Lalu apa saja bagian Hidrosfer tersebut? Apa manfaat mengetahuinya?'),
(167, '9789797803926', 'Rangkuman Fisika SMP', 'GagasMedia ', 'Kinkin suartini, M.Pd', '2010', 2, 5, 'Masih nganggep fisika itu teror? Kamu pasti belum nemuin buku ini!  Di buku ini, kamu akan diajak belajar sambil bermain-main dengan fisika. Penjelasannya simpel nggak bikin ribet, ada tip seru dan trik cerdas yang bikin kamu gampang nyelesaiin soal-soal. Terus, ada tanya-jawab soalnya juga loh, ngebantu banget kalo kamu mau ujian.  Nggak cuma itu, buku ini dilengkapi juga dengan percobaan-percobaan yang bisa kamu lakuin sendiri di rumah. Ada pula artikel asyik tentang fisika dan tokoh-tokohnya, bikin kamu makin kecanduuuan sama fisika.  So, tunggu apalagi, yuk jadi si Ahli Fisika sekarang juga!'),
(168, '9797805522321', 'Superlengkap Fisika SMP', 'GagasMedia ', 'Robiatul Adawiyah, S.Si', '2012', 5, 6, '+ Kamu tahu kenapa tukang sate selalu mengipas-ngipas saat membakar sate? - Saat sate dikipas dari atas, aliran udara di atas sate menjadi lebih cepat. Itu membuat tekanan udara di atas sate lebih rendah daripada di bawah sehingga sate pun jadi lebih cepat matang. Itu merupakan salah satu proses Fisika dalam kehidupan sehari-hari kita.   Fisika memang seru!  Apalagi kalau mempelajarinya pakai buku Superlengkap Fisika SMP. Semua materi Fisika SMP yang biasanya bikin kamu tidak bisa tidur, dikupas tuntas dengan bahasa yang gampang dimengerti.  Ada Kotak Antilupa! yang berisi materi-materi penting sehingga kamu gampang ingat saat ujian. Latihan soalnya superbanyak yang dilengkapi dengan cara cepat dan pembahasan. Jadi, jangan mau ketinggalan serunya Fisika SMP!'),
(169, '9789797803247', 'Rangkuman Biologi SMP', 'GagasMedia ', 'Amelia Piliang & Dida', '2009', 5, 3, 'Sekarang, udah nggak perlu jidat keriting buat ngerti Biologi! Buku ini akan jadi teman terbaik kamu di meja belajar. Bukan hanya karena penjelasannya simpel dan seru, bahasanya juga ringan banget. Di buku ini, juga ada singkatan-singkatan yang mempermudah kamu mengingat semua materi yang diajarkan guru biologi-mu di sekolah. Selamat tinggal, deh, \\\"Biologi Susah\\\". Say hello buat \\\"Biologi Asyik\\\"! Lewat buku ini, kamu akan belajar dengan seru bermacam hal. Kegiatan Sains Makhluk Hidup di Sekitar Kamu Ekosistem dan Interaksinya Menjaga Lingkungan Pertumbuhan dan Perkembangan Sistem Gerak Sistem Pencernaan Sistem Pernapasan Sistem Sirkulasi Struktur dan Fungsi Jaringan Tumbuhan Gerak Tumbuhan Sistem Ekskresi Sistem Reproduksi Sistem Koordinasi Kelangsungan Hidup Organisme Pewarisan Sifat Bioteknologi'),
(170, '9789799110893', 'Metode Belajar Kilat Biologi SMP', 'Quantum Ilmu', 'Maria Elisabeth Ek, S.Si', '2012', 1, 10, ''),
(171, '9786020385044', 'Bagaimana Demokrasi Mati', 'Gramedia Pustaka Utama', 'Steven Levitsky, Daniel Ziblatt', '2019', 6, 4, ''),
(172, '9786024410179', 'Mengenal Filsafat Islam', 'Mizan Publishing', 'Haidar Bagir', '2020', 8, 5, ''),
(173, '9786020648057', 'Empedu Tanah', 'Gramedia Pustaka Utama', 'Inggit Putria Marga', '2020', 1, 1, ''),
(174, '9786023940431', 'Ensiklopedia Dunia Satwa: Katak Dan Hewan Melata', 'Bhuana Ilmu Populer', 'DK', '2015', 4, 7, 'Seri Ensiklopedia Dunia Satwa adalah buku pintar yang berisi pengetahuan tentang dunia binatang. Habitat, makanan, cara hidup, keunikan, peran dalam lingkungan, dan manfaat hewan bagi manusia diuraikan dalam buku ini.  Ensiklopedia Dunia Satwa: Katak dan Hewan Melata membahas tentang amfibi dan aneka hewan melata yang menakjubkan dan banyak sekali jenisnya di seluruh dunia. Beberapa di antaranya adalah katak Goliath yang merupakan katak terbesar di dunia, tuatara dari Selandia Baru, salamander raksasa di China dan Jepang, serta katak panah stroberi dari Amerika Tengah yang sangat beracun.'),
(175, '9786022523376', 'Ensiklopedia Mini Hewan Indonesia', 'Erlangga', 'TIM EFK', '2015', 2, 4, 'Ensiklopedia Mini Hewan Indonesia memaparkan pengetahuan tentang hewan-hewan endemik Indonesia dengan lengkap dan terperinci. Disarikan dari hasil penelitian para ahli biologi, ensiklopedia ini menampilkan lebih dari 50 jenis hewan yang hidup di berbagai kawasan di Indonesia. Pembaca juga dapat mempelajari perilaku, cara bertahan hidup, maupun fakta-fakta unik hewan-hewan di alam liar serta mengenal hewan-hewan yang terancam punah.'),
(176, '9789794338698', 'Ensiklopedia Tokoh Muslim', 'Mizan Publishing', 'Ahmad Rofi Usmani', '2015', 7, 7, 'Perjalanan sejarah Islam banyak diwarnai oleh sepak terjang sosok manusia-manusia berpengaruh yang memberi kita semesta inspirasi. Saat mendengar namanya, kita jadi ingin tahu dan belajar tentang apa dan bagaimana mereka bagi kehidupan.     Ensiklopedia ini menghadirkan deretan sosok tokoh-tokoh Muslim berpengaruh yang pernah ada dalam sejarah. Kisah manusia teragung, Muhammad Saw.; Muhammad Ali, sang Legenda Tinju sepanjang masa; atau Soekarno, sang Proklamator; disajikan lengkap secara alfabetis dari A sampai Z, untuk semakin memudahkan Anda membaca ensiklopedia ini.'),
(177, '9789797098564', 'Ensiklopedia Pulau-pulau Kecil Nusantara: Raja Ampat', 'Penerbit Buku Kompas', 'Tim Kementrian Kelautan dan Perikanan', '2014', 4, 0, '');

--
-- Triggers `buku`
--
DELIMITER $$
CREATE TRIGGER `buku_before_delete` BEFORE DELETE ON `buku` FOR EACH ROW BEGIN

DELETE FROM peminjaman WHERE buku_id = OLD.buku_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `nama_member` varchar(100) DEFAULT NULL,
  `kelas_member` varchar(10) DEFAULT NULL,
  `kelamin_member` varchar(50) NOT NULL,
  `agama_member` varchar(50) DEFAULT NULL,
  `nisn_member` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `nama_member`, `kelas_member`, `kelamin_member`, `agama_member`, `nisn_member`) VALUES
(10, 'Amelia', 'VII A', 'Laki-laki', 'Islam', '0072115543'),
(11, 'Arfan Maulana', 'VII A', 'Laki-laki', 'Islam', '0069848041'),
(12, 'Arhdya Destian Eliazer', 'VII A', 'Laki-laki', 'Kristen', '0088265175'),
(13, 'Arka Rijal Pangestu', 'VII A', 'Laki-laki', 'Islam', '0088035853'),
(14, 'Deniar Kevin Anggareza', 'VII A', 'Laki-laki', 'Islam', '0072145767'),
(15, 'Erlangga Gusti Wardana', 'VII A', 'Laki-laki', 'Islam', '0086186484'),
(16, 'Fadhilah Rizqi Santoso', 'VII A', 'Laki-laki', 'Islam', '0088629776'),
(17, 'Fathan Albahi Arjuanda', 'VII A', 'Laki-laki', 'Islam', '0088301774'),
(18, 'Fauzan Lutfi Indrayandi', 'VII A', 'Laki-laki', 'Islam', '0083864104'),
(19, 'Felik Setyawan Wijaya', 'VII A', 'Laki-laki', 'Kristen', '0079875502'),
(20, 'Firman Adhiyaksa', 'VII A', 'Laki-laki', 'Islam', '0082668755'),
(21, 'Hillary Dwi Tara', 'VII A', 'Perempuan', 'Islam', '0076511473'),
(22, 'Ibnu Dzul Izza', 'VII A', 'Laki-laki', 'Islam', '0071364715'),
(23, 'Keyza Thalita Sabrina', 'VII A', 'Perempuan', 'Islam', '3072758897'),
(24, 'Kholisatul Mudasaroh ', 'VII A', 'Perempuan', 'Islam', '0076117568'),
(25, 'Muhammad Ahfas Akbar', 'VII A', 'Laki-laki', 'Islam', '0072360824'),
(26, 'Muhammad Ricky Kurniawan', 'VII A', 'Laki-laki', 'Islam', '0084378548'),
(27, 'Nararya Septyasa Ramadhani', 'VII A', 'Perempuan', 'Islam', '0077096036'),
(28, 'Puji Danis Laksmana', 'VII A', 'Laki-laki', 'Islam', '0088773137'),
(29, 'Radit Kurniawan', 'VII A', 'Laki-laki', 'Islam', '0071542250'),
(30, 'Raditya Al Hafidh', 'VII A', 'Laki-laki', 'Islam', '0075968161'),
(31, 'Rangga Aji Saputra', 'VII A', 'Laki-laki', 'Islam', '0076574947'),
(32, 'Rosyikhan Alby', 'VII A', 'Laki-laki', 'Islam', '3081692399'),
(33, 'Salsa Novitasari', 'VII A', 'Perempuan', 'Islam', '0071993838'),
(34, 'Sazya Olivia', 'VII A', 'Perempuan', 'Islam', '0072369433'),
(35, 'Septiano Harmin Delisandro Todo Bagur', 'VII A', 'Laki-laki', 'Katolik', '0076250811'),
(36, 'Shandy Putra Ardian', 'VII A', 'Laki-laki', 'Islam', '0081210128'),
(37, 'Varel Danu Pamungkas', 'VII A', 'Laki-laki', 'Islam', '0074030496'),
(38, 'Alfian Zaidan Syarif Syahputra', 'VII B', 'Laki-laki', 'Islam', '0077487496'),
(39, 'Alif Fajar Agustino Putro', 'VII B', 'Laki-laki', 'Islam', '0074186424'),
(40, 'Ana Meilina ', 'VII B', 'Perempuan', 'Islam', '0085198914'),
(41, 'Ardiansyah Edho Putera Purnomo', 'VII B', 'Laki-laki', 'Islam', '0077397483'),
(42, 'Arya Bima Saputra', 'VII B', 'Laki-laki', 'Islam', '0088798876'),
(43, 'Asgaf Luygi', 'VII B', 'Laki-laki', 'Islam', '0072535062'),
(44, 'Benny Ilham Ramdhani Saputra', 'VII B', 'Laki-laki', 'Islam', '0075941208'),
(45, 'Clariza Putri Az Zahra', 'VII B', 'Perempuan', 'Islam', '0079742217'),
(46, 'Daris Judith Pratama', 'VII B', 'Laki-laki', 'Islam', '0084134523'),
(47, 'Dicka Putra Ramdhani', 'VII B', 'Laki-laki', 'Islam', '0073463083'),
(48, 'Dicky Surya Pratama', 'VII B', 'Laki-laki', 'Islam', '0063674980'),
(49, 'Ervin Perdana Saputra', 'VII B', 'Laki-laki', 'Islam', '0077407647'),
(50, 'Fairus', 'VII B', 'Laki-laki', 'Islam', '0083931997'),
(51, 'Farel Ady Setyanto', 'VII B', 'Laki-laki', 'Islam', '0076036187'),
(52, 'Febry Abdul Setiawan', 'VII B', 'Laki-laki', 'Islam', '0084073210'),
(53, 'Gilang Maulana', 'VII B', 'Laki-laki', 'Islam', '0078150035'),
(54, 'Ibrahim Aqiya Renhad', 'VII B', 'Laki-laki', 'Islam', '0089577502'),
(55, 'Meiva Dwi Maharani', 'VII B', 'Perempuan', 'Islam', '0079002798'),
(56, 'Muhammad Bagus Riszaki', 'VII B', 'Laki-laki', 'Islam', '0074283258'),
(57, 'Muhammad Daffi Saputra', 'VII B', 'Laki-laki', 'Islam', '0074328282'),
(58, 'Mutiara Sukma Nur Anisa', 'VII B', 'Perempuan', 'Islam', '0071970336'),
(59, 'Nacha Aulia Syifa', 'VII B', 'Perempuan', 'Islam', '0084149037'),
(60, 'Najwa Puteri Zhafira Hayyan', 'VII B', 'Perempuan', 'Islam', '0078920448'),
(61, 'Nuri Anzil Hida', 'VII B', 'Perempuan', 'Islam', '0076687761'),
(62, 'Radhitya Pramana Putra', 'VII B', 'Laki-laki', 'Islam', '0075341302'),
(63, 'Risky Bayu Prakoso', 'VII B', 'Laki-laki', 'Islam', '0072411582'),
(64, 'Rizki Michael Ampriansyah', 'VII B', 'Laki-laki', 'Islam', '0061662864'),
(65, 'Syahrul Aji Saputro', 'VII B', 'Laki-laki', 'Islam', '0064848682'),
(66, 'Wahyu Cahyo Utomo', 'VII B', 'Laki-laki', 'Islam', '0073958731'),
(67, 'Ziko Eren Akbar Yofansyah', 'VII B', 'Laki-laki', 'Islam', '0063955457'),
(68, 'Adi Aza Hanafi', 'VII C', 'Laki-laki', 'Islam', '0077804560'),
(69, 'Alvin Appril Ryanto', 'VII C', 'Laki-laki', 'Islam', '0065658868'),
(70, 'Aulia Ramadhani ', 'VII C', 'Perempuan', 'Islam', '0064120067'),
(71, 'Balqis Atika Zulfa', 'VII C', 'Perempuan', 'Islam', '0079543276'),
(72, 'Bramistan Andro Pratama', 'VII C', 'Laki-laki', 'Islam', '0082696065'),
(73, 'Della Rahmadhani', 'VII C', 'Perempuan', 'Islam', '0078854504'),
(74, 'Deny Dwi Bagus Setiawan', 'VII C', 'Laki-laki', 'Islam', '0088491753'),
(75, 'Devy Naysilla Putri', 'VII C', 'Perempuan', 'Islam', '0072236852'),
(76, 'Dinda Salsabila', 'VII C', 'Perempuan', 'Islam', '0074201616'),
(77, 'Elqi Sabitul Wahid', 'VII C', 'Laki-laki', 'Islam', '0086772583'),
(78, 'Fani Anastasia', 'VII C', 'Perempuan', 'Islam', '0078269087'),
(79, 'Gading Wulung Wijanarko', 'VII C', 'Laki-laki', 'Islam', '0071661022'),
(80, 'Ghanis Ananda Putra', 'VII C', 'Laki-laki', 'Islam', '0083660817'),
(81, 'Gita Maulida Kirani', 'VII C', 'Perempuan', 'Islam', '0088890722'),
(82, 'Ivana Shava Mada', 'VII C', 'Perempuan', 'Islam', '0087166406'),
(83, 'Kezia Hertya Cahyono', 'VII C', 'Perempuan', 'Islam', '0089747991'),
(84, 'Muhammad Bakhtiar Rifki', 'VII C', 'Laki-laki', 'Islam', '0071696689'),
(85, 'Muhammad Danu Hermawan', 'VII C', 'Laki-laki', 'Islam', '0073995046'),
(86, 'Pungki Cinta Aryani', 'VII C', 'Perempuan', 'Islam', '0084286657'),
(87, 'Putut Bintang Hermawan', 'VII C', 'Laki-laki', 'Islam', '0067142821'),
(88, 'Raissa Hilmy Abyan', 'VII C', 'Laki-laki', 'Islam', '0083282573'),
(89, 'Revaldy Julio Syahputra', 'VII C', 'Laki-laki', 'Islam', '0075848226'),
(90, 'Riska Oktafiani', 'VII C', 'Perempuan', 'Islam', '0077257506'),
(91, 'Safira Wulan Sari', 'VII C', 'Perempuan', 'Islam', '0074386616'),
(92, 'Shanika Putri Juniati ', 'VII C', 'Perempuan', 'Islam', '0079563199'),
(93, 'Suryata Aftowi Candra', 'VII C', 'Laki-laki', 'Islam', '0072512831'),
(94, 'Yusuf Habibie', 'VII C', 'Laki-laki', 'Islam', '0076514916'),
(95, 'Zirka Zaid Massari', 'VII C', 'Laki-laki', 'Islam', '0084279297'),
(96, 'Adella Haifazzahra', 'VIII A', 'Perempuan', 'Islam', '0068757004'),
(97, 'Adhitya Fajar  Maulana', 'VIII A', 'Laki-laki', 'Islam', '0069358152'),
(98, 'Alvin Evan Fitriansyach', 'VIII A', 'Laki-laki', 'Islam', '0061297244'),
(99, 'Aulia Mega Cahyani', 'VIII A', 'Perempuan', 'Islam', '0075219797'),
(100, 'Bagus Randi Sugiarto', 'VIII A', 'Laki-laki', 'Islam', '0056058964'),
(101, 'Bella Citra Lestari', 'VIII A', 'Perempuan', 'Islam', '0073272074'),
(102, 'Cantika Nur Saputri', 'VIII A', 'Perempuan', 'Islam', '0072152509'),
(103, 'Ferdy Kristian Bachtiar', 'VIII A', 'Laki-laki', 'Islam', '0059488777'),
(104, 'Galang Ryan Pratama', 'VIII A', 'Laki-laki', 'Islam', '0075239193'),
(105, 'Jehan Lintang Aulya', 'VIII A', 'Perempuan', 'Islam', '0043121052'),
(106, 'Jingga Faradisa', 'VIII A', 'Perempuan', 'Islam', '0078136355'),
(107, 'Kheysea Azalia Permata Setiawan', 'VIII A', 'Perempuan', 'Islam', '0072518422'),
(108, 'Meirilia Zahra Eka Putri', 'VIII A', 'Perempuan', 'Islam', '0078667956'),
(109, 'Mohammad Hafidz Furqon', 'VIII A', 'Laki-laki', 'Islam', '0073254251'),
(110, 'Muhamad Rizky', 'VIII A', 'Laki-laki', 'Islam', '0062207647'),
(111, 'Muhammad Alif Maulana Iqbal', 'VIII A', 'Laki-laki', 'Islam', '0078458761'),
(112, 'Muhammad Ghozi Al Ghifari', 'VIII A', 'Laki-laki', 'Islam', '0075725600'),
(113, 'Muhammad Yusuf Arjuna', 'VIII A', 'Laki-laki', 'Islam', '0074982954'),
(114, 'Nabila Febrianti', 'VIII A', 'Perempuan', 'Islam', '0076408530'),
(115, 'Puri Rahayu', 'VIII A', 'Perempuan', 'Islam', '0078877822'),
(116, 'Radithya Putra Pratama', 'VIII A', 'Laki-laki', 'Islam', '0065144176'),
(117, 'Refly Hasya Machnun', 'VIII A', 'Laki-laki', 'Islam', '0074545550'),
(118, 'Ridwan Abimanyu Widhiatmojo', 'VIII A', 'Laki-laki', 'Islam', '0068726276'),
(119, 'Rizky Sarkia Putri', 'VIII A', 'Perempuan', 'Islam', '0069360643'),
(120, 'Triska Cantika Dewi', 'VIII A', 'Perempuan', 'Islam', '0074863838'),
(121, 'Vino Pratama Susilo', 'VIII A', 'Laki-laki', 'Islam', '0073089652'),
(122, 'Yusuf Gibran', 'VIII A', 'Laki-laki', 'Islam', '0057700659'),
(123, 'A\\\'an Sajiwo', 'VIII B', 'Laki-laki', 'Islam', '0086671497'),
(124, 'Abdur Rahman Wahid Sudrajat', 'VIII B', 'Laki-laki', 'Islam', '0063771161'),
(125, 'Ahmad Kafabik', 'VIII B', 'Laki-laki', 'Islam', '0079094172'),
(126, 'Dafa Firdaus', 'VIII B', 'Laki-laki', 'Islam', '0066462343'),
(127, 'Dhienda Ayudya Firdaus Putri', 'VIII B', 'Perempuan', 'Islam', '0063125906'),
(128, 'Dion Saputra', 'VIII B', 'Laki-laki', 'Islam', '0061694684'),
(129, 'Eka Dessy Susilowati', 'VIII B', 'Perempuan', 'Islam', '0055533314'),
(130, 'Fahri Oktaviano Ramadhan', 'VIII B', 'Laki-laki', 'Islam', '0066742405'),
(131, 'Farel Firmansyah', 'VIII B', 'Laki-laki', 'Islam', '0073628911'),
(132, 'Ferdian Maulana', 'VIII B', 'Laki-laki', 'Islam', '0066245105'),
(133, 'Fery Teguh Saputra', 'VIII B', 'Laki-laki', 'Islam', '0067878944'),
(134, 'Friska Anisa Putri', 'VIII B', 'Perempuan', 'Islam', '0063501350'),
(135, 'Galang Enrico Noveilo', 'VIII B', 'Laki-laki', 'Islam', '0068936021'),
(136, 'Ilham Virginia Putra', 'VIII B', 'Laki-laki', 'Islam', '0067847952'),
(137, 'Kelvin Budi Wijaya', 'VIII B', 'Laki-laki', 'Islam', '0072885316'),
(138, 'Mahessa Firansyah', 'VIII B', 'Laki-laki', 'Islam', '0063414004'),
(139, 'Mahessa Firansyah', 'VIII B', 'Laki-laki', 'Islam', '0063414004'),
(140, 'Muhammad Khalfan', 'VIII B', 'Laki-laki', 'Islam', '0079182640'),
(141, 'Nabila Ayu Maharani', 'VIII B', 'Perempuan', 'Islam', '0067719367'),
(142, 'Nadya Cahya Saputri', 'VIII B', 'Perempuan', 'Islam', '0062556848'),
(143, 'Nino Saputra', 'VIII B', 'Laki-laki', 'Islam', '0061302373'),
(144, 'Novita Dwi Fitriyanti', 'VIII B', 'Perempuan', 'Islam', '0066380613'),
(146, 'Pungky Akmal Yassin', 'VIII B', 'Laki-laki', 'Islam', '0072971291'),
(147, 'Raziz Maulana Haque', 'VIII B', 'Laki-laki', 'Islam', '0067028736'),
(148, 'Rissa Sarah Wati', 'VIII B', 'Perempuan', 'Islam', '0077600561'),
(149, 'Rizqi Ramadhan', 'VIII B', 'Laki-laki', 'Islam', '0065646092'),
(150, 'Satrio Dwi Nurcahyo', 'VIII B', 'Laki-laki', 'Islam', '0079698276'),
(151, 'Selfi Tandriyan', 'VIII B', 'Perempuan', 'Islam', '0063048994'),
(152, 'Vian Wahyu Pratama', 'VIII B', 'Laki-laki', 'Islam', '0073722930'),
(153, 'Vinozaki Mario Alventino', 'VIII B', 'Laki-laki', 'Islam', '0072453894'),
(154, 'Aldi Saputra Nugraha', 'VIII C', 'Laki-laki', 'Islam', '0067394005'),
(155, 'Andika Apriliano Gunawan', 'VIII C', 'Laki-laki', 'Islam', '0067598668'),
(157, 'Anisa Kartika Dewi', 'VIII C', 'Perempuan', 'Islam', '0064931622'),
(158, 'Bima Dwi Saputra', 'VIII C', 'Laki-laki', 'Islam', '0071045874'),
(159, 'Dhimas Bagus Ananto', 'VIII C', 'Laki-laki', 'Islam', '3062470819'),
(160, 'Didik Hartadi', 'VIII C', 'Laki-laki', 'Islam', '0076201083'),
(161, 'Dimas Satria Priya Utama', 'VIII C', 'Laki-laki', 'Islam', '0067805518'),
(162, 'Eka Wayanata Riski Ramandhani', 'VIII C', 'Laki-laki', 'Islam', '0065066454'),
(163, 'Fathma Nurul Hidayah', 'VIII C', 'Perempuan', 'Islam', '0062728268'),
(164, 'Febian Arga Atmaja', 'VIII C', 'Laki-laki', 'Islam', '0079250691'),
(165, 'Geger Pangudi Irfan Putra Umbaran', 'VIII C', 'Laki-laki', 'Islam', '0068604004'),
(167, 'Jovan Brilian Andika Pratama', 'VIII C', 'Laki-laki', 'Islam', '0071020792'),
(168, 'Kalselia Azahra', 'VIII C', 'Perempuan', 'Islam', '0076134034'),
(169, 'Kavka Eka Saputra', 'VIII C', 'Laki-laki', 'Islam', '0075367478'),
(170, 'Lika Dewi Cristiana', 'VIII C', 'Perempuan', 'Islam', '0065637134'),
(171, 'Marlita Azalia Qatrunada', 'VIII C', 'Perempuan', 'Islam', '0074656851'),
(172, 'Mochammad Aufa Riza Assaki', 'VIII C', 'Laki-laki', 'Islam', '0067735190'),
(173, 'Muhammad Afandy', 'VIII C', 'Laki-laki', 'Islam', '0061674087'),
(174, 'Muhammad Khafid', 'VIII C', 'Laki-laki', 'Islam', '0069999941'),
(175, 'Muhammad Oktowibowo Aji Saputro', 'VIII C', 'Laki-laki', 'Islam', '0061594312'),
(176, 'Nadia Eka Syahputri', 'VIII C', 'Perempuan', 'Islam', '0069081307'),
(177, 'Rahman Maulana', 'VIII C', 'Laki-laki', 'Islam', '0063917048'),
(178, 'Rangga Febriansyah', 'VIII C', 'Laki-laki', 'Islam', '0074925660'),
(179, 'Rasta Oktavia Ramadhani', 'VIII C', 'Perempuan', 'Islam', '0063985798'),
(180, 'Satria Adei Kurniawan', 'VIII C', 'Laki-laki', 'Islam', '0063541091'),
(181, 'Vania Putri Amira', 'VIII C', 'Perempuan', 'Islam', '0058863686'),
(182, 'Abel Muhammad Yasin', 'IX A', 'Laki-laki', 'Islam', '0069888484'),
(183, 'Aditya Rizky Yanto', 'IX A', 'Laki-laki', 'Islam', '0069129779'),
(184, 'Agung Tri Atmoko', 'IX A', 'Laki-laki', 'Islam', '0054150887'),
(185, 'Ahmad Pujahidin', 'IX A', 'Laki-laki', 'Islam', '0045278791'),
(186, 'Bella Zahra Monica ', 'IX A', 'Perempuan', 'Islam', '0069481584'),
(187, 'Dava Satria Putra', 'IX A', 'Laki-laki', 'Islam', '0045327717'),
(188, 'Devin Angga Pratama', 'IX A', 'Laki-laki', 'Islam', '0059145259'),
(189, 'Dwi Cahyani', 'IX A', 'Perempuan', 'Islam', '0053965487'),
(190, 'Faizah Sofiarani', 'IX A', 'Perempuan', 'Islam', '0053020988'),
(191, 'Febriana Nur Anisa', 'IX A', 'Perempuan', 'Islam', '0058098249'),
(192, 'Gabiella Cathryne Evelyna', 'IX A', 'Perempuan', 'Kristen', '0065507852'),
(193, 'Iman Maulana Totti', 'IX A', 'Laki-laki', 'Islam', '0056725557'),
(194, 'Lailatul Nikmah', 'IX A', 'Perempuan', 'Islam', '0041504572'),
(195, 'Mario Hedy Ibrahim', 'IX A', 'Laki-laki', 'Islam', '0063059579'),
(196, 'Maycherlyvia Sandra Devi', 'IX A', 'Perempuan', 'Islam', '0053522175'),
(197, 'Muhammad Harry Mardika', 'IX A', 'Laki-laki', 'Islam', '0058272266'),
(198, 'Nabel Davansa Adia Sabatus', 'IX A', 'Perempuan', 'Islam', '0062331186'),
(199, 'Ratih Wahyuningsih', 'IX A', 'Perempuan', 'Islam', '0055037629'),
(200, 'Reva Azka Amalia', 'IX A', 'Perempuan', 'Islam', '0064359330'),
(201, 'Rizal Roy Sandoval', 'IX A', 'Laki-laki', 'Islam', '0069787239'),
(202, 'Saskia Ayu Prastiwi', 'IX A', 'Perempuan', 'Islam', '0069173860'),
(203, 'Theofilis Restya', 'IX A', 'Laki-laki', 'Kristen', '0066105002'),
(204, 'Viona Andriani', 'IX A', 'Perempuan', 'Islam', '0048559503'),
(205, 'Wati Indah Wabarokah', 'IX A', 'Perempuan', 'Islam', '0055611187'),
(206, 'Aldo Kido Fadias Kurniansyah', 'IX B', 'Laki-laki', 'Islam', '0052912927'),
(207, 'Anggoro Caesar Valentino', 'IX B', 'Laki-laki', 'Islam', '0063892648'),
(208, 'Anggun Alifanisa', 'IX B', 'Perempuan', 'Islam', '0058582588'),
(209, 'Anggunia Eka Fitriani', 'IX B', 'Perempuan', 'Islam', '0063510306'),
(210, 'Dandung Aris Syafudin', 'IX B', 'Laki-laki', 'Islam', '0058399135'),
(211, 'Debrita Intan Ramadani', 'IX B', 'Perempuan', 'Islam', '0062939348'),
(212, 'Dina Maya Nofiyanti', 'IX B', 'Perempuan', 'Islam', '0058198741'),
(213, 'Farel Yofi Alfaro', 'IX B', 'Laki-laki', 'Islam', '0056673501'),
(214, 'Fery Ady Firmasyah', 'IX B', 'Laki-laki', 'Islam', '0068195957'),
(215, 'Ghyna Amalyah', 'IX B', 'Perempuan', 'Islam', '0061636340'),
(216, 'Hamdan Safii', 'IX B', 'Laki-laki', 'Islam', '0063766426'),
(217, 'Hera Marchelia', 'IX B', 'Perempuan', 'Islam', '0050976258'),
(218, 'Irfan Edy Nugroho', 'IX B', 'Laki-laki', 'Islam', '0063758841'),
(219, 'Leandra Maulana Al Faridzi', 'IX B', 'Laki-laki', 'Islam', '0066447548'),
(220, 'Muhamad Bagus Tri Aji', 'IX B', 'Laki-laki', 'Islam', '0065851119'),
(221, 'Nabella Kusuma Wardani', 'IX B', 'Perempuan', 'Islam', '0061796927'),
(222, 'Nabila Sherly Putri', 'IX B', 'Perempuan', 'Islam', '0069739045'),
(223, 'Rahayu Pundjul', 'IX B', 'Perempuan', 'Islam', '0044618354'),
(224, 'Risky Putri Abel Anjeli', 'IX B', 'Perempuan', 'Islam', '0056513716'),
(225, 'Septian Agung Laksono', 'IX B', 'Laki-laki', 'Islam', '0053466093'),
(226, 'Tavia Ocha Nucklarasta', 'IX B', 'Perempuan', 'Islam', '0049140679'),
(227, 'Vitka Ayu Andhani', 'IX B', 'Perempuan', 'Islam', '0034938842'),
(228, 'Zahro Nadia Saraswati Rasad', 'IX B', 'Perempuan', 'Islam', '0044562410'),
(229, 'Achmad Meiyadi', 'IX C', 'Laki-laki', 'Islam', '0041377178'),
(230, 'Aldiansyah Firsa Zuhri S.', 'IX C', 'Laki-laki', 'Islam', '0062386371'),
(231, 'Anugrah Orlon Putra', 'IX C', 'Laki-laki', 'Islam', '0026406827'),
(232, 'Aziz Hidayat Saputra', 'IX C', 'Laki-laki', 'Islam', '0053350224'),
(233, 'Darmawan Heru Samudra', 'IX C', 'Laki-laki', 'Islam', '0056880833'),
(234, 'Dewi Ardinata', 'IX C', 'Perempuan', 'Islam', '0051486063'),
(235, 'Dyas Ayu Bachtiara', 'IX C', 'Perempuan', 'Islam', '0057319742'),
(236, 'Fatihah Salma Sabilla', 'IX C', 'Perempuan', 'Islam', '0059853841'),
(237, 'Fina Bakti Putri Ani', 'IX C', 'Perempuan', 'Islam', '0061087797'),
(238, 'Hilga Dwi Handoko', 'IX C', 'Laki-laki', 'Islam', '0063507904'),
(239, 'Istigfari Dika Maulana', 'IX C', 'Laki-laki', 'Islam', '0065259249'),
(240, 'Lukman Rifa\\\'i', 'IX C', 'Laki-laki', 'Islam', '0059836065'),
(241, 'M. Alvin Arryawan Fajar R.', 'IX C', 'Laki-laki', 'Islam', '0054183788'),
(242, 'Muhammad Ali Efendi', 'IX C', 'Laki-laki', 'Islam', '0054533186'),
(243, 'Muhammad Ridho Nitya Pratama Atmadja', 'IX C', 'Laki-laki', 'Islam', '0055687215'),
(244, 'Muhammad Viki Arkhanulloh', 'IX C', 'Laki-laki', 'Islam', '0052986327'),
(245, 'Nayla Putri Yunita', 'IX C', 'Perempuan', 'Islam', '0066722048'),
(246, 'Revan Febianto Hermansyah', 'IX C', 'Laki-laki', 'Islam', '0045262588'),
(247, 'Ryan Nurrahman', 'IX C', 'Laki-laki', 'Islam', '0067286408'),
(248, 'Satria Yoensi Wicahyono', 'IX C', 'Laki-laki', 'Islam', '0068017818'),
(249, 'Siti Nur Aisyah', 'IX C', 'Perempuan', 'Islam', '0059640197'),
(250, 'Vivi A\\\'idatul Milla', 'IX C', 'Perempuan', 'Islam', '0059345022');

--
-- Triggers `member`
--
DELIMITER $$
CREATE TRIGGER `member_before_delete` BEFORE DELETE ON `member` FOR EACH ROW BEGIN

DELETE FROM peminjaman WHERE member_id = OLD.member_id;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `peminjaman_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `buku_id` int(11) DEFAULT NULL,
  `jumlah_pinjam` int(11) DEFAULT NULL,
  `tgl_pengembalian` int(11) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ket_pinjam` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`peminjaman_id`, `member_id`, `buku_id`, `jumlah_pinjam`, `tgl_pengembalian`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket_pinjam`) VALUES
(15, 48, 103, 1, 2021, '2021-01-18', '2021-01-25', 'Kembali', ''),
(16, 39, 177, 3, 2021, '2021-01-18', '2021-01-25', 'Kembali', 'Tugas'),
(17, 10, 177, 5, NULL, '2021-01-18', '2021-01-25', 'Pinjam', '');

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `peminjaman_after_insert` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN

UPDATE buku
SET jumlah = jumlah-NEW.jumlah_pinjam WHERE buku_id = NEW.buku_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `peminjaman_after_update` AFTER UPDATE ON `peminjaman` FOR EACH ROW BEGIN

IF(NEW.status = 'Kembali') THEN
UPDATE buku
SET jumlah = jumlah+OLD.jumlah_pinjam WHERE buku_id = NEW.buku_id;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `rak_id` int(11) NOT NULL,
  `nama_rak` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`rak_id`, `nama_rak`) VALUES
(1, 'Rak 1'),
(2, 'Rak 2'),
(3, 'Rak 3'),
(4, 'Rak 4'),
(5, 'Rak 5'),
(6, 'Rak 6'),
(7, 'Rak 7'),
(8, 'Rak 8'),
(9, 'Rak 9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`),
  ADD KEY `FK_buku_rak` (`rak_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`peminjaman_id`),
  ADD KEY `FK_peminjaman_member` (`member_id`),
  ADD KEY `FK_peminjaman_buku` (`buku_id`);

--
-- Indexes for table `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`rak_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `peminjaman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rak`
--
ALTER TABLE `rak`
  MODIFY `rak_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_buku_rak` FOREIGN KEY (`rak_id`) REFERENCES `rak` (`rak_id`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_peminjaman_buku` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`buku_id`),
  ADD CONSTRAINT `FK_peminjaman_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
