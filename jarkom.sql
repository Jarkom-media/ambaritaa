-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2022 at 04:54 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jarkom`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id_administrator` int(11) NOT NULL,
  `nama_administrator` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id_administrator`, `nama_administrator`, `username`, `password`) VALUES
(1, 'Jurendi', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `balasan`
--

CREATE TABLE `balasan` (
  `id_balasan` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `isi` text NOT NULL,
  `id_komentar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `balasan`
--

INSERT INTO `balasan` (`id_balasan`, `tanggal`, `isi`, `id_komentar`) VALUES
(3, '2022-09-19 18:55:56', 'Maksud dari norma-norma didalam materi tersebut adalah peraturan-peraturan yang ada dalam dunia IT', 1),
(4, '2022-09-22 16:33:36', 'Tes balas', 3),
(5, '2022-09-22 16:33:40', 'Tes balas', 2);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `isi` text NOT NULL,
  `id_materi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `tanggal`, `id_mahasiswa`, `isi`, `id_materi`) VALUES
(1, '2022-09-19 12:19:19', 1, 'Saya kurang mengerti di norma-norma yang sesuai, maksudnya gimana ya pak / bu guru?', 10),
(2, '2022-09-19 19:03:21', 1, 'Tes', 10),
(3, '2022-09-22 16:32:43', 2, 'Tes', 10),
(4, '2022-09-22 16:33:57', 2, 'Asdasd', 10);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'Jaringan Komputer Dasar'),
(2, 'Jaringan Komputer Menengah'),
(3, 'Jaringan Komputer Akhir');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(20) NOT NULL,
  `nama_lengkap` varchar(50) CHARACTER SET utf8 NOT NULL,
  `handphone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) NOT NULL,
  `kampus` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `last_urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama_lengkap`, `handphone`, `email`, `kampus`, `password`, `last_urutan`) VALUES
(1, 'Ardiansyah Pane', '08123456789', 'tes@gmail.com', 'SMK NEGERI 8', '123', 6),
(2, 'Tesasasd', '08123456788', 'tes@gmail.com', 'X-TKJ-1', '123', 6),
(3, 'Tes', '08123456787', 'asd@gmail.com', 'X TKJ 2', '123', 6);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi_materi` text NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `judul`, `isi_materi`, `video`) VALUES
(3, 'Klasifikasi Jaringan Komputer', '<p>Ditentukan berdasarkan jarak jangkauan jaringan atau cakupan area yang dilingkupi&nbsp;jaringan tersebut.&nbsp;</p>\r\n\r\n<p><br />\r\n1. Jaringan komputer personal (PAN)&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; Personal area network (PAN) seperti di gambar 1.3 adalah jaringan komunikasi satu&nbsp;perangkat lain dengan perangkat lainnya dalam jarak yang sangat dekat. Misalnya&nbsp;antara komputer yang dihubungkan dengan Personal Digital Assistance (PDA),&nbsp;telepon seluler, laptop, dan lain sebagainya. PAN ini dapat digunakan untuk&nbsp;komunikasi antara suatu perangkat dengan perangkat yang lainnya ataupun&nbsp;penghubung antara device dengan jaringan yang lebih luas lagi seperti internet&nbsp;misalnya. Untuk membuat jaringan PAN ini, biasanya dengan menghubungkan melalui&nbsp;bus yang ada pada komputer seperti USB ataupun firewire.</p>\r\n\r\n<p><img alt=\"\" src=\"../gambar/31615.png\" style=\"height:317px; width:411px\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Selain itu PAN ini juga dapat dibuat dengan media wireless atau biasa disebut WPAN&nbsp;(Wireless PAN) dengan menggunakan media perantara IrDA (gelombang infra merah),&nbsp;bluetooth, UWB, Z-Wave, dan ZigBee. Jangkauannya untuk jaringan PAN adalah 6-9&nbsp;meter.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. Jaringan komputer Local (LAN)&nbsp;<br />\r\nLAN adalah jaringan komputer yang jaringannya hanya mencakup wilayah kecil. misalnya&nbsp;jaringan komputer kampus, gedung, kantor, rumah, sekolah, atau yang lebih kecil.&nbsp;Saat ini,kebanyakan LAN berbasis pada teknologi IEEE 802.3 Ethernet menggunakan&nbsp;perangkat switch, yang mempunyai kecepatan transfer data 10, 100, atau 1000 Mbit/s.&nbsp;Selain teknologi Ethernet, saat ini teknologi 802.11b (atau biasa disebut Wi-fi) juga&nbsp;sering digunakan untuk membentuk LAN. Tempat-tempat yang menyediakan koneksi&nbsp;LAN dengan teknologi Wi-fi biasa disebut hotspot.&nbsp;Pada sebuah LAN, setiap node atau komputer mempunyai daya komputasi sendiri,&nbsp;berbeda dengan konsep dump terminal. Setiap komputer juga dapat mengakses&nbsp;sumberdaya yang ada di LAN sesuai dengan hak akses yang telah diatur. Sumber&nbsp;daya tersebut dapat berupa data atau perangkat seperti printer. Pada LAN, seorang&nbsp;pengguna juga dapat berkomunikasi dengan pengguna yang lain dengan&nbsp;menggunakan aplikasi yang sesuai. Biasanya salah satu komputer diantara jaringan&nbsp;komputer itu akan digunakan menjadi server yang mengatur semua sistem di dalam&nbsp;jaringan tersebut. Jangkauan LAN berkisar dari 10-300 meter.</p>\r\n\r\n<p><img alt=\"\" src=\"../gambar/12784.png\" style=\"height:385px; width:472px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. Jaringan komputer Campus (CAN)&nbsp;<br />\r\nCampus area network (CAN) adalah jaringan komputer terkoneksi lokal di seluruh wilayah&nbsp;geografis yang terbatas, seperti universitas kampus, sebuah perusahaan kampus,&nbsp;atau pangkalan militer. Hal ini dapat dianggap sebagai daerah metropolitan jaringan&nbsp;yang khusus untuk pengaturan kampus. Sebuah jaringan area kampus dibedakan&nbsp;karena lebih besar dari sebuah jaringan local area network, tetapi lebih kecil&nbsp;dibandingkan dengan MAN. Istilah ini kadang-kadang digunakan untuk merujuk ke&nbsp;kampus.</p>\r\n\r\n<p><img alt=\"\" src=\"../gambar/4969.png\" style=\"height:286px; width:402px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4. Jaringan komputer Metropolitan (MAN)&nbsp;<br />\r\nMAN meliputi area yang lebih besar dari LAN, misalnya antar gedung dalam suatu daerah&nbsp;(wilayah seperti propinsi atau negara bagian). Dalam hal ini jaringan menghubungkan&nbsp;beberapa buah jaringan kecil ke dalam lingkungan area yang lebih besar, sebagai&nbsp;contoh yaitu: jaringan beberapa kantor cabang sebuah bank di dalam sebuah kota&nbsp;besar yang dihubungkan antara satu dengan lainnya. Metropolitan area network atau&nbsp;disingkat dengan MAN merupakan suatu jaringan dalam suatu kota dengan transfer&nbsp;data berkecepatan tinggi, yang menghubungkan berbagai lokasi seperti kampus,&nbsp;perkantoran, pemerintahan, dan sebagainya. Jaringan MAN adalah gabungan dari&nbsp; beberapa LAN. Jangkauan dari MAN ini antar 10 hingga 50 km, MAN ini merupakan&nbsp;jaringan yang tepat untuk membangun jaringan antar kantor-kantor dalam satu kota&nbsp;antara pabrik/instansi dan kantor pusat yang berada dalam jangkauannya.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"../gambar/30540.png\" style=\"height:476px; width:638px\" /></p>\r\n\r\n<p>5. Jaringan komputer skala luas (WAN)&nbsp;<br />\r\nWide Area Network (WAN) adalah jaringan yang biasanya sudah menggunakan media&nbsp;wireless, sarana satelit ataupun kabel serat optik. Area jangkauannya sendiri lebih&nbsp;luas dibanding dengan jenis jaringan yang telah disebutkan di atas, bukan hanya meliputi satu kota atau antar kota dalam suatu wilayah, tetapi mulai menjangkau&nbsp;area/wilayah otoritas negara lain. Sebagai contoh jaringan komputer kantor City Bank&nbsp;yang ada di Indonesia ataupun yang ada di negara lain yang saling berhubungan,&nbsp;jaringan ATM Master Card, Visa Card, atau Cirrus yang tersebar di seluruh dunia, dan&nbsp;lain sebagainya. Biasanya WAN ini lebih rumit dan sangat kompleks bila dibandingkan&nbsp;LAN maupun MAN. WAN menggunakan banyak sarana untuk menghubungkan antara&nbsp;LAN dan WAN ke dalam komunikasi global seperti internet. Meski demikian antara&nbsp;LAN, MAN, dan WAN tidak banyak berbeda dalam beberapa hal, hanya lingkup&nbsp;areanya saja yang berbeda. WAN memiliki banyak kelebihan yang tentu saja&nbsp;diharapkan oleh pemakainya. Kelebihan adalah salah satu faktor utama seseorang&nbsp;atau sekelompok orang memilih menggunakan WAN sebagai solusi jaringannya.&nbsp;Dibawah ini adalah beberapa kelebihan WAN, yakni:&nbsp;<br />\r\na. Server pusat pada WAN atau Wide Area Network dapat difungsikan sebagai bank&nbsp;data atau tempat penyimpanan yang terpusat. Dengan demikian seluruh file yang&nbsp;dibutuhkan oleh perusahaan dapat digunakan oleh semua komputer yang terhubung&nbsp;dengan WAN, meskipun terpisah jarak yang jauh.&nbsp;<br />\r\nb. WAN atau Wide Area Network adalah jaringan yang sangat luas sehingga dapat&nbsp;menghubungkan antar daerah, pulau atau bahkan antar benua.&nbsp;<br />\r\nc. Jika satu jaringan lokal yang terhubung pada WAN memiliki koneksi internet, maka&nbsp;seluruh komputer yang ada dalam WAN dapat menikmati koneksi internet, jika&nbsp;diijinkan. Hal ini berarti penghematan pada biaya langganan internet yang terpusat&nbsp;pada satu titik saja.&nbsp;<br />\r\nd. WAN dapat menghubungkan komputer yang berada dalam suatu kawasan yang luas&nbsp;dalam waktu singkat sehingga WAN dapat digunakan sebagai media komunikasi&nbsp;internal yang mengurangi biaya telepon tiap bulannya.&nbsp;WAN atau Wide Area Network memiliki beberapa kekurangan yang sebenarnya tidak&nbsp;siginifikan, namun perlu anda ketahui dengan baik dan benar.</p>\r\n\r\n<p>Berikut ini adalah&nbsp;beberapa kekurangan yang ada pada Wide Area Network atau WAN, yaitu:&nbsp;<br />\r\na. WAN atau Wide Area Network merupakan jaringan yang memiliki tingkat kerumitan&nbsp;dan kesulitan tinggi dalam hal pengaturan. Alat-alat yang dibutuhkan untuk&nbsp;membangun WAN terbilang relatif mahal. WAN membutuhkan banyak peralatan dan&nbsp;data sebelum jaringan yang ada berhubungan dan berkomunikasi dengan internet&nbsp;secara global.&nbsp;<br />\r\nb. WAN juga rentan terhadap masalah keamanan data karena bagaimanapun kita tidak&nbsp;dapat mengontrol apa yang terjadi diantara node yang jaraknya bisa sampai puluhan&nbsp;bahkan ratusan kilometer jauhnya. Dalam perjalanannya, bisa saja data antar&nbsp;perusahaan diambil oleh orang lain, baik oleh orang dalam maupun orang luar yang&nbsp;memiliki penguasaan terhadap kelemahan sistem kita.&nbsp;Jika menggunakan jasa sewa jalur atau leased line, biaya yang dikeluarkan tiap bulan&nbsp;tidaklah murah yakni berkisar 7 juta hingga 10 juta rupiah tiap bulannya. Biaya seperti&nbsp;ini tentu saja harus dikalkulasikan dengan baik beserta keuntungan yang didapatkan.&nbsp;Maka dari itu kebanyakan pengguna WAN adalah perusahaan.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"../gambar/9109.png\" style=\"height:468px; width:657px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6. Jaringan global (GAN)&nbsp;<br />\r\nIstilah untuk network yang akan menghubungkan berbagai wireless network, misalnya&nbsp;WLAN (WiFi dengan hotspotnya), cakupan area sebuah satelit, dsb. Jangkauannya&nbsp;seperti MAN, yaitu melingkupi sebuah kota.Contohnya : IEEE 802.20, yaitu Mobile&nbsp;Broadband Wireless Access (MBWA).&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"../gambar/15530.png\" style=\"height:302px; width:375px\" /><br />\r\n&nbsp;</p>\r\n', 'VsRiV-SjD44'),
(4, 'Open System Interconnection (OSI)', '<p>Sebuah badan multinasional yang didirikan tahun 1947 yang bernama International&nbsp;Standards Organization (ISO) sebagai badan yang melahirkan standar-standar&nbsp;standar internasional. ISO ini mengeluarkan juga standar jaringan komunikasi yang&nbsp;mencakup segala aspek yaitu model OSI (Open System Interconnection). Tujuan OSI&nbsp;ini adalah untuk membuat standar aturan komunikasi sehingga dapat terjalin&nbsp;interkomunikasi dari sistem yang berbeda tanpa memerlukan perubahan yang&nbsp;signifikan pada hardware dan software.&nbsp;Model OSI adalah suatu dekripsi abstrak mengenai desain lapisan-lapisan komunikasi dan&nbsp;protokol jaringan komputer yang dikembangkan sebagai bagian dari inisiatif Open&nbsp;Systems Interconnection (OSI). Model ini disebut juga dengan model &ldquo;Tujuh lapisan&nbsp;OSI&rdquo; (OSI seven layer model).&nbsp;Ketujuh lapisan dalam model ini adalah:&nbsp;</p>\r\n\r\n<p><strong>1. Lapisan fisik (physical layer)&nbsp;</strong><br />\r\nPhysical Layer berfungsi dalam pengiriman raw bit ke channel komunikasi. Masalah&nbsp;desain yang harus diperhatikan disini adalah memastikan bahwa bila satu sisi&nbsp;mengirim data 1 bit, data tersebut harus diterima oleh sisi lainnya sebagai 1 bit pula,&nbsp;dan bukan 0 bit. Pertanyaan yang timbul dalam hal ini adalah : berapa volt yang perlu&nbsp;digunakan untuk menyatakan nilai 1? dan berapa volt pula yang diperlukan untuk&nbsp;angka 0?. Diperlukan berapa mikrosekon suatu bit akan habis? Apakah transmisi&nbsp;dapat diproses secara simultan pada kedua arahnya? Berapa jumlah pin yang dimiliki&nbsp;jaringan dan apa kegunaan masing-masing pin? Secara umum masalah-masalah&nbsp;desain yang ditemukan di sini berhubungan secara mekanik, elektrik dan interface&nbsp;prosedural, dan media fisik yang berada di bawah physical layer.&nbsp;</p>\r\n\r\n<p><strong>2. Lapisan koneksi data (data link layer)</strong></p>\r\n\r\n<p>Tugas utama data link layer adalah sebagai fasilitas transmisi raw data dan&nbsp;mentransformasi data tersebut ke saluran yang bebas dari kesalahan transmisi.&nbsp;Sebelum diteruskan kenetwork layer, data link layer melaksanakan tugas ini dengan&nbsp;memungkinkan pengirim memecag-mecah data input menjadi sejumlah data frame&nbsp;(biasanya berjumlah ratusan atau ribuan byte). Kemudian data link layer&nbsp;mentransmisikan frame tersebut secara berurutan, dan memproses acknowledgement&nbsp;frame yang dikirim kembali oleh penerima. Karena physical layer menerima dan&nbsp;mengirim aliran bit tanpa mengindahkan arti atau arsitektur frame, maka tergantung&nbsp;pada data link layer-lah untuk membuat dan mengenali batas-batas frame itu. Hal ini&nbsp;bisa dilakukan dengan cara membubuhkan bit khusus ke awal dan akhir frame. Bila&nbsp;secara insidental pola-pola bit ini bisa ditemui pada data, maka diperlukan perhatian&nbsp;khusus untuk menyakinkan bahwa pola tersebut tidak secara salah dianggap sebagai&nbsp;batas-batas frame.&nbsp;</p>\r\n\r\n<p><strong>3. Lapisan jaringan (network layer)&nbsp;</strong><br />\r\nNetwork layer berfungsi untuk pengendalian operasi subnet. Masalah desain yang penting&nbsp;adalah bagaimana caranya menentukan route pengiriman paket dari sumber ke&nbsp;tujuannya. Route dapat didasarkan pada table statik yang &ldquo;dihubungkan ke&rdquo; network.&nbsp;Route juga dapat ditentukan pada saat awal percakapan misalnya session terminal.&nbsp;Terakhir, route dapat juga sangat dinamik, dapat berbeda bagi setiap paketnya. Oleh&nbsp;karena itu, route pengiriman sebuah paket tergantung beban jaringan saat itu.&nbsp;</p>\r\n\r\n<p><strong>4. Lapisan transpor (transport layer)</strong></p>\r\n\r\n<p>Fungsi dasar transport layer adalah menerima data dari session layer, memecah data&nbsp;menjadi bagian-bagian yang lebih kecil bila perlu, meneruskan data ke network layer,&nbsp;dan menjamin bahwa semua potongan data tersebut bisa tiba di sisi lainnya dengan&nbsp;benar. Selain itu, semua hal tersebut harus dilaksanakan secara efisien, dan bertujuan&nbsp;dapat melindungi layer-layer bagian atas dari perubahan teknologi hardware yang&nbsp;tidak dapat dihindari.&nbsp;Dalam keadaan normal, transport layer membuat koneksi jaringan yang berbeda bagi&nbsp;setiap koneksi transport yang diperlukan oleh session layer. Bila koneksi transport&nbsp;memerlukan throughput yang tinggi, maka transport layer dapat membuat koneksi&nbsp;jaringan yang banyak. Transport layer membagi-bagi pengiriman data ke sejumlah&nbsp;jaringan untuk meningkatkan throughput. Di lain pihak, bila pembuatan atau&nbsp;pemeliharaan koneksi jaringan cukup mahal, transport layer dapat menggabungkan&nbsp;beberapa koneksi transport ke koneksi jaringan yang sama. Hal tersebut dilakukan&nbsp;untuk membuat penggabungan ini tidak terlihat oleh session layer.&nbsp;Transport layer juga menentukan jenis layanan untuk session layer, dan pada gilirannya&nbsp;jenis layanan bagi para pengguna jaringan. Jenis transport layer yang paling populer&nbsp;adalah saluran error-free point to point yang meneruskan pesan atau byte sesuai&nbsp;dengan urutan pengirimannya. Akan tetapi, terdapat pula jenis layanan transport&nbsp;lainnya. Layanan tersebut adalah transport pesan terisolasi yang tidak menjamin&nbsp; urutan pengiriman, dan membroadcast pesan-pesan ke sejumlah tujuan. Jenis&nbsp;layanan ditentukan pada saat koneksi dimulai.&nbsp;</p>\r\n\r\n<p><strong>5. Lapisan sesi (session layer)&nbsp;</strong><br />\r\nSession layer mengijinkan para pengguna untuk menetapkan session dengan pengguna&nbsp;lainnya. Sebuah session selain memungkinkan transport data biasa, seperti yang&nbsp;dilakukan oleh transport layer, juga menyediakan layanan yang istimewa untuk&nbsp;aplikasi-aplikasi tertentu. Sebuah session digunakan untuk memungkinkan seseorang&nbsp;pengguna log ke remote timesharing system atau untuk memindahkan file dari satu&nbsp;mesin kemesin lainnya.&nbsp;Sebuah layanan session layer adalah untuk melaksanakan pengendalian dialog. Session&nbsp;dapat memungkinkan lalu lintas bergerak dalam bentuk dua arah pada suatu saat,&nbsp;atau hanya satu arah saja. Jika pada satu saat lalu lintas hanya satu arah saja (analog&nbsp;dengan rel kereta api tunggal), session layer membantu untuk menentukan giliran&nbsp;yang berhak menggunakan saluran pada suatu saat.&nbsp;Layanan session di atas disebut manajemen token. Untuk sebagian protokol, adalah&nbsp; penting untuk memastikan bahwa kedua pihak yang bersangkutan tidak melakukan&nbsp;operasi pada saat yang sama. Untuk mengatur aktivitas ini, session layer&nbsp;menyediakan token-token yang dapat digilirkan. Hanya pihak yang memegang token&nbsp;yang diijinkan melakukan operasi kritis.&nbsp;Layanan session lainnya adalah sinkronisasi. Ambil contoh yang dapat terjadi ketika&nbsp;mencoba transfer file yang berdurasi 2 jam dari mesin yang satu ke mesin lainnya&nbsp;dengan kemungkinan mempunyai selang waktu 1 jam antara dua crash yang dapat&nbsp;terjadi. Setelah masing-masing transfer dibatalkan, seluruh transfer mungkin perlu&nbsp;diulangi lagi dari awal, dan mungkin saja mengalami kegagalan lain. Untuk&nbsp;mengurangi kemungkinan terjadinya masalah ini, session layer dapat menyisipkan&nbsp;tanda tertentu ke aliran data. Karena itu bila terjadi crash, hanya data yang berada&nbsp;sesudah tanda tersebut yang akan ditransfer ulang.&nbsp;</p>\r\n\r\n<p><strong>6. Lapisan presentasi (presentation layer)&nbsp;</strong><br />\r\nPressentation layer melakukan fungsi-fungsi tertentu yang diminta untuk menjamin&nbsp;penemuan sebuah penyelesaian umum bagi masalah tertentu. Pressentation Layer&nbsp;tidak mengijinkan pengguna untuk menyelesaikan sendiri suatu masalah. Tidak seperti&nbsp;layer-layer di bawahnya yang hanya melakukan pemindahan bit dari satu tempat ke&nbsp;tempat lainnya, presentation layer memperhatikan syntax dan semantik informasi yang&nbsp;dikirimkan.&nbsp;Satu contoh layanan pressentation adalah encoding data. Kebanyakan pengguna tidak&nbsp;memindahkan string bit biner yang random. Para pengguna saling bertukar data sperti&nbsp;nama orang, tanggal, jumlah uang, dan tagihan. Item-item tersebut dinyatakan dalam&nbsp;bentuk string karakter, bilangan interger, bilangan floating point, struktur data yang&nbsp;dibentuk dari beberapa item yang lebih sederhana. Terdapat perbedaan antara satu&nbsp;komputer dengan komputer lainnya dalam memberi kode untuk menyatakan string&nbsp;karakter (misalnya, ASCII dan Unicode), integer (misalnya komplemen satu dan&nbsp;komplemen dua), dan sebagainya. Untuk memungkinkan dua buah komputer yang&nbsp;memiliki presentation yang berbeda untuk dapat berkomunikasi, struktur data yang&nbsp;akan dipertukarkan dapat dinyatakan dengan cara abstrak, sesuai dengan encoding&nbsp;standard yang akan digunakan &ldquo;pada saluran&rdquo;. Presentation layer mengatur datastruktur abstrak ini dan mengkonversi dari representation yang digunakan pada&nbsp;sebuah komputer menjadi representation standard jaringan, dan sebaliknya.&nbsp;</p>\r\n\r\n<p><strong>7. Lapisan aplikasi (application layer)&nbsp;</strong><br />\r\nApplication layer terdiri dari bermacam-macam protokol. Misalnya terdapat ratusan jenis&nbsp;terminal yang tidak kompatibel di seluruh dunia. Ambil keadaan dimana editor layar&nbsp;penuh yang diharapkan bekerja pada jaringan dengan bermacam-macam terminal,&nbsp;yang masing-masing memiliki layout layar yang berlainan, mempunyai cara urutan&nbsp;penekanan tombol yang berbeda untuk penyisipan dan penghapusan teks,&nbsp;memindahkan sensor dan sebagainya.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"../gambar/15751.png\" style=\"height:491px; width:602px\" /><br />\r\n&nbsp;</p>\r\n', 'mX94MxomvUs'),
(5, 'Model TCP IP', '<p>Model Referensi Jaringan TCP / IP adalah standar komunikasi data yang dipergunakan&nbsp;oleh komunitas dalam proses tukar data dari komputer ke komputer yang lain dalam&nbsp;jaringan komputer.&nbsp;Protocol ini merupakan :&nbsp;<br />\r\n1. Kumpulan protocol ( Protocol suite )&nbsp;<br />\r\n2. Protocol yang paling banyak digunakan&nbsp;<br />\r\n3. Standar jaringan terbuka bersifat independen terhadap mekanisme transport&nbsp;jaringan fisik yang digunakan.&nbsp;</p>\r\n\r\n<p>Arsitektur protokol yang digunakan oleh Internet dan jaringan lainnya. TCP/IP&nbsp;dikembangkan sebelum model OSI . Namun lapisan pada TCP/IP tidak cocok&nbsp;seluruhnya dengan lapisan OSI. Protokol TCP/IP hanya dibuat 5 lapisan saja, yaitu:&nbsp;physical, data link, network, transport dan application. lapisan aplikasi pada TCP/IP&nbsp;mencakup 3 lapisan OSI teratas. Khusus layer ke 4, Protokol TCP/IP mendefinisikan 2&nbsp;buah protokol yakni Transmission Control Protocol (TCP) dan User Datagram Protocol&nbsp;(UDP). Pada lapisan ke 3, TCP/IP mendefiniskan sebagai Internetworking Protocol&nbsp;(IP).&nbsp;<br />\r\n<strong>1. Physical Layer</strong></p>\r\n\r\n<p>TCP/IP mendukung semua standar dan proprietary protokol lain. lapisan ini&nbsp;menentukan karakteristik media transmisi, rata-rata pensinyalan, serta skema&nbsp;pengkodean sinyal dan sarana sistem pengiriman data ke device yang terhubung&nbsp;ke network.&nbsp;<br />\r\n<strong>2. Data Link Layer</strong></p>\r\n\r\n<p>Berkaitan dengan logical-interface diantara satu ujung sistem dan jaringan dan&nbsp;melakukan fragmentasi atau defragmentasi datagram.&nbsp;Proses pengiriman dan penerimaan packet dapat dilakukan oleh software device&nbsp;driver dari network card/adapter yang digunakan. termasuk physical layer, yang&nbsp;terdiri dari komponen fisik seperti hub, repeater, kabel jaringan (UTP, fibre, coaxial),&nbsp;network cards, network connectors (RJ-45, BNC, dll) dan spesifikasi untuk sinyal&nbsp;(level voltase, frekuensi, dll).&nbsp;</p>\r\n\r\n<p><strong>3. Network Layer Internet Protocol (IP)</strong><br />\r\nAwalnya ditujukan untuk mengirimkan packet antar host di sebuah jaringan.&nbsp;Pengembangan ke Internetworking, dimana jalur pengiriman packet dari sumber ke&nbsp;tujuan melalui routing. Beberapa protokol bagian dari IP yaitu ICMP (menyediakan&nbsp;informasi dianostik untuk pengiriman packet IP), IGMP (mengelola data multicast),&nbsp;protokol routing seperti BGP, OSPF dan RIP.&nbsp;Berkaitan dengan routing data dari sumber ke tujuan. Pelayanan pengiriman paket&nbsp;elementer. Definisikan datagram (jika alamat tujuan tidak dalam jaringan lokal,&nbsp;diberi gateway = device yang menswitch paket antara jaringan fisik yang beda;&nbsp;memutuskan gateway yang digunakan). Pada lapisan ini TCP/IP mendukung IP dan&nbsp;didukung oleh protokol lain yaitu RARP, ICMP, ARP dan IGMP.&nbsp;<br />\r\nA. Internetworking Protocol (IP)&nbsp;</p>\r\n\r\n<p>mekanisme transmisi yang digunakan oleh TCP/IP. IP disebut juga unreliable&nbsp;dan connectionless datagram protocol a best effort delivery service. IP&nbsp;mentransportasikan data dalam paket yang disebut datagram.&nbsp;</p>\r\n\r\n<p>B. Address Resolution Protocol (ARP)&nbsp;</p>\r\n\r\n<p>digunakan untuk menyesuaikan alamat IP dengan alamat fisik (Physical&nbsp;address).&nbsp;</p>\r\n\r\n<p>C. Reverse Address Resolution Protocol (RARP)&nbsp;</p>\r\n\r\n<p>RARP membolehkan host menemukan alamat IP nya jika dia sudah tahu alamat&nbsp;fisiknya. berlaku saat host baru terkoneksi ke jaringan.&nbsp;</p>\r\n\r\n<p>D. Internet Control Message Protocol (ICMP)&nbsp;</p>\r\n\r\n<p>suatu mekanisme yang digunakan oleh sejumlah host dan gateway untuk&nbsp;mengirim notifikasi datagram yang mengalami masalah kepada host pengirim.&nbsp;</p>\r\n\r\n<p>E. Group Message Protocol (IGMP)&nbsp;<br />\r\ndigunakan untuk memfasilitasi transmisi message yang simultan kepada&nbsp;kelompok penerima.&nbsp;</p>\r\n\r\n<p><strong>4. Transport Layer</strong></p>\r\n\r\n<p>Pada lapisan ini terbagi menjadi dua, UDP dan TCP :&nbsp;</p>\r\n\r\n<p>A. User Datagram Protocol (UDP) protokol process-to-process yang menambahkan hanya alamat port, check-sum error control, dan panjang informasi data dari lapisan di atasnya.</p>\r\n\r\n<p>B. Transmission Control Protocol (TCP) menyediakan layanan penuh lapisan transpor untuk aplikasi. dikatakan protokol transport untuk stream yang reliabel. koneksi end-to-end dibangun di kedua ujung terminal sebelum mengirimkan data. (Connection Oriented). Menyediakan layanan pengiriman pesan dari ujung ke ujung yang dapat dikategorikan sebagai: A. Connection-oriented: TCP (byte-oriented) dan SCTP(stream-oriented) B. Connectionless: UDP dan RTP (datagram)</p>\r\n\r\n<p><strong>5. Application Layer</strong></p>\r\n\r\n<p>Mencakup presentation dan session layer dari model OSI, dimana layanan dari layer tsb&nbsp;disediakan melalui libraries. Data user dikirimkan melalui jaringan diterima melalui&nbsp;application layer, lalu diteruskan ke transport layer. Setiap aplikasi yang&nbsp;menggunakan TCP atau UDP, membutuhkan port sebagai identitas aplikasi. Port&nbsp;numbers (16 bit) digunakan oleh TCP atau UDP untuk membedakan setiap proses&nbsp;yang menggunakan layanan mereka.&nbsp;</p>\r\n\r\n<p>1. Well known ports&nbsp;<br />\r\n0 s/d 1023 dipesan oleh Internet Assigned Number Authority (IANA) dan tidak&nbsp;bisa digunakan secara bebas.&nbsp;<br />\r\n2. Registered ports&nbsp;<br />\r\n1024 s/d 49151 tidak dikontrol oleh IANA tapi tidak bisa digunakan secara bebas&nbsp;karena sudah direserve oleh sistem computer.&nbsp;<br />\r\n3. Dynamic atau private atau ephemeral (short-lived) ports&nbsp;<br />\r\n49152 s/d 65535 bisa digunakan user secara bebas&nbsp;Dilapisan ini berisi beragam protokol yang menyediakan pelayanan jaringan bagi&nbsp;aplikasi user seperti : Telnet, FTP, SMTP, POP3, DNS, SNMP dan TFTP.&nbsp;</p>\r\n', '0RedyOvvkM0'),
(10, 'Pengenalan Jaringan Komputer', '<p>&nbsp; &nbsp; &nbsp; &nbsp;Jaringan komputer adalah sebuah sistem yang terdiri atas komputer-komputer yang&nbsp;didesain untuk dapat berbagi sumber daya (printer, CPU), berkomunikasi, dan dapat&nbsp;mengakses informasi. Tujuan dari jaringan komputer adalah agar dapat mencapai&nbsp;tujuannya, setiap bagian dari jaringan komputer dapat meminta dan memberikan&nbsp;layanan. Pihak yang meminta/menerima layanan disebut klien (client) dan yang&nbsp;memberikan/mengirim layanan disebut server. Desain ini disebut dengan sistem clientserver, dan digunakan pada hampir seluruh aplikasi jaringan komputer.&nbsp;Dua buah komputer yang masing-masing memiliki sebuah kartu jaringan,&nbsp;kemudian dihubungkan melalui kabel maupun nirkabel sebagai medium transmisi&nbsp;data, dan terdapat perangkat lunak sistem operasi jaringan akan membentuk sebuah&nbsp;jaringan komputer yang sederhana. Apabila ingin membuat jaringan komputer yang&nbsp;lebih luas lagi jangkauannya, maka diperlukan peralatan tambahan seperti Hub,&nbsp;Bridge, Switch, Router, Gateway sebagai peralatan interkoneksinya.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Sejarah jaringan komputer bermula dari lahirnya konsep jaringan komputer&nbsp;pada tahun 1940-an di Amerika yang digagas oleh sebuah proyek pengembangan&nbsp;komputer MODEL I di laboratorium Bell dan group riset Universitas Harvard yang&nbsp;dipimpin profesor Howard Aiken. Pada mulanya proyek tersebut hanyalah ingin&nbsp;memanfaatkan sebuah perangkat komputer yang harus dipakai bersama. Untuk&nbsp;mengerjakan beberapa proses tanpa banyak membuang waktu kosong dibuatlah&nbsp;proses beruntun (Batch Processing), sehingga beberapa program bisa dijalankan&nbsp;dalam sebuah komputer dengan kaidah antrian.&nbsp;Kemudian pada tahun 1950-an ketika jenis komputer mulai berkembang sampai&nbsp;terciptanya super komputer, maka sebuah komputer harus melayani beberapa tempat&nbsp;yang tersedia (terminal), untuk itu ditemukan konsep distribusi proses berdasarkan&nbsp;waktu yang dikenal dengan nama TSS (Time Sharing System), Maka untuk pertama kalinya bentuk jaringan (network) komputer&nbsp;diaplikasikan. Pada sistem TSS beberapa terminal terhubung secara seri ke sebuah&nbsp;komputer atau perangkat lainnya yang terhubung dalam suatu jaringan (host)&nbsp;komputer. Dalam proses TSS mulai terlihat perpaduan teknologi komputer dan&nbsp;teknologi telekomunikasi yang pada awalnya berkembang sendiri-sendiri. Departemen&nbsp;Pertahanan Amerika, U.S. Defense Advanced Research Projects Agency (DARPA)&nbsp;memutuskan untuk mengadakan riset yang bertujuan untuk menghubungkan sejumlah&nbsp;komputer sehingga membentuk jaringan organik pada tahun 1969. Program riset ini&nbsp;dikenal dengan nama ARPANET. Pada tahun 1970, sudah lebih dari 10 komputer&nbsp;yang berhasil dihubungkan satu sama lain sehingga mereka bisa saling berkomunikasi&nbsp;dan membentuk sebuah jaringan. Dan pada tahun 1970 itu juga setelah beban&nbsp;pekerjaan bertambah banyak dan harga perangkat komputer besar mulai terasa&nbsp;sangat mahal, maka mulailah digunakan konsep proses distribusi (Distributed&nbsp;Processing). Dalam proses ini beberapa host komputer mengerjakan sebuah&nbsp;pekerjaan besar secara paralel untuk melayani beberapa terminal yang tersambung&nbsp;secara seri disetiap host komputer. Dalam proses distribusi sudah mutlak diperlukan&nbsp;perpaduan yang mendalam antara teknologi komputer dan telekomunikasi, karena&nbsp;selain proses yang harus didistribusikan, semua host komputer wajib melayani&nbsp;terminal-terminalnya dalam satu perintah dari komputer pusat.&nbsp;</p>\r\n', 'YO2XfObTB7E');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_mahasiswa`, `nilai`, `id_level`) VALUES
(10, 3, '83.33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `pilihan_a` text NOT NULL,
  `pilihan_b` text NOT NULL,
  `pilihan_c` text NOT NULL,
  `pilihan_d` text NOT NULL,
  `jawaban` text NOT NULL,
  `id_ujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `pertanyaan`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `jawaban`, `id_ujian`) VALUES
(33, 'Pihak yang meminta layanan dalam jaringan komputer disebut?', 'Client Server', 'Client', 'Server', 'Netizen', 'Client', 10),
(34, 'Apakah Nama Program riset yang dilakukan oleh Departemen Pertahanan Amerika, U.S. Defense Advanced Research Projects Agency (DARPA) dalam sejarah perkembangan Jaringan Komputer?', 'ARPANET', 'LINUX', 'CISCO', 'INTRANET', 'ARPANET', 10),
(35, 'Ada berapa klasifikasi jaringan berdasarkan cakupan area nya?', '4', '5', '6', 'Semua Salah', '6', 10),
(36, 'Klasifikasi jaringan berdasarkan cakupan areanya terdiri dari 6 klasifikasi, manakah urutan yang benar dr klasifikasi jaringan dibawah?', 'LAN, PAN, CAN, MAN, WAN, GAN', 'MAN, WAN, CAN, GAN, LAN, PAN', 'GAN, WAN, CAN, MAN, LAN, PAN', 'PAN, LAN, CAN, MAN, WAN, GAN', 'PAN, LAN, CAN, MAN, WAN, GAN', 10),
(37, 'Personal area network (PAN) adalah jaringan komunikasi satu perangkat lain dengan perangkat lainnya dalam jarak...............?', 'Yang sangat jauh', 'Yang sangat luas', 'Yang cukup besar', 'Yang sangat dekat', 'Yang sangat dekat', 10),
(38, 'Berapakah kisaran jangkauan Jaringan LAN ?', '100 - 300 meter', '300 - 500 meter', '500-1000 meter', '1000-1500 meter', '100 - 300 meter', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sub_level`
--

CREATE TABLE `sub_level` (
  `id_sub_level` int(11) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `ref` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_level`
--

INSERT INTO `sub_level` (`id_sub_level`, `jenis`, `ref`, `urutan`, `id_level`) VALUES
(2, 'Materi', 3, 2, 1),
(17, 'Materi', 4, 3, 1),
(18, 'Materi', 5, 4, 1),
(23, 'Materi', 10, 1, 1),
(26, 'Latihan', 10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `nama_ujian` varchar(50) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `nama_ujian`, `waktu`) VALUES
(10, 'Latihan Dasar', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_administrator`);

--
-- Indexes for table `balasan`
--
ALTER TABLE `balasan`
  ADD PRIMARY KEY (`id_balasan`),
  ADD KEY `id_komentar` (`id_komentar`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_materi` (`id_materi`),
  ADD KEY `id_siswa` (`id_mahasiswa`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_siswa` (`id_mahasiswa`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id_ujian` (`id_ujian`);

--
-- Indexes for table `sub_level`
--
ALTER TABLE `sub_level`
  ADD PRIMARY KEY (`id_sub_level`),
  ADD KEY `id_chapter` (`id_level`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id_administrator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `balasan`
--
ALTER TABLE `balasan`
  MODIFY `id_balasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `sub_level`
--
ALTER TABLE `sub_level`
  MODIFY `id_sub_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `balasan`
--
ALTER TABLE `balasan`
  ADD CONSTRAINT `balasan_ibfk_1` FOREIGN KEY (`id_komentar`) REFERENCES `komentar` (`id_komentar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_materi`) REFERENCES `materi` (`id_materi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `soal_ibfk_1` FOREIGN KEY (`id_ujian`) REFERENCES `ujian` (`id_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_level`
--
ALTER TABLE `sub_level`
  ADD CONSTRAINT `sub_level_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
