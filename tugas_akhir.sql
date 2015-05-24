-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2013 at 08:18 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tugas_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'abb1fbe308b6990ee2ff8253fbd242c8');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` int(3) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(50) NOT NULL DEFAULT '""',
  `posted` varchar(11) NOT NULL,
  PRIMARY KEY (`id_artikel`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `tgl`, `judul`, `isi`, `foto`, `posted`) VALUES
(1, '2012-09-03', 'Welcome To SIAKAD', '<p align="justify">Delapan macam kado ini adalah hadiah terindah dan tak ternilai bagi\r\norang-orang yang Anda sayangi.</p>\r\n<b>KEHADIRAN</b>\r\n<p align="justify">Kehadiran orang yang dikasihi rasanya adalah kado yang tak ternilai\r\nharganya. Memang kita juga bisa hadir di hadapannya lewat surat, telepon,\r\nfoto atau faks. Namun dengan berada di sampingnya, anda dan dia dapat\r\nberbagi perasaan, perhatian dan kasih sayang secara lebih utuh dan\r\nintensif. Jadilah kehadiran anda sebagai pembawa kebahagiaan.</p>\r\n<b>MENDENGAR</b>\r\n<p align="justify">Sedikit orang yang mampu memberikan kado ini. Sebab, kebanyakan orang\r\nlebih suka didengarkan, ketimbang mendengarkan. Dengan mencurahkan\r\nperhatian pada segala ucapannya, secara tak langsung kita juga telah\r\nmenumbuhkan kesabaran dan kerendahan hati. Untuk bisa mendengar\r\ndengan baik, pastikan anda dalam keadaan betul-betul rileks dan bisa\r\nmenangkap utuh apa yang bisa disampaikan. Tatap wajahnya. Tidak perlu\r\nmenyela, mengkritik, apalagi menghakimi. Biarkan ia menuntaskannya, ini\r\nmemudahkan anda memberikan tanggapan yang tepat setelah itu. Tidak\r\nharus berupa diskusi atau penilaian. Sekedar ucapan manispun akan\r\nterdengar manis baginya.</p>\r\n<b>DIAM</b>\r\n<p align="justify">Seperti kata-kata, di dalam diam juga ada kekuatan. Diam bisa dipakai\r\nuntuk menghukum, mengusir atau membingungkan orang. Tapi lebih dari\r\nsegalanya, diam juga bisa menunjukkan kecintaan kita pada seseorang\r\nkarena memberinya "ruang". Terlebih jika sehari-hari kita sudah terbiasa\r\ngemar menasehati, mengatur, mengkritik bahkan mengomel.</p>\r\n<b>KEBEBASAN</b>\r\n<p align="justify">Mencintai seseorang bukan berarti memberi kita hak penuh untuk memiliki\r\natau mengatur kehidupan orang bersangkutan. Bisakah kita mengaku\r\nmencintai seseorang jika kita selalu mengekangnya? Memberi kebebasan\r\nadalah salah satu perwujudan cinta. Makna kebebasan bukanlah "Kau bebas berbuat semaumu". Lebih dalam dari itu, memberi kebebasan adalah\r\nmemberinya kepercayaan penuh untuk bertangung jawab atas segala hal\r\nyang ia putuskan atau lakukan.</p>\r\n<b>KEINDAHAN</b>\r\n<p align="justify">Siapa yang tak bahagia, jika orang yang disayangi tiba-tiba tampil lebih\r\nganteng atau cantik? Tampil indah dan rupawan juga merupakan sebuah\r\nkado yang indah. Selain keindahan penampilan pribadi, andapun bisa\r\nmenghadiahkan keindahan suasana di rumah. Vas dan bunga segar cantik di\r\nruang keluarga atau meja makan yang tertata indah, misalnya.</p>\r\n<b>TANGGAPAN POSITIF</b>\r\n<p align="justify">Tanpa sadar, sering kita memberikan penilaian negatif terhadap pikiran,\r\nsikap atau tindakan orang yang kita sayangi. Seolah-olah tidak ada yang\r\nbenar dari dirinya dan kebenaran mutlak hanya pada kita. Kali ini, coba\r\nhadiahkan tanggapan positif. Nyatakan dengan jelas dan tulus. Cobalah\r\ningat, berapa kali dalam seminggu terakhir anda mengucapkan terima kasih\r\natas segala hal yang dilakukannya demi anda. Ingat-ingat pula, pernahkah\r\nanda memujinya. Kedua hal itu, ucapan terima kasih dan pujian (dan juga\r\npermintaan maaf) adalah kado indah yang sering terlupakan.</p>\r\n<b>KESEDIAAN MENGALAH</b>\r\n<p align="justify">Tidak semua masalah layak menjadi bahan pertengkaran. Apalagi sampai\r\nmenjadi pertengkaran yang hebat. Bila anda memikirkan hal ini, berarti\r\nanda siap memberikan kado "kesediaan mengalah". Kesediaan untuk\r\nmengalah juga dapat melunturkan sakit hati dan mengajak kita menyadari\r\nbahwa tidak ada manusia yang sempurna di dunia ini.,</p>\r\n<b>SENYUMAN</b>\r\n<p align="justify">Percaya atau tidak, kekuatan senyuman amat luar biasa. Senyuman,\r\nterlebih yang diberikan dengan tulus, bisa menjadi pencair hubungan yang\r\nbeku, pemberi semangat dalam keputusasaan, pencerah suasana muram,\r\nbahkan obat penenang jiwa yang resah. Senyuman juga merupakan isyarat\r\nuntuk membuka diri dengan dunia sekeliling kita. Kapan terakhir kali anda\r\nmenghadiahkan senyuman manis pada orang yang dikasihi?</p>', '', 'admin'),
(2, '2012-09-11', 'SMS Gateway Siakad', '<b>Kebun yang subur</b>\r\n<p align="justify">Seorang perempuan sangat galau ketika tomat yang ditanamnya nggak bisa matang memerah. Padahal di kebun lelaki tetangga sebelah, tomatnya dengan cepat matang dan berwarna merah menggiurkan.Akhirnya dia pergi menemui lelaki tetangga sebelah untuk mencari tahu rahasianya."Ah mudah saja kok. Tiap hari, dua kali sehari, aku tunjukkan Buyung-ku dan buah-buah tomat itu memerah karena malu. Coba aja." "Aneh amat. Tapi tak ada salahnya aku coba," pikir perempuan tersebut sambil berterimakasih dan pamit pulang. Seminggu kemudian si lelaki mampir ke rumah perempuan tetangganya untuk mengetahui bagaimana hasil dari apa yang telah dia sarankan. "Nggak manjur sih. Tomatku masih tetap hijau, tapi timunku menjadi cepat besar."</p>\r\n<b>Paha dan usia</b>\r\n<p align="justify">Seorang perempuan baru saja menjalani operasi plastik di wajahnya. Keluar dari rumah sakit, dia ingin menguji penampilannya yang baru. Perempuan tersebut mampir ke sebuah toko baju. Sambil memilih-milih baju, dia bertanya kepada pramuniaga,"Coba tebak, berapa umur saya?" Mengamati sejenak, parmuniaga tersebut menjawab, "34 tahun." "Salah. Umur saya sebenarnya sudah 47 tahun," kata perempuan tersebut senang.Kemudian dia pergi ke McDonald untuk makan siang. Sebelum memesan makanan, dia minta pramusaji menebak. "29 tahun," jawabnya. "47 tahun," jawab si perempuan. Bertambah senanglah dia. Dalam perjalanan pulang, ketika mau menyeberang jalan, si wanita melihat lelaki berumur yang juga akan menyeberang jalan. Sambil menunggu lampu merah, si perempuan iseng-iseng meminta si lelaki tua untuk menebak umurnya."Mata saya sudah rabun, jadi sulit hanya dengan melihat wajah. Tapi saya bisa menebak umur perempuan dengan mengelus pahanya," kata si lelaki.Kebetulan nggak ada orang lain dan perempuan tersebut sedang memakai rok mini, maka didorong oleh rasa ingin tahunya, si perempuan mempersilakan si lelaki tua untuk meraba pahanya. Setelah beberapa saat meraba kedua paha, ke atas dan ke bawah,lelaki tersebut berkata dengan tenang, "Umurmu 47 tahun." "Kok tahu sih?" "Aku antri di belakangmu waktu makan siang di McD tadi."</p>\r\n<b>Kekuatan sapi jantan</b>\r\n<p align="justify">Sepasang suami istri pergi ke sebuah pameran tentang binatang-binatang ternak.Ketika masuk ke deretan sapi jantan, keterangan pada sapi yang pertama berbunyi: Tahun lalu kawin sebanyak 50 kali. Kamu "bisa belajar dari sapi ini," kata si istri kepada suaminya. Mereka pun melanjutkan melihat-lihat dan sapi berikutnya bertuliskan: Mampu kawin 75 kali setahun. "Itu berarti lebih dari enam kali sebulan. Sapi ini benar-benar bisa kamu jadikan contoh," kata si istri lagi kepada suaminya, yang diam saja. Sapi ketiga yang mereka temui ternyata malah lebih hebat lagi.Keterangan yang ada berbunyi: Tahun lalu mampu kawin sebanyak 365 hari."Wow, 365 kali setahun berarti sekali setiap hari. Hebat ya?" tanya si istri. "Tanya dulu sama pemiliknya, kawinnya sama sapi betina yang sama apa nggak??"</p>\r\n<b>Tokoh politik</b>\r\n<p align="justify">Sejumlah tokoh politik bermaksud untuk melakukan kunjungan ke suatu daerah terpencil. Ketika melewati suatu jalan yang licin, tiba-tiba bis yang mereka tumpangi slip, terguling-guling dan akhirnya terbalik di sebuah sawah milik seorang petani tua. Petani tua tersebut kemudian menggali lubang dan secara massal menguburkan mereka semua. Beberapa hari kemudian aparat kepolisian dari kota terdekat\r\ndatang berpatroli. Mereka melihat bis yang terguling dan bertanya kepada petani tua si empunya sawah, "Ke mana penumpang bis ini semua?" "Di sana, saya kubur semuanya," jawab si petani.\r\n"Lho semuanya meninggal?," tanya seorang polisi.\r\nPetani tua tersebut mencoba mengingat-ingat, kemudian berkata, "Kayaknya sih\r\nada beberapa yang berkata bahwa mereka belum mati. Tapi Bapak tahu kan\r\npolitikus; mereka semua kan pembohong."</p>\r\n<b>Pernikahan</b>\r\n<p align="justify">Ada yang mengatakan bahwa menikah itu sama dengan judi, bisa untung, bisa\r\nbuntung. Berikut ini pendapat lain tentang pernikahan:\r\nPernikahan itu bagaikan masuk ke sebuah restoran mewah, Anda memesan\r\nmakanan yang Anda inginkan. Setelah pesanan datang, ternyata Anda\r\nmenginginkan apa yang dipesan pengunjung lain di meja sebelah.\r\nPernikahan yang bahagia adalah keseimbangan antara memberi dan menerima;\r\nsuami memberi dan istri menerima.\r\nTahun pertama pernikahan, suami bicara, istri mendengarkan. Tahun kedua, istri\r\nbicara, suami mendengarkan. Tahun selanjutnya dua-duanya bicara dan tetengga\r\nmendengarkan.\r\nSetelah bertengkar hebat, seorang istri berkata: "Betapa bodohnya aku, mau\r\nmenikah denganmu." Si suami menjawab, "Iya, ya. Kenapa aku tidak menyadarinya?" Lelaki yang sudah menikah, walaupun dia berganti pekerjaan berkali-kali, ''bos''nya tetap sama. Jika seorang lelaki membukakan pintu mobil untuk istrinya, ada dua kemungkinan: mobilnya yang baru atau istrinya yang baru.</p>\r\n<b>Ayam gay</b>\r\n<p align="justify">Menganggap ayam jagonya sudah terlalu tua untuk menjantani lebih dari sepuluh\r\nayam betinanya, seorang petani bermaksud menambah satu lagi ayam jago yang\r\nmasih muda.\r\nKetika ayam jago muda dimasukkan ke kandang, si jago tua mendekatinya, "Aku\r\nyakin kamu nggak akan sanggup menjantani seluruh ayam betina itu. Udahlah\r\nsisakan dua aja buatku."\r\n"Nggak bisa. Masamu sudah berlalu, sadar dong, semua betina itu milikku," kata\r\njago muda.\r\n"Begini saja. Kita balapan. Siapa yang menang boleh memiliki semua betina."\r\n"Boleh. Kamu duluan deh," kata jago muda dengan pongahnya.\r\nJago tua mulai berlari dan diikuti oleh jago muda dari belakang. Ketika sudah\r\nhampir menyalip jago tua, tiba-tiba si petani menangkap si jago muda sambil\r\nmenggerutu, "Ayam aneh, bukannya ngejar yang betina..."</p>\r\n<b>Betet pelacur</b>\r\n<p align="justify">Seorang perempuan sangat risau dengan dua ekor betet betinanya yang selalu berkata: "Kami pelacur, siapa mau senang-senang?" Suatu hari si perempuan bertemu dengan seorang pemuka agama dan\r\nmenceritakan masalah yang dia hadapi berkaitan dengan burung betetnya.\r\n"Saya punya dua ekor burung betet jantan yang kerjanya berdoa terus. Mungkin dengan menyatukan mereka bisa mengubah perangai betetmu," kata pemuka agama.Perempuan tersebut menyambut baik usulan tersebut dan membawa kedua betetnya ke rumah si pemuka agama.Kedua betet betina itu pun dimasukkan ke dalam kandang betet jantan.Begitu betet betina masuk, betet jantan hijau berkata kepada temannya, "So, kita nggak perlu lagi berdoa. Sudah dikabulkan nih."\r\n</p>\r\n<b>Mencabuli komputer</b>\r\n<p align="justify">Tidak bisa lagi menahan sakit di tangannya, Maman bermaksud pergi ke dokter\r\n"Jangan pergi ke dokter, mahal," kata temannya.\r\n"Sekarang ada cara yang canggih untuk diagnosa segala macam penyakit. Hanya\r\ndengan memasukkan uang seribu rupiah dan contoh urin, sebuah mesin\r\nberkomputer bisa menemukan apa penyakitmu."\r\nDengan pikiran bahwa tidak ada ruginya untuk mencoba, Maman kemudian pergi ke\r\ntoko obat tempat komputer diagnosa tersebut berada. Dia memasukkan uang\r\nseribuan, kemudian menuangkan contoh urinnya ke mesin yang disediakan.\r\nBeberapa saat kemudian, layar komputer berkedip-kedip dan selembar kertas\r\nkeluar.\r\nTertulis di kertas tersebut: ''Tangan Anda hanya sedikit terkilir. Rendam di air\r\nhangat dua kali sehari dan hindari mengangkat barang-barang yang berat. Dalam\r\ndua minggu, lenganmu akan baik kembali.''\r\nMaman merasa bahwa mesin tersebut adalah salah satu bentuk tipuan saja. Karena\r\npenasaran dan ingin membuktikan bahwa mesin tersebut tipuan, Maman mencoba\r\nsekali lagi. Kali ini dia mencampur air kran dengan urin anjingnya, istrinya, anak\r\nperempuannya, dan spermanya sendiri dari hasil masturbasi.\r\nTulisan yang keluar berbunyi: ''Air keran Anda mengandung logam, beri filter.\r\nAnjing Anda cacingan, beri dia vitamin. Anak perempuan Anda mengkonsumsi\r\nnarkoba, bawa ke pusat rehabilitasi. Istri Anda hamil, tapi dengan lelaki lain, bawa\r\ndia ke pengadilan agama. Dan kalau sekali lagi Anda mencabuli saya, tangan Anda\r\ntidak akan sembuh sampai kapanpun.''</p>\r\n<b>Emang gua pembantu?</b>\r\n<p align="justify">"Mas, atapnya ada yang bocor tuh," kata Ira kepada suaminya pada suatu hari\r\nMinggu pagi.\r\n"Emang gua tukang betulin rumah," jawab suaminya.\r\n"Pohon di depan rumah juga perlu ditebang tuh, Mas. Sudah terlalu rimbun," kata\r\nIra lagi. "Emang aku tukang kebun," kata suaminya sambil ngeloyor pergi. "Aku\r\npergi dulu."\r\nKetika kembali malam harinya, Ira bilang pada suaminya bahwa tetangga depan\r\nrumah telah menambal atap rumah yang bocor dan menebang ranting pohon yang\r\nrimbun.\r\n"Kamu bayar berapa?"\r\n"Dia bilang aku bisa milih. Tidur dengannya atau membuatkan dia kue."\r\n"Lalu kamu bikinkan kue apa?"\r\n"Emangnya gua pembantu."\r\n</p>\r\n\r\n<b>Keistimewaan lelaki dibanding perempuan</b>\r\n<p align="justify">\r\nKata orang (KO), lelaki mempunyai 12 keistimewaan dibandingkan perempuan.<br />\r\n1. Meja kerja lelaki berantakan. KO: Dia memang pekerja keras.\r\nMeja kerja perempuan berantakan. KO: Cewek apa''an tuh? Merapikan meja aja\r\nnggak becus...<br />\r\n2. Lelaki bekerja menikah. KO: Dia pasti akan bekerja lebih baik karena hidupnya\r\nbakalan lebih teratur.\r\nPerempuan bekerja menikah. KO: Duuhhh...paling nanti habis melahirkan keluar\r\njuga dia... <br />\r\n3. Lelaki ngobrol saat jam kerja. KO: Kalau udah ngomongin bisnis, lupa makan\r\nsiang.\r\nPerempuan ngobrol saat jam kerja. KO: Dasar tukang ngrumpi!!!<br />\r\n4. Lelaki nggak ada di meja kerja. KO: Sedang tugas luar.\r\nPerempuan nggak ada di meja kerja. KO: Jangan-jangan ngluyur ke mall.<br />\r\n5. Lelaki keluar dapat pekerjaan baru. KO: Memang pintar cari prospek dia...\r\nPerempuan keluar dapat pekerjaan baru. KO: Emang perempuan nggak bisa\r\ndipercaya.<br />\r\n6. Foto keluarga di meja laki-laki. KO: Hem...bapak teladan and setia.\r\nFoto keluarga di meja perempuan. KO: Ah dia sih memang lebih mementingkan\r\nkeluarga daripada pekerjaan...<br />\r\n7. Lelaki nongkrong di depan komputer. KO: Memang kalo ide sedang datang suka\r\nlupa waktu.\r\nPerempuan nongkrong di depan komputer. KO: Wah ... kayak lelaki aja.<br />\r\n8. Lelaki selingkuh. KO: Memang kodratnya...\r\nPerempuan selingkuh. KO: Idiiiihhhh amit-amit.<br />\r\n9. Lelaki membujang usia tiga lima. KO: Matang.\r\nPerempuan membujang usia tiga lima. KO: Perawan tua.<br />\r\n10. Lelaki banyak teman lawan jenis. KO: Pasti humoris, enak diajak ngomong dan\r\npantes diajak jalan. Perempuan banyak teman lawan jenis. KO: Piala bergilir.<br />\r\n11. Lelaki dapat promosi jabatan. KO: Memang kalau prestasi bagus, rejeki nggak\r\nakan kemana.\r\nPerempuan dapat promosi jabatan. KO: Ssstt Boss ada mau<br />\r\n12. Lelaki berkepala botak. KO: Lambang bonafide and matang.\r\nPerempuan berkepala botak. KO: Baru kena tipus &#36961;ali</p>\r\n<b>Kecermatan</b>\r\n<p align="justify">Seorang profesor sedang memberikan pelajaran autopsi (bedah mayat) kepada\r\npara mahasiswa kedokteran yg mengelilinginya di dalam kelas.\r\nSang profesor berdiri si sebelah mayat yang terbaring terlungkup di atas meja.\r\n"Dalam dunia kedokteran, kita harus selalu ingat dua hal penting, pertama kita\r\nharus tegar, tidak boleh merasa jijik", kata sang profesor sambil mencolokkan\r\njarinya ke anus si mayat, lalu menjilatnya seperti menjilat es krim.\r\n"Ayo sekarang giliran kalian mempraktekkannya!" Maka dengan sangat terpaksa\r\npara mahasiswa itupun melakukan apa yg diperintahkan. Setelah semua\r\nmendapat giliran untuk melakukannya, sang profesor melanjutkan kuliahnya.\r\n"Dan hal penting yang kedua adalah... memperhatikan dengan\r\nsecermat-cermatnya!! Coba berapa di antara kalian yg memperhatikan bahwa tadi\r\nsaya mencolokkan jari telunjuk dan menjilat jari tengah??</p>\r\n<b>Hari kiamat</b>\r\n<p align="justify">Tuhan memanggil tiga orang pemimpin penting dunia dan mengatakan bahwa Dia sudah muak dengan segala masalah di dunia dan memutuskan akan menghancurkan bumi dalam waktu tiga hari.Bill Clinton kembali ke Washington, mengumpulkan rakyatnya dan berkata, "Saya mempunyai berita bagus dan berita buruk. Berita bagusnya adalah bahwa Tuhan itu benar-benar ada. Sedangkan berita buruknya kita telah banyak berbuat kesalahan dan hari kiamat akan tiba dalam tiga hari ini." Jiang Zemin kembali ke Cina dan berkata kepada rakyatnya, "Saya punya satu berita buruk dan satunya lebih buruk lagi. Berita buruknya Tuhan ternyata benar ada dan yang lebih buruk lagi, dalam tiga hari ini Dia akan menghentikan rencana kita untuk menguasai dunia." Gus Dur kembali ke Jakarta dan berkata kepada masyarakat Indonesia, "Saya mempunyai satu berita bagus dan satunya malah lebih bagus lagi. Berita bagusnya, Tuhan mengira kalau saya adalah salah satu dari tiga pemimpin penting dunia. Yang lebih bagus lagi, krismon (krisis moneter) akan berakhir tiga hari lagi"</p>', '', 'admin'),
(3, '2012-09-12', 'Pengumuman Remidi', 'Browser Mozilla Firefox sepertinya makin berkibar. Berdasarkan data terbaru dari biro penelitian Net Applications, Firefox menapak naik dengan menguasai 20,78 persen pangsa pasar browser pada bulan November, naik dari angka 19,97 persen di bulan Oktober.<br><br>Dikutip detikINET dari Afterdawn, Selasa (2/1/2/2008), Firefox kemungkinan sukses menggaet user yang sebelumnya mengandalkan browser Internet Explorer (IE) besutan Microsoft. Pasalnya, masih menurut data Net Applications, pangsa pasar IE kini menurun di bawah 70 persen untuk kali pertama sejak tahun 1998. IE sekarang menguasai 69,8 persen pangsa pasar dari sebelumnya 71,3 persen di bulan Oktober.<br><br>Padahal di masa jayanya di tahun 2003, IE pernah begitu dominan dengan menguasai 95 persen pasaran browser. Penurunan pangsa pasar IE ini disinyalir juga terkait musim liburan di AS di mana banyak perusahaan libur. Padahal browser IE banyak dipakai oleh kalangan perusahaan.<br><br>Adapun produk browser lainnya menunjukkan tren peningkatan. Apple Safari kini punya pangsa 7,13 persen dan Google Chrome sebesar 0,83 persen dari yang sebelumnya 0,74 persen. Sementara pangsa pasar Opera mengalami penurunan dari yang sebelumnya 0,75 persen menjadi 0,71 persen saja. (sumber: <a target="_blank" title="http://detikinet.com" href="http://detikinet.com">detikinet.com</a>)<br>', '', 'admin'),
(4, '2012-11-24', 'Kisah Sang PHP :D', '<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">Web pada kisah\r\nawalnya sangat menjemukan bagi orang-orang yang dinamis. Bagaimana tidak,\r\npemakainya hanya dicekoki oleh isi (<i>content</i>) halaman web yang meskipun\r\nbersifat saling terhubung dengan halaman web yang lain (<i>hyperlink</i>) tetap\r\nsaja tidak memberikan saluran bagi pengguna yang ingin mengemukakan\r\npendapatnya. Tidak ada demokrasi, karena pengguna hanya bersifat pasif dan\r\ntidak bisa berinteraksi secara aktif dalam web. </span></p>\r\n\r\n<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">Ketika akhirnya\r\nditemukan <i>tag &lt;form&gt;</i></span><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><i> </i>barulah kejemuan\r\ndan kebuntuan yang ada menjadi sirna. </span><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:\\\\\\\\&quot;\\\\&quot;\\" lang=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;DE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">Pengguna menjadi\r\nbisa secara aktif berinteraksi dengan halaman web, dan mulailah era aplikasi\r\nberbasis web yang dinamis. Secara tradisi, bahasa <i>script</i> Perl menjadi\r\nbahasa utama yang digunakan oleh <i>programmer</i> web untuk menangani\r\npemrosesan form dalam berinteraksi dengan pengguna web. Tidak diragukan lagi\r\nkedigjayaan dari Perl dalam menangani urusan ini, hal ini juga didukung dengan\r\nbegitu dominannya bahasa ini digunakan di situs-situs web yang ada. </span><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"></span>\r\n\r\n</p>\r\n<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;;mso-ansi-language:\\\\\\\\&quot;\\\\&quot;\\" lang=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;DE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">Perl bisa menjadi alat bantu yang sangat hebat di tangan ahlinya, namun\r\nakan berubah menjadi mimpi paling buruk bagi seorang <i>programmer</i> web\r\npemula yang dikejar waktu dan bosnya untuk segera merilis halaman webnya. Tidak\r\nmudah memang, mempelajari bahasa Perl, dan seringkali dibutuhkan langkah\r\npanjang dan rumit untuk sebuah maksud yang sederhana saja. Pendek kata,\r\ndibutuhkan suatu bahasa yang lebih praktis dan mudah dipelajari serta adidaya\r\nuntuk memudahkan dalam membangun sebuah aplikasi yang berbasis web. </span></p>\r\n\r\n<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">Di rimba belantara\r\nweb, tersebutlah dua bahasa yang paling kondang yang mampu menggantikan\r\ntugas-tugas Perl namun dengan tingkat kesulitan belajar yang rendah, ASP (<i>Active\r\nServer Page</i>) dan PHP (<i>PHP: Hypertext Preprocessor</i>). ASP yang\r\ndijagokan oleh Pak Bill Gates tentu saja berjalan di lingkungan sistem operasi\r\nWindows dan sampai saat ini belum terlihat akan di-<i>porting</i> ke platform\r\nyang lain. Padahal dunia web saat ini masih didominasi oleh platform UNIX dan <i>variant</i>-nya\r\ntermasuk sistem operasi <i>like UNIX</i> seperti Linux. Selain itu, untuk dapat\r\nmenggunakan ASP yang resmi, kita juga harus merelakan sebagian uang kita untuk\r\nmenambah isi kantong Pak Bill Gates. </span></p>\r\n\r\n<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;;mso-ansi-language:\\\\\\\\&quot;\\\\&quot;\\" lang=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;DE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">PHP sebagai alternatif lain memberikan solusi sangat murah (karena gratis\r\ndigunakan) dan dapat berjalan di berbagai jenis platform. Awalnya memang PHP\r\nberjalan di sistem UNIX dan <i>variant</i>-nya, namun kini dapat berjalan\r\ndengan mulus di lingkungan sistem operasi Windows. Suatu nilai tambah yang luar\r\nbiasa karena proses <i>development</i> program berbasis web dapat dilakukan\r\nlintas sistem operasi. Pak Fulan, misalnya, bisa mencuri waktu memrogram\r\naplikasi untuk usaha pribadinya di kantor yang menggunakan sistem operasi\r\nWindows dan meneruskannya di rumahnya dengan komputer yang menggunakan sistem\r\noperasi Linux. </span><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"></span></p>\r\n\r\n<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;;mso-ansi-language:\\\\\\\\&quot;\\\\&quot;\\" lang=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;DE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">Dengan luasnya cakupan sistem operasi yang mampu menjalankan PHP dan\r\nditambah begitu lengkapnya fungsi-fungsi program (tersedia lebih dari 400\r\nfungsi di PHP yang sangat berguna) tidak heran jika PHP ini semakin menjadi <i>trend</i>\r\ndi kalangan <i>programmer</i> web. Konon, saat ini lebih dari satu juta situs\r\nweb menggunakan PHP sebagai <i>script</i> pemrogramannya. </span><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"></span></p>\r\n\r\n<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">Pak Rasmus Lerdorf\r\nadalah bapak penemu awal bahasa PHP ini, yang bermula dari keinginan sederhana\r\nPak Lerdorf untuk mempunyai alat bantu (<i>tools</i>) dalam memonitor\r\npengunjung yang melihat situs web pribadinya. Inilah sebabnya pada awal\r\npengembangannya, PHP merupakan singkatan dari <i>Personal Home Page tools</i>,\r\nsebelum akhirnya dipaksakan menjadi singkatan rekursif dari <i>PHP: Hypertext\r\nPreprocessor</i>. Pertengahan tahun 1995 dirilis PHP/FI (FI adalah singkatan\r\ndari <i>Form Interpreter</i>) yang memiliki kemampuan dasar membangun aplikasi\r\nweb, memproses form, dan mendukung database mSQL. </span></p>\r\n\r\n<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\">Antusias komunitas\r\ninternet terhadap bahasa PHP ini begitu besar, sehingga Pak Rasmus Lerdorf\r\nakhirnya menyerahkan pengembangan PHP ini kepada sebuah team pemrograman dalam\r\nkerangka gerakan <i>open source</i>. Team ini membangun kembali PHP dari awal\r\ndengan menulis ulang program <i>parser</i> PHP Hasilnya adalah PHP 3.0 yang\r\nmemiliki dukungan lebih luas lagi terhadap database yang ada termasuk MySQL dan\r\nOracle. PHP 4.0 sebagai versi lanjutan dari PHP 3.0 dirilis setelah itu dengan\r\nmenggunakan mesin <i>scripting</i> Zend (akronim dari pengembangnya, Zeev\r\nSuraski dan Andi Gutmans) untuk memberikan kinarja yang lebih cepat dan lebih\r\nbaik Versi terakhir ini mampu mendukung server web selain Apache dan secara <i>built-in</i>\r\ntelah mampu menangani manajemen <i>session</i>.</span></p>\r\n<p style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;text-align:justify;text-justify:kashida;text-kashida:0%\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;font-size:8.5pt;font-family:\\\\\\\\\\\\\\\\&quot;Verdana\\\\\\\\\\\\\\\\&quot;,\\\\\\\\\\\\\\\\&quot;sans-serif\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\"><br /></span></p>', '1353767865php-ilmuweb.net_.png', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id_comment` int(5) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `id_artikel` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `induk_comment` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_comment`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `tgl`, `id_artikel`, `nama`, `email`, `website`, `comment`, `induk_comment`) VALUES
(1, '2012-10-19', 1, 'wervgwer', 'wevw@sedvfwse.wefwe', 'http://ascsaedcf.ascsa', 'sdacvaslevkWPEWVNMaWe/tgv\\''nMWEVGNAOLWRBnaoebjnra;/ebnrav;qaoVEDWAVawedvbwdr', 0),
(2, '2012-10-21', 1, 'ascas', 'asxa@fgg.acs', '', 'asxcascasjnbcolashcolaushcolpaSc askjcnbasjlcx sjsnxckajsncajsncxas xkasaskc', 0),
(3, '2012-10-22', 2, 'wefw', 'ewfwe@aedf.asefd', 'http://ewfw.sd', 'wefwesadfWERFWE', 0),
(4, '2012-10-25', 1, 'sfdec', 'sdecvfsw@asdc.dc', '', 'sdvfcerfgreaGQV3G4RFQ34GQ', 0),
(5, '2012-10-25', 1, 'EWFDWE', 'ASDC@ASD.DECFWSE', '', 'SWDVFWESDVRBESARBVWAESR', 0),
(6, '2012-10-25', 2, 'saedfw', 'wefwe@asef.sae', '', 'sdvfwsergerg5he45rt', 0),
(7, '2012-10-25', 3, 'efwefw', 'sadas@sas.as', '', 'dvcsadevfwsadefc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `daemons`
--

CREATE TABLE IF NOT EXISTS `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gammu`
--

CREATE TABLE IF NOT EXISTS `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` char(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kd_mapel` char(3) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `kd_mapel`) VALUES
('g016', 'Imam Prasetyo, S.Pd', 'p06'),
('g015', 'Sukatno, S.Pd', 'p02'),
('g014', 'Slamet Abidin, S.Pd', 'p05'),
('g013', 'Arif Waryanto, S.Pd', 'p11'),
('g012', 'Joko Haribowo, S.Pd', 'p10'),
('g011', 'Ikah Suhartatik, S.Kom', 'p09'),
('g010', 'Sis Pinaryo, S.Pd', 'p08'),
('g009', 'Feri Kurniawan, S.Pd', 'p07'),
('g008', 'Indra Yatini, S.Pd', 'p03'),
('g007', 'Wahyu Nurcahyo, S.Pd', 'p06'),
('g006', 'Nur Rakhmad, S.Pd', 'p05'),
('g005', 'Matius, S.Pd', 'p04'),
('g004', 'Hendri Winarto, S.Kom', 'p03'),
('g003', 'Bayu Septarini, S.Pd', 'p01'),
('g002', 'Widyastuti, S.Pd', 'p01'),
('g001', 'Puji Rahayu, S.Pd', 'p02'),
('g017', 'Bambang Hadi, S.Pd', 'p07'),
('g018', 'Wawan Rianto, S.Pd', 'p09'),
('g019', 'Afik Efendi, S.Pd', 'p03'),
('g020', 'Sendi Bastian, S.Pd', 'p01');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE IF NOT EXISTS `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`) VALUES
('2013-01-14 16:13:13', '2013-01-14 16:03:12', '004E0069006C006100690020003000300031', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nilai 001', 1, '', 'true'),
('2013-01-14 16:13:13', '2013-01-14 16:12:41', '004E0069006C006100690020003000300031', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nilai 001', 2, '', 'true'),
('2013-01-14 16:14:55', '2013-01-14 16:14:39', '004E0069006C006100690020003000300035', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nilai 005', 3, '', 'true'),
('2013-01-14 16:48:51', '2013-01-14 16:17:45', '006E0069006C00610069002000730070006100730069002000300030006E', '+6287758822228', 'Default_No_Compression', '', '+62818445009', -1, 'nilai spasi 00n', 4, '', 'true'),
('2013-01-15 11:20:44', '2013-01-14 22:28:10', '0053007500620020006A006F0020006C0061006C00690020006B0061007300650074002E0065002C', '+6285203333031', 'Default_No_Compression', '', '+6281100000', -1, 'Sub jo lali kaset.e,', 5, '', 'true'),
('2013-01-15 11:20:44', '2013-01-15 01:00:00', '0041006B0061006E0020006100640061002000790061006E00670020006C006500620069006800200053004500520055002000640061007200690020004900730069002000500075006C0073006100200042006F006E00750073002000500075006C007300610021002000500061007300740069006B0061006E0020006E006F006D006F0072006D007500200074006500740061007000200061006B00740069006600200075006E00740075006B0020006D0065006E00640061007000610074006B0061006E00200069006E0066006F002000700072006F006D006F0020007400650072006200610072007500200058004C002E0020004D0041003000310033', 'XL-Axiata', 'Default_No_Compression', '', '+62818445009', -1, 'Akan ada yang lebih SERU dari Isi Pulsa Bonus Pulsa! Pastikan nomormu tetap aktif untuk mendapatkan info promo terbaru XL. MA013', 6, '', 'true'),
('2013-01-15 11:20:44', '2013-01-15 05:11:27', '004E0069006C006100690020003000300034', '+628977942261', 'Default_No_Compression', '', '+628964011098', -1, 'Nilai 004', 7, '', 'true'),
('2013-01-15 11:24:26', '2013-01-15 11:24:22', '00420061006C006500730065006E00200074006F', '+6285335367235', 'Default_No_Compression', '', '+6281100000', -1, 'Balesen to', 8, '', 'true'),
('2013-01-15 11:25:18', '2013-01-15 11:25:13', '006D0061006E0061003F002000470061006B0020006100640061002000620075006B00740069', '+6285335367235', 'Default_No_Compression', '', '+6281100000', -1, 'mana? Gak ada bukti', 9, '', 'true'),
('2013-01-15 11:27:10', '2013-01-15 11:26:57', '006900790061002000740061007000690020006D0061006E0061003F', '+6285335367235', 'Default_No_Compression', '', '+6281100000', -1, 'iya tapi mana?', 10, '', 'true'),
('2013-01-15 11:31:15', '2013-01-15 11:31:04', '00540069007200740061002000750064006100680020006B00650073006900740075002000620065006C006F006D003F', '+6285335367235', 'Default_No_Compression', '', '+6281100000', -1, 'Tirta udah kesitu belom?', 11, '', 'true'),
('2013-01-15 11:32:28', '2013-01-15 11:32:02', '0053007500700020007500720075006E00670020006D0075006C006500680020006F002000770065', '+6287758393356', 'Default_No_Compression', '', '+62818445009', -1, 'Sup urung muleh o we', 12, '', 'true'),
('2013-01-15 11:32:28', '2013-01-15 11:32:02', '0053007500700020007500720075006E00670020006D0075006C006500680020006F002000770065', '+6287758393356', 'Default_No_Compression', '', '+62818445009', -1, 'Sup urung muleh o we', 13, '', 'true'),
('2013-01-15 11:34:17', '2013-01-15 11:33:48', '00530075007000200069006E007300740061006C0020006100760069007200610020006B0065002000650078007000720065007300200061007000200063007500730074006F006D000A00200020002000200020002A006400680079006C00750076007400680061002A', '+6287758092638', 'Default_No_Compression', '', '+62818445009', -1, 'Sup instal avira ke expres ap custom\n     *dhyluvtha*', 14, '', 'true'),
('2013-01-15 11:37:44', '2013-01-15 11:37:35', '004A006100730069006B00200062006C007300200021', '+6285335367235', 'Default_No_Compression', '', '+6281100000', -1, 'Jasik bls !', 15, '', 'true'),
('2013-01-15 11:46:53', '2013-01-15 11:46:50', '006B0061006D00750020003E002E003C', '+6285335367235', 'Default_No_Compression', '', '+6281100000', -1, 'kamu >.<', 16, '', 'true'),
('2013-01-15 11:46:53', '2013-01-15 11:46:50', '006B0061006D00750020003E002E003C', '+6285335367235', 'Default_No_Compression', '', '+6281100000', -1, 'kamu >.<', 17, '', 'true'),
('2013-01-15 11:49:24', '2013-01-15 11:48:35', '0059006F0077006900730020006E006500670020006E0067006F006E006F00200073006500730075006B002000610065002C006E0065006E00670020006E0064006900200074006F0068003F0020004D0062006900200073006F0070006F003F002000540061006700200072006F006E006F', '+6287758595213', 'Default_No_Compression', '', '+62818445009', -1, 'Yowis neg ngono sesuk ae,neng ndi toh? Mbi sopo? Tag rono', 18, '', 'true'),
('2013-01-15 11:51:01', '2013-01-15 11:50:40', '004B0061006F00730020006C0061006E0061006E006700200073007500750075007500750021002100210021', '+6287758595213', 'Default_No_Compression', '', '+62818445009', -1, 'Kaos lanang suuuuu!!!!', 19, '', 'true'),
('2013-01-15 11:52:15', '2013-01-15 11:51:47', '007700650020006D0062006900200073006F0070006F002000710020006E006500670020007700650064006F006B002000640077006500200079006F00200072006100200073007500640069', '+6287758595213', 'Default_No_Compression', '', '+62818445009', -1, 'we mbi sopo q neg wedok dwe yo ra sudi', 20, '', 'true'),
('2013-01-15 11:52:58', '2013-01-15 11:52:53', '005300750066002000210020004E0079006500620065006C0069006E002000620061006E006700650074', '+6285335367235', 'Default_No_Compression', '', '+6281100000', -1, 'Suf ! Nyebelin banget', 21, '', 'true'),
('2013-01-15 11:53:09', '2013-01-15 11:52:41', '00540061006700200070006100720061006E0069002000720065006E0065006F00200079006F', '+6287758595213', 'Default_No_Compression', '', '+62818445009', -1, 'Tag parani reneo yo', 22, '', 'true'),
('2013-01-15 11:53:09', '2013-01-15 11:52:41', '00540061006700200070006100720061006E0069002000720065006E0065006F00200079006F', '+6287758595213', 'Default_No_Compression', '', '+62818445009', -1, 'Tag parani reneo yo', 23, '', 'true'),
('2013-01-15 12:02:14', '2013-01-15 12:01:49', '0050007900650020007300750070000A00200020002000200020002A006400680079006C00750076007400680061002A', '+6287758092638', 'Default_No_Compression', '', '+62818445009', -1, 'Pye sup\n     *dhyluvtha*', 24, '', 'true'),
('2013-01-15 12:02:14', '2013-01-15 12:01:49', '0050007900650020007300750070000A00200020002000200020002A006400680079006C00750076007400680061002A', '+6287758092638', 'Default_No_Compression', '', '+62818445009', -1, 'Pye sup\n     *dhyluvtha*', 25, '', 'true'),
('2013-01-15 12:04:26', '2013-01-15 12:04:07', '00530065006B00200073007500700020006A0069006B002000610064006F0073', '+6287758595213', 'Default_No_Compression', '', '+62818445009', -1, 'Sek sup jik ados', 26, '', 'true'),
('2013-01-15 12:08:18', '2013-01-15 12:07:52', '005400780020006A00700075006B002000790068006F0077003F', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Tx jpuk yhow?', 27, '', 'true'),
('2013-01-15 12:08:18', '2013-01-15 12:07:52', '005400780020006A00700075006B002000790068006F0077003F', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Tx jpuk yhow?', 28, '', 'true'),
('2013-01-15 12:09:43', '2013-01-15 12:09:23', '004F006B0022002C002C0020006E00740065006E0020006F006E006F002000790068006F0077002C', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Ok",, nten ono yhow,', 29, '', 'true'),
('2013-01-15 12:19:22', '2013-01-15 12:18:59', '0055006B006C0065006B000A006A0061006C0075006B0020006E006F00270065002000720061006E00640079', '+6287758595213', 'Default_No_Compression', '', '+62818445009', -1, 'Uklek\njaluk no''e randy', 30, '', 'true'),
('2013-01-15 12:19:22', '2013-01-15 12:18:59', '0055006B006C0065006B000A006A0061006C0075006B0020006E006F00270065002000720061006E00640079', '+6287758595213', 'Default_No_Compression', '', '+62818445009', -1, 'Uklek\njaluk no''e randy', 31, '', 'true'),
('2013-01-15 12:24:34', '2013-01-15 12:24:07', '0073006100620061007200200079006100200073006100790061006E0067002C0020006800610074006900200068006100740069002E000A006D006100610066002000670061006B002000620069007300610020006E0065006D0065006E0069006E002000700075006C00730061006B0075002000680061006200690073002000700075006C00730061002000730069006D006200610068006B007500200068006100620069007300200069006E0069002000700075006E007900610020006500200062006100700061006B006B00750020006D006100750020006400690062006100770061002E', '+6285958599744', 'Default_No_Compression', '', '+62818445009', -1, 'sabar ya sayang, hati hati.\nmaaf gak bisa nemenin pulsaku habis pulsa simbahku habis ini punya e bapakku mau dibawa.', 32, '', 'true'),
('2013-01-15 12:27:24', '2013-01-15 12:26:57', '0073006100790061006E00670020006A0061006E00670061006E0020006D0061007200610068002E002E', '+6285958599744', 'Default_No_Compression', '', '+62818445009', -1, 'sayang jangan marah..', 33, '', 'true'),
('2013-01-15 12:31:08', '2013-01-15 12:30:49', '006B0069007400610020006B006500740065006D00750020006400690020006D0065006E007A00610020007900610020006200650073006F006B0020003A002A', '+6285958599744', 'Default_No_Compression', '', '+62818445009', -1, 'kita ketemu di menza ya besok :*', 34, '', 'true'),
('2013-01-15 12:33:06', '2013-01-15 12:32:44', '00620069006C0061006E006700200069007900610020006B0065006E0061007000610020003A002D006C', '+6285958599744', 'Default_No_Compression', '', '+62818445009', -1, 'bilang iya kenapa :-l', 35, '', 'true'),
('2013-01-15 13:03:57', '2013-01-15 13:03:52', '0055006500200047006C0065006B00690020006900620075006B', '+6282334652274', 'Default_No_Compression', '', '+6281100000', -1, 'Ue Gleki ibuk', 36, '', 'true'),
('2013-01-15 13:03:57', '2013-01-15 13:03:52', '0055006500200047006C0065006B00690020006900620075006B', '+6282334652274', 'Default_No_Compression', '', '+6281100000', -1, 'Ue Gleki ibuk', 37, '', 'true'),
('2013-01-15 13:22:26', '2013-01-15 13:22:06', '004C00670020006E0067006E00740065006E00690020006E0067006E007300740061006C0020006400720076006500720020006B007300750065006E002000730075007000210020004B0069006500200061006B00750020007400780020006A00700075006B0020006B00770065002000740072007500730020006E0061006E006700200073007500720079006100200061006200640069002000790068006F0077002C', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Lg ngnteni ngnstal drver ksuen sup! Kie aku tx jpuk kwe trus nang surya abdi yhow,', 38, '', 'true'),
('2013-01-16 09:36:45', '2013-01-16 09:36:21', '004E0069006C006100690020003000300031', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nilai 001', 39, '', 'true'),
('2013-01-16 09:37:38', '2013-01-16 09:37:19', '004100700067007400700074006A0070006700740067000A006B0067006A0067000A0067006A0067006A0067', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Apgtptjpgtg\nkgjg\ngjgjg', 40, '', 'true'),
('2013-01-16 09:38:30', '2013-01-16 09:38:04', '004E0069006C006100690020003900390039', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nilai 999', 41, '', 'true'),
('2013-01-16 09:39:33', '2013-01-16 09:39:12', '004E0069006C006100690020006A0061006E006300300078', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nilai janc0x', 42, '', 'true'),
('2013-01-16 09:41:48', '2013-01-16 09:41:32', '006E0069006C006100690020003000350032', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'nilai 052', 43, '', 'true'),
('2013-01-16 09:44:04', '2013-01-16 09:43:40', '006E0069006C006100690020003800350033', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'nilai 853', 44, '', 'true'),
('2013-01-16 09:44:56', '2013-01-16 09:44:40', '006E0069006C006100690020003000390039', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'nilai 099', 45, '', 'true'),
('2013-01-16 09:45:38', '2013-01-16 09:45:19', '006E0069006C006100690020003000390039', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'nilai 099', 46, '', 'true'),
('2013-01-16 09:46:20', '2013-01-16 09:45:58', '006E0069006C006100690020003000390030', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'nilai 090', 47, '', 'true'),
('2013-01-16 09:48:57', '2013-01-16 09:48:37', '003C0069003E0061006B00750020006D0061006E0069006500730020003C002F0069003E', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, '<i>aku manies </i>', 48, '', 'true');

--
-- Triggers `inbox`
--
DROP TRIGGER IF EXISTS `inbox_timestamp`;
DELIMITER //
CREATE TRIGGER `inbox_timestamp` BEFORE INSERT ON `inbox`
 FOR EACH ROW BEGIN
    IF NEW.ReceivingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.ReceivingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `kd_kelas` char(2) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `wali` char(5) NOT NULL,
  PRIMARY KEY (`kd_kelas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kd_kelas`, `nama_kelas`, `wali`) VALUES
('01', 'VII A', 'g017'),
('02', 'VII B', 'g007'),
('03', 'VII C', 'g009'),
('04', 'VIII A', 'g013'),
('05', 'VIII B', 'g008'),
('06', 'VIII C', 'g010'),
('07', 'IX A', 'g004'),
('08', 'IX B', 'g006'),
('09', 'IX C', 'g005');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE IF NOT EXISTS `mapel` (
  `kd_mapel` char(3) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_mapel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`kd_mapel`, `nama_mapel`) VALUES
('p01', 'matematika'),
('p02', 'fisika'),
('p03', 'tik'),
('p04', 'biologi'),
('p05', 'bhs. Inggris'),
('p06', 'bhs. Indonesia'),
('p07', 'ips'),
('p08', 'olahraga'),
('p09', 'agama'),
('p10', 'pkn'),
('p11', 'seni budaya');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `nis` char(5) NOT NULL,
  `id_guru` char(5) NOT NULL,
  `nilai` float NOT NULL DEFAULT '0',
  `kd_mapel` char(3) NOT NULL,
  `kd_kelas` char(2) NOT NULL,
  `sem` char(2) NOT NULL,
  `thn` varchar(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nis`, `id_guru`, `nilai`, `kd_mapel`, `kd_kelas`, `sem`, `thn`) VALUES
('005', 'g020', 88.23, 'p01', '01', '01', '2012/2013'),
('004', 'g020', 70, 'p01', '01', '01', '2012/2013'),
('003', 'g020', 79.23, 'p01', '01', '01', '2012/2013'),
('002', 'g020', 94.56, 'p01', '01', '01', '2012/2013'),
('001', 'g020', 87.23, 'p01', '01', '01', '2012/2013'),
('006', 'g020', 90, 'p01', '01', '01', '2012/2013'),
('007', 'g020', 80, 'p01', '01', '01', '2012/2013'),
('008', 'g020', 75.34, 'p01', '01', '01', '2012/2013'),
('009', 'g020', 76, 'p01', '01', '01', '2012/2013'),
('010', 'g020', 89, 'p01', '01', '01', '2012/2013'),
('011', 'g020', 98, 'p01', '02', '01', '2012/2013'),
('012', 'g020', 78.56, 'p01', '02', '01', '2012/2013'),
('013', 'g020', 87.88, 'p01', '02', '01', '2012/2013'),
('014', 'g020', 78.98, 'p01', '02', '01', '2012/2013'),
('015', 'g020', 81, 'p01', '02', '01', '2012/2013'),
('016', 'g020', 94.23, 'p01', '02', '01', '2012/2013'),
('017', 'g020', 83, 'p01', '02', '01', '2012/2013'),
('018', 'g020', 72.34, 'p01', '02', '01', '2012/2013'),
('019', 'g020', 87, 'p01', '02', '01', '2012/2013'),
('020', 'g020', 90, 'p01', '02', '01', '2012/2013'),
('021', 'g020', 98, 'p01', '03', '01', '2012/2013'),
('022', 'g020', 87, 'p01', '03', '01', '2012/2013'),
('023', 'g020', 76, 'p01', '03', '01', '2012/2013'),
('024', 'g020', 85.34, 'p01', '03', '01', '2012/2013'),
('025', 'g020', 71.34, 'p01', '03', '01', '2012/2013'),
('026', 'g020', 72, 'p01', '03', '01', '2012/2013'),
('027', 'g020', 81.34, 'p01', '03', '01', '2012/2013'),
('028', 'g020', 91.45, 'p01', '03', '01', '2012/2013'),
('029', 'g020', 74.23, 'p01', '03', '01', '2012/2013'),
('030', 'g020', 89.34, 'p01', '03', '01', '2012/2013'),
('031', 'g003', 72.34, 'p01', '04', '01', '2012/2013'),
('032', 'g003', 87, 'p01', '04', '01', '2012/2013'),
('033', 'g003', 90, 'p01', '04', '01', '2012/2013'),
('034', 'g003', 94.56, 'p01', '04', '01', '2012/2013'),
('035', 'g003', 79.23, 'p01', '04', '01', '2012/2013'),
('036', 'g003', 70, 'p01', '04', '01', '2012/2013'),
('037', 'g003', 88.23, 'p01', '04', '01', '2012/2013'),
('038', 'g003', 90, 'p01', '04', '01', '2012/2013'),
('039', 'g003', 80, 'p01', '04', '01', '2012/2013'),
('040', 'g003', 75.34, 'p01', '04', '01', '2012/2013'),
('041', 'g003', 87, 'p01', '05', '01', '2012/2013'),
('042', 'g003', 76, 'p01', '05', '01', '2012/2013'),
('043', 'g003', 85.34, 'p01', '05', '01', '2012/2013'),
('044', 'g003', 71.34, 'p01', '05', '01', '2012/2013'),
('045', 'g003', 72, 'p01', '05', '01', '2012/2013'),
('046', 'g003', 81.34, 'p01', '05', '01', '2012/2013'),
('047', 'g003', 91.45, 'p01', '05', '01', '2012/2013'),
('048', 'g003', 74.23, 'p01', '05', '01', '2012/2013'),
('049', 'g003', 89.34, 'p01', '05', '01', '2012/2013'),
('050', 'g003', 72.34, 'p01', '05', '01', '2012/2013'),
('051', 'g003', 87, 'p01', '06', '01', '2012/2013'),
('052', 'g003', 79.23, 'p01', '06', '01', '2012/2013'),
('053', 'g003', 70, 'p01', '06', '01', '2012/2013'),
('054', 'g003', 88.23, 'p01', '06', '01', '2012/2013'),
('055', 'g003', 90, 'p01', '06', '01', '2012/2013'),
('056', 'g003', 80, 'p01', '06', '01', '2012/2013'),
('057', 'g003', 75.34, 'p01', '06', '01', '2012/2013'),
('058', 'g003', 76, 'p01', '06', '01', '2012/2013'),
('059', 'g003', 89, 'p01', '06', '01', '2012/2013'),
('060', 'g003', 98, 'p01', '06', '01', '2012/2013'),
('061', 'g002', 91.45, 'p01', '07', '01', '2012/2013'),
('062', 'g002', 74.23, 'p01', '07', '01', '2012/2013'),
('063', 'g002', 89.34, 'p01', '07', '01', '2012/2013'),
('064', 'g002', 72.34, 'p01', '07', '01', '2012/2013'),
('065', 'g002', 87, 'p01', '07', '01', '2012/2013'),
('066', 'g002', 79.23, 'p01', '07', '01', '2012/2013'),
('067', 'g002', 70, 'p01', '07', '01', '2012/2013'),
('068', 'g002', 70, 'p01', '07', '01', '2012/2013'),
('069', 'g002', 88.23, 'p01', '07', '01', '2012/2013'),
('070', 'g002', 90, 'p01', '07', '01', '2012/2013'),
('071', 'g002', 80, 'p01', '08', '01', '2012/2013'),
('072', 'g002', 75.34, 'p01', '08', '01', '2012/2013'),
('073', 'g002', 87, 'p01', '08', '01', '2012/2013'),
('074', 'g002', 76, 'p01', '08', '01', '2012/2013'),
('075', 'g002', 85.34, 'p01', '08', '01', '2012/2013'),
('076', 'g002', 71.34, 'p01', '08', '01', '2012/2013'),
('077', 'g002', 72, 'p01', '08', '01', '2012/2013'),
('078', 'g002', 81.34, 'p01', '08', '01', '2012/2013'),
('079', 'g002', 91.45, 'p01', '08', '01', '2012/2013'),
('080', 'g002', 74.23, 'p01', '08', '01', '2012/2013'),
('081', 'g002', 89.34, 'p01', '09', '01', '2012/2013'),
('082', 'g002', 72.34, 'p01', '09', '01', '2012/2013'),
('083', 'g002', 76, 'p01', '09', '01', '2012/2013'),
('084', 'g002', 85.34, 'p01', '09', '01', '2012/2013'),
('085', 'g002', 71.34, 'p01', '09', '01', '2012/2013'),
('086', 'g002', 72, 'p01', '09', '01', '2012/2013'),
('087', 'g002', 81.34, 'p01', '09', '01', '2012/2013'),
('088', 'g002', 91.45, 'p01', '09', '01', '2012/2013'),
('089', 'g002', 72.34, 'p01', '09', '01', '2012/2013'),
('090', 'g002', 87, 'p01', '09', '01', '2012/2013'),
('001', 'g001', 79.23, 'p02', '01', '01', '2012/2013'),
('002', 'g001', 70, 'p02', '01', '01', '2012/2013'),
('003', 'g001', 88.23, 'p02', '01', '01', '2012/2013'),
('004', 'g001', 90, 'p02', '01', '01', '2012/2013'),
('005', 'g001', 80, 'p02', '01', '01', '2012/2013'),
('006', 'g001', 75.34, 'p02', '01', '01', '2012/2013'),
('007', 'g001', 76, 'p02', '01', '01', '2012/2013'),
('008', 'g001', 89, 'p02', '01', '01', '2012/2013'),
('009', 'g001', 70, 'p02', '01', '01', '2012/2013'),
('010', 'g001', 88.23, 'p02', '01', '01', '2012/2013'),
('011', 'g001', 90, 'p02', '02', '01', '2012/2013'),
('012', 'g001', 80, 'p02', '02', '01', '2012/2013'),
('013', 'g001', 75.34, 'p02', '02', '01', '2012/2013'),
('014', 'g001', 76, 'p02', '02', '01', '2012/2013'),
('015', 'g001', 89, 'p02', '02', '01', '2012/2013'),
('016', 'g001', 98, 'p02', '02', '01', '2012/2013'),
('017', 'g001', 78.56, 'p02', '02', '01', '2012/2013'),
('018', 'g001', 87.88, 'p02', '02', '01', '2012/2013'),
('019', 'g001', 98, 'p02', '02', '01', '2012/2013'),
('020', 'g001', 91.45, 'p02', '02', '01', '2012/2013'),
('021', 'g001', 74.23, 'p02', '03', '01', '2012/2013'),
('022', 'g001', 89.34, 'p02', '03', '01', '2012/2013'),
('023', 'g001', 72.34, 'p02', '03', '01', '2012/2013'),
('024', 'g001', 87, 'p02', '03', '01', '2012/2013'),
('025', 'g001', 85.34, 'p02', '03', '01', '2012/2013'),
('026', 'g001', 71.34, 'p02', '03', '01', '2012/2013'),
('027', 'g001', 72, 'p02', '03', '01', '2012/2013'),
('028', 'g001', 81.34, 'p02', '03', '01', '2012/2013'),
('029', 'g001', 91.45, 'p02', '03', '01', '2012/2013'),
('030', 'g001', 72.34, 'p02', '03', '01', '2012/2013'),
('031', 'g001', 87, 'p02', '04', '01', '2012/2013'),
('032', 'g001', 85.34, 'p02', '04', '01', '2012/2013'),
('033', 'g001', 71.34, 'p02', '04', '01', '2012/2013'),
('034', 'g001', 72, 'p02', '04', '01', '2012/2013'),
('035', 'g001', 81.34, 'p02', '04', '01', '2012/2013'),
('036', 'g001', 91.45, 'p02', '04', '01', '2012/2013'),
('037', 'g001', 74.23, 'p02', '04', '01', '2012/2013'),
('038', 'g001', 89.34, 'p02', '04', '01', '2012/2013'),
('039', 'g001', 72.34, 'p02', '04', '01', '2012/2013'),
('040', 'g001', 87, 'p02', '04', '01', '2012/2013'),
('041', 'g001', 79.23, 'p02', '05', '01', '2012/2013'),
('042', 'g001', 89, 'p02', '05', '01', '2012/2013'),
('043', 'g001', 98, 'p02', '05', '01', '2012/2013'),
('044', 'g001', 78.56, 'p02', '05', '01', '2012/2013'),
('045', 'g001', 87.88, 'p02', '05', '01', '2012/2013'),
('046', 'g001', 78.98, 'p02', '05', '01', '2012/2013'),
('047', 'g001', 81, 'p02', '05', '01', '2012/2013'),
('048', 'g001', 94.23, 'p02', '05', '01', '2012/2013'),
('049', 'g001', 83, 'p02', '05', '01', '2012/2013'),
('050', 'g001', 72.34, 'p02', '05', '01', '2012/2013'),
('051', 'g001', 72.34, 'p02', '06', '01', '2012/2013'),
('052', 'g001', 72.34, 'p02', '06', '01', '2012/2013'),
('053', 'g001', 80, 'p02', '06', '01', '2012/2013'),
('054', 'g001', 75.34, 'p02', '06', '01', '2012/2013'),
('055', 'g001', 76, 'p02', '06', '01', '2012/2013'),
('056', 'g001', 89, 'p02', '06', '01', '2012/2013'),
('057', 'g001', 98, 'p02', '06', '01', '2012/2013'),
('058', 'g001', 91.45, 'p02', '06', '01', '2012/2013'),
('059', 'g001', 74.23, 'p02', '06', '01', '2012/2013'),
('060', 'g001', 89.34, 'p02', '06', '01', '2012/2013'),
('061', 'g015', 72.34, 'p02', '07', '01', '2012/2013'),
('062', 'g015', 87, 'p02', '07', '01', '2012/2013'),
('063', 'g015', 79.23, 'p02', '07', '01', '2012/2013'),
('064', 'g015', 70, 'p02', '07', '01', '2012/2013'),
('065', 'g015', 70, 'p02', '07', '01', '2012/2013'),
('066', 'g015', 80, 'p02', '07', '01', '2012/2013'),
('067', 'g015', 75.34, 'p02', '07', '01', '2012/2013'),
('068', 'g015', 76, 'p02', '07', '01', '2012/2013'),
('069', 'g015', 89, 'p02', '07', '01', '2012/2013'),
('070', 'g015', 75.34, 'p02', '07', '01', '2012/2013'),
('071', 'g015', 76, 'p02', '08', '01', '2012/2013'),
('072', 'g015', 89, 'p02', '08', '01', '2012/2013'),
('073', 'g015', 98, 'p02', '08', '01', '2012/2013'),
('074', 'g015', 91.45, 'p02', '08', '01', '2012/2013'),
('075', 'g015', 88.23, 'p02', '08', '01', '2012/2013'),
('076', 'g015', 90, 'p02', '08', '01', '2012/2013'),
('077', 'g015', 80, 'p02', '08', '01', '2012/2013'),
('078', 'g015', 75.34, 'p02', '08', '01', '2012/2013'),
('079', 'g015', 76, 'p02', '08', '01', '2012/2013'),
('080', 'g015', 89, 'p02', '08', '01', '2012/2013'),
('081', 'g015', 98, 'p02', '09', '01', '2012/2013'),
('082', 'g015', 78.56, 'p02', '09', '01', '2012/2013'),
('083', 'g015', 89, 'p02', '09', '01', '2012/2013'),
('084', 'g015', 98, 'p02', '09', '01', '2012/2013'),
('085', 'g015', 78.56, 'p02', '09', '01', '2012/2013'),
('086', 'g015', 87.88, 'p02', '09', '01', '2012/2013'),
('087', 'g015', 88.23, 'p02', '09', '01', '2012/2013'),
('088', 'g015', 90, 'p02', '09', '01', '2012/2013'),
('089', 'g015', 80, 'p02', '09', '01', '2012/2013'),
('090', 'g015', 75.34, 'p02', '09', '01', '2012/2013'),
('001', 'g019', 76, 'p03', '01', '01', '2012/2013'),
('002', 'g019', 89, 'p03', '01', '01', '2012/2013'),
('003', 'g019', 98, 'p03', '01', '01', '2012/2013'),
('004', 'g019', 78.56, 'p03', '01', '01', '2012/2013'),
('005', 'g019', 87.88, 'p03', '01', '01', '2012/2013'),
('006', 'g019', 98, 'p03', '01', '01', '2012/2013'),
('007', 'g019', 91.45, 'p03', '01', '01', '2012/2013'),
('008', 'g019', 74.23, 'p03', '01', '01', '2012/2013'),
('009', 'g019', 89.34, 'p03', '01', '01', '2012/2013'),
('010', 'g019', 72.34, 'p03', '01', '01', '2012/2013'),
('011', 'g019', 87, 'p03', '02', '01', '2012/2013'),
('012', 'g019', 89, 'p03', '02', '01', '2012/2013'),
('013', 'g019', 98, 'p03', '02', '01', '2012/2013'),
('014', 'g019', 78.56, 'p03', '02', '01', '2012/2013'),
('015', 'g019', 87.88, 'p03', '02', '01', '2012/2013'),
('016', 'g019', 78.98, 'p03', '02', '01', '2012/2013'),
('017', 'g019', 81, 'p03', '02', '01', '2012/2013'),
('018', 'g019', 94.23, 'p03', '02', '01', '2012/2013'),
('019', 'g019', 83, 'p03', '02', '01', '2012/2013'),
('020', 'g019', 72.34, 'p03', '02', '01', '2012/2013'),
('021', 'g019', 72.34, 'p03', '03', '01', '2012/2013'),
('022', 'g019', 72.34, 'p03', '03', '01', '2012/2013'),
('023', 'g019', 80, 'p03', '03', '01', '2012/2013'),
('024', 'g019', 75.34, 'p03', '03', '01', '2012/2013'),
('025', 'g019', 70, 'p03', '03', '01', '2012/2013'),
('026', 'g019', 88.23, 'p03', '03', '01', '2012/2013'),
('027', 'g019', 90, 'p03', '03', '01', '2012/2013'),
('028', 'g019', 80, 'p03', '03', '01', '2012/2013'),
('029', 'g019', 90, 'p03', '03', '01', '2012/2013'),
('030', 'g019', 80, 'p03', '03', '01', '2012/2013'),
('061', 'g004', 75.34, 'p03', '07', '01', '2012/2013'),
('062', 'g004', 76, 'p03', '07', '01', '2012/2013'),
('063', 'g004', 89, 'p03', '07', '01', '2012/2013'),
('064', 'g004', 98, 'p03', '07', '01', '2012/2013'),
('065', 'g004', 78.56, 'p03', '07', '01', '2012/2013'),
('066', 'g004', 87.88, 'p03', '07', '01', '2012/2013'),
('067', 'g004', 78.98, 'p03', '07', '01', '2012/2013'),
('068', 'g004', 81, 'p03', '07', '01', '2012/2013'),
('069', 'g004', 94.23, 'p03', '07', '01', '2012/2013'),
('070', 'g004', 83, 'p03', '07', '01', '2012/2013'),
('071', 'g004', 72.34, 'p03', '08', '01', '2012/2013'),
('072', 'g004', 87, 'p03', '08', '01', '2012/2013'),
('073', 'g004', 90, 'p03', '08', '01', '2012/2013'),
('074', 'g004', 78.98, 'p03', '08', '01', '2012/2013'),
('075', 'g004', 81, 'p03', '08', '01', '2012/2013'),
('076', 'g004', 94.23, 'p03', '08', '01', '2012/2013'),
('077', 'g004', 83, 'p03', '08', '01', '2012/2013'),
('078', 'g004', 72.34, 'p03', '08', '01', '2012/2013'),
('079', 'g004', 87, 'p03', '08', '01', '2012/2013'),
('080', 'g004', 90, 'p03', '08', '01', '2012/2013'),
('081', 'g004', 98, 'p03', '09', '01', '2012/2013'),
('082', 'g004', 87, 'p03', '09', '01', '2012/2013'),
('083', 'g004', 76, 'p03', '09', '01', '2012/2013'),
('084', 'g004', 85.34, 'p03', '09', '01', '2012/2013'),
('085', 'g004', 75.34, 'p03', '09', '01', '2012/2013'),
('086', 'g004', 76, 'p03', '09', '01', '2012/2013'),
('087', 'g004', 89, 'p03', '09', '01', '2012/2013'),
('088', 'g004', 87.88, 'p03', '09', '01', '2012/2013'),
('089', 'g004', 78.98, 'p03', '09', '01', '2012/2013'),
('090', 'g004', 81, 'p03', '09', '01', '2012/2013'),
('031', 'g008', 94.23, 'p03', '04', '01', '2012/2013'),
('032', 'g008', 83, 'p03', '04', '01', '2012/2013'),
('033', 'g008', 72.34, 'p03', '04', '01', '2012/2013'),
('034', 'g008', 87, 'p03', '04', '01', '2012/2013'),
('035', 'g008', 90, 'p03', '04', '01', '2012/2013'),
('036', 'g008', 98, 'p03', '04', '01', '2012/2013'),
('037', 'g008', 87, 'p03', '04', '01', '2012/2013'),
('038', 'g008', 76, 'p03', '04', '01', '2012/2013'),
('039', 'g008', 85.34, 'p03', '04', '01', '2012/2013'),
('040', 'g008', 75.34, 'p03', '04', '01', '2012/2013'),
('041', 'g008', 76, 'p03', '05', '01', '2012/2013'),
('042', 'g008', 81, 'p03', '05', '01', '2012/2013'),
('043', 'g008', 94.23, 'p03', '05', '01', '2012/2013'),
('044', 'g008', 83, 'p03', '05', '01', '2012/2013'),
('045', 'g008', 72.34, 'p03', '05', '01', '2012/2013'),
('046', 'g008', 87, 'p03', '05', '01', '2012/2013'),
('047', 'g008', 78.98, 'p03', '05', '01', '2012/2013'),
('048', 'g008', 81, 'p03', '05', '01', '2012/2013'),
('049', 'g008', 94.23, 'p03', '05', '01', '2012/2013'),
('050', 'g008', 83, 'p03', '05', '01', '2012/2013'),
('051', 'g008', 72.34, 'p03', '06', '01', '2012/2013'),
('052', 'g008', 87, 'p03', '06', '01', '2012/2013'),
('053', 'g008', 90, 'p03', '06', '01', '2012/2013'),
('054', 'g008', 98, 'p03', '06', '01', '2012/2013'),
('055', 'g008', 87, 'p03', '06', '01', '2012/2013'),
('056', 'g008', 76, 'p03', '06', '01', '2012/2013'),
('057', 'g008', 85.34, 'p03', '06', '01', '2012/2013'),
('058', 'g008', 75.34, 'p03', '06', '01', '2012/2013'),
('059', 'g008', 76, 'p03', '06', '01', '2012/2013'),
('060', 'g008', 89, 'p03', '06', '01', '2012/2013'),
('001', 'g005', 89.98, 'p04', '01', '01', '2012/2013'),
('002', 'g005', 78.98, 'p04', '01', '01', '2012/2013'),
('003', 'g005', 81, 'p04', '01', '01', '2012/2013'),
('004', 'g005', 94.23, 'p04', '01', '01', '2012/2013'),
('005', 'g005', 98.5, 'p04', '01', '01', '2012/2013'),
('006', 'g005', 72.34, 'p04', '01', '01', '2012/2013'),
('007', 'g005', 87, 'p04', '01', '01', '2012/2013'),
('008', 'g005', 90, 'p04', '01', '01', '2012/2013'),
('009', 'g005', 98, 'p04', '01', '01', '2012/2013'),
('010', 'g005', 87, 'p04', '01', '01', '2012/2013'),
('011', 'g005', 76, 'p04', '02', '01', '2012/2013'),
('012', 'g005', 85.34, 'p04', '02', '01', '2012/2013'),
('013', 'g005', 75.34, 'p04', '02', '01', '2012/2013'),
('014', 'g005', 76, 'p04', '02', '01', '2012/2013'),
('015', 'g005', 78.56, 'p04', '02', '01', '2012/2013'),
('016', 'g005', 87.88, 'p04', '02', '01', '2012/2013'),
('017', 'g005', 78.98, 'p04', '02', '01', '2012/2013'),
('018', 'g005', 81, 'p04', '02', '01', '2012/2013'),
('019', 'g005', 94.23, 'p04', '02', '01', '2012/2013'),
('020', 'g005', 83, 'p04', '02', '01', '2012/2013'),
('021', 'g005', 72.34, 'p04', '03', '01', '2012/2013'),
('022', 'g005', 87, 'p04', '03', '01', '2012/2013'),
('023', 'g005', 90, 'p04', '03', '01', '2012/2013'),
('024', 'g005', 98.87, 'p04', '03', '01', '2012/2013'),
('025', 'g005', 87.99, 'p04', '03', '01', '2012/2013'),
('026', 'g005', 76, 'p04', '03', '01', '2012/2013'),
('027', 'g005', 75.34, 'p04', '03', '01', '2012/2013'),
('028', 'g005', 76, 'p04', '03', '01', '2012/2013'),
('029', 'g005', 89, 'p04', '03', '01', '2012/2013'),
('030', 'g005', 70, 'p04', '03', '01', '2012/2013'),
('031', 'g005', 88.23, 'p04', '04', '01', '2012/2013'),
('032', 'g005', 98.33, 'p04', '04', '01', '2012/2013'),
('033', 'g005', 80, 'p04', '04', '01', '2012/2013'),
('034', 'g005', 75.34, 'p04', '04', '01', '2012/2013'),
('035', 'g005', 76, 'p04', '04', '01', '2012/2013'),
('036', 'g005', 89, 'p04', '04', '01', '2012/2013'),
('037', 'g005', 98, 'p04', '04', '01', '2012/2013'),
('038', 'g005', 78.56, 'p04', '04', '01', '2012/2013'),
('039', 'g005', 87.88, 'p04', '04', '01', '2012/2013'),
('040', 'g005', 98, 'p04', '04', '01', '2012/2013'),
('041', 'g005', 91.45, 'p04', '05', '01', '2012/2013'),
('042', 'g005', 74.23, 'p04', '05', '01', '2012/2013'),
('043', 'g005', 89.34, 'p04', '05', '01', '2012/2013'),
('044', 'g005', 72.34, 'p04', '05', '01', '2012/2013'),
('045', 'g005', 87, 'p04', '05', '01', '2012/2013'),
('046', 'g005', 85.34, 'p04', '05', '01', '2012/2013'),
('047', 'g005', 71.34, 'p04', '05', '01', '2012/2013'),
('048', 'g005', 72, 'p04', '05', '01', '2012/2013'),
('049', 'g005', 81.34, 'p04', '05', '01', '2012/2013'),
('050', 'g005', 91.45, 'p04', '05', '01', '2012/2013'),
('051', 'g005', 72.34, 'p04', '06', '01', '2012/2013'),
('052', 'g005', 87, 'p04', '06', '01', '2012/2013'),
('053', 'g005', 90, 'p04', '06', '01', '2012/2013'),
('054', 'g005', 98, 'p04', '06', '01', '2012/2013'),
('055', 'g005', 87, 'p04', '06', '01', '2012/2013'),
('056', 'g005', 75.34, 'p04', '06', '01', '2012/2013'),
('057', 'g005', 76, 'p04', '06', '01', '2012/2013'),
('058', 'g005', 89, 'p04', '06', '01', '2012/2013'),
('059', 'g005', 70, 'p04', '06', '01', '2012/2013'),
('060', 'g005', 88.23, 'p04', '06', '01', '2012/2013'),
('061', 'g005', 90, 'p04', '07', '01', '2012/2013'),
('062', 'g005', 80, 'p04', '07', '01', '2012/2013'),
('063', 'g005', 75.34, 'p04', '07', '01', '2012/2013'),
('064', 'g005', 76, 'p04', '07', '01', '2012/2013'),
('065', 'g005', 89, 'p04', '07', '01', '2012/2013'),
('066', 'g005', 98, 'p04', '07', '01', '2012/2013'),
('067', 'g005', 78.56, 'p04', '07', '01', '2012/2013'),
('068', 'g005', 87.88, 'p04', '07', '01', '2012/2013'),
('069', 'g005', 98, 'p04', '07', '01', '2012/2013'),
('070', 'g005', 91.45, 'p04', '07', '01', '2012/2013'),
('071', 'g005', 74.23, 'p04', '08', '01', '2012/2013'),
('072', 'g005', 89.34, 'p04', '08', '01', '2012/2013'),
('073', 'g005', 72.34, 'p04', '08', '01', '2012/2013'),
('074', 'g005', 87, 'p04', '08', '01', '2012/2013'),
('075', 'g005', 85.34, 'p04', '08', '01', '2012/2013'),
('076', 'g005', 71.34, 'p04', '08', '01', '2012/2013'),
('077', 'g005', 75.34, 'p04', '08', '01', '2012/2013'),
('078', 'g005', 76, 'p04', '08', '01', '2012/2013'),
('079', 'g005', 89, 'p04', '08', '01', '2012/2013'),
('080', 'g005', 70, 'p04', '08', '01', '2012/2013'),
('081', 'g005', 88.23, 'p04', '09', '01', '2012/2013'),
('082', 'g005', 90, 'p04', '09', '01', '2012/2013'),
('083', 'g005', 80, 'p04', '09', '01', '2012/2013'),
('084', 'g005', 75.34, 'p04', '09', '01', '2012/2013'),
('085', 'g005', 76, 'p04', '09', '01', '2012/2013'),
('086', 'g005', 89, 'p04', '09', '01', '2012/2013'),
('087', 'g005', 98, 'p04', '09', '01', '2012/2013'),
('088', 'g005', 78.56, 'p04', '09', '01', '2012/2013'),
('089', 'g005', 87.88, 'p04', '09', '01', '2012/2013'),
('090', 'g005', 98, 'p04', '09', '01', '2012/2013'),
('061', 'g006', 91.45, 'p05', '07', '01', '2012/2013'),
('062', 'g006', 74.23, 'p05', '07', '01', '2012/2013'),
('063', 'g006', 89.34, 'p05', '07', '01', '2012/2013'),
('064', 'g006', 72.34, 'p05', '07', '01', '2012/2013'),
('065', 'g006', 87, 'p05', '07', '01', '2012/2013'),
('066', 'g006', 85.34, 'p05', '07', '01', '2012/2013'),
('067', 'g006', 71.34, 'p05', '07', '01', '2012/2013'),
('068', 'g006', 72, 'p05', '07', '01', '2012/2013'),
('069', 'g006', 75.34, 'p05', '07', '01', '2012/2013'),
('070', 'g006', 76, 'p05', '07', '01', '2012/2013'),
('071', 'g006', 89, 'p05', '08', '01', '2012/2013'),
('072', 'g006', 70, 'p05', '08', '01', '2012/2013'),
('073', 'g006', 88.23, 'p05', '08', '01', '2012/2013'),
('074', 'g006', 90, 'p05', '08', '01', '2012/2013'),
('075', 'g006', 80, 'p05', '08', '01', '2012/2013'),
('076', 'g006', 75.34, 'p05', '08', '01', '2012/2013'),
('077', 'g006', 76, 'p05', '08', '01', '2012/2013'),
('078', 'g006', 89, 'p05', '08', '01', '2012/2013'),
('079', 'g006', 98, 'p05', '08', '01', '2012/2013'),
('080', 'g006', 78.56, 'p05', '08', '01', '2012/2013'),
('081', 'g006', 87.88, 'p05', '09', '01', '2012/2013'),
('082', 'g006', 98, 'p05', '09', '01', '2012/2013'),
('083', 'g006', 91.45, 'p05', '09', '01', '2012/2013'),
('084', 'g006', 74.23, 'p05', '09', '01', '2012/2013'),
('085', 'g006', 89.34, 'p05', '09', '01', '2012/2013'),
('086', 'g006', 72.34, 'p05', '09', '01', '2012/2013'),
('087', 'g006', 87, 'p05', '09', '01', '2012/2013'),
('088', 'g006', 85.34, 'p05', '09', '01', '2012/2013'),
('089', 'g006', 71.34, 'p05', '09', '01', '2012/2013'),
('090', 'g006', 72, 'p05', '09', '01', '2012/2013'),
('001', 'g014', 81.34, 'p05', '01', '01', '2012/2013'),
('002', 'g014', 91.45, 'p05', '01', '01', '2012/2013'),
('003', 'g014', 72.34, 'p05', '01', '01', '2012/2013'),
('004', 'g014', 87.88, 'p05', '01', '01', '2012/2013'),
('005', 'g014', 78.98, 'p05', '01', '01', '2012/2013'),
('006', 'g014', 81, 'p05', '01', '01', '2012/2013'),
('007', 'g014', 94.23, 'p05', '01', '01', '2012/2013'),
('008', 'g014', 83, 'p05', '01', '01', '2012/2013'),
('009', 'g014', 72.34, 'p05', '01', '01', '2012/2013'),
('010', 'g014', 87, 'p05', '01', '01', '2012/2013'),
('011', 'g014', 90, 'p05', '02', '01', '2012/2013'),
('012', 'g014', 98, 'p05', '02', '01', '2012/2013'),
('013', 'g014', 87, 'p05', '02', '01', '2012/2013'),
('014', 'g014', 76, 'p05', '02', '01', '2012/2013'),
('015', 'g014', 85.34, 'p05', '02', '01', '2012/2013'),
('016', 'g014', 78.98, 'p05', '02', '01', '2012/2013'),
('017', 'g014', 81, 'p05', '02', '01', '2012/2013'),
('018', 'g014', 94.23, 'p05', '02', '01', '2012/2013'),
('019', 'g014', 83, 'p05', '02', '01', '2012/2013'),
('020', 'g014', 72.34, 'p05', '02', '01', '2012/2013'),
('021', 'g014', 87, 'p05', '03', '01', '2012/2013'),
('022', 'g014', 90, 'p05', '03', '01', '2012/2013'),
('023', 'g014', 98, 'p05', '03', '01', '2012/2013'),
('024', 'g014', 87, 'p05', '03', '01', '2012/2013'),
('025', 'g014', 76, 'p05', '03', '01', '2012/2013'),
('026', 'g014', 85.34, 'p05', '03', '01', '2012/2013'),
('027', 'g014', 75.34, 'p05', '03', '01', '2012/2013'),
('028', 'g014', 76, 'p05', '03', '01', '2012/2013'),
('029', 'g014', 89, 'p05', '03', '01', '2012/2013'),
('030', 'g014', 87.88, 'p05', '03', '01', '2012/2013'),
('031', 'g014', 78.98, 'p05', '04', '01', '2012/2013'),
('032', 'g014', 81, 'p05', '04', '01', '2012/2013'),
('033', 'g014', 94.23, 'p05', '04', '01', '2012/2013'),
('034', 'g014', 83, 'p05', '04', '01', '2012/2013'),
('035', 'g014', 72.34, 'p05', '04', '01', '2012/2013'),
('036', 'g014', 87, 'p05', '04', '01', '2012/2013'),
('037', 'g014', 85.34, 'p05', '04', '01', '2012/2013'),
('038', 'g014', 71.34, 'p05', '04', '01', '2012/2013'),
('039', 'g014', 72, 'p05', '04', '01', '2012/2013'),
('040', 'g014', 81.34, 'p05', '04', '01', '2012/2013'),
('041', 'g014', 91.45, 'p05', '05', '01', '2012/2013'),
('042', 'g014', 72.34, 'p05', '05', '01', '2012/2013'),
('043', 'g014', 87.88, 'p05', '05', '01', '2012/2013'),
('044', 'g014', 78.98, 'p05', '05', '01', '2012/2013'),
('045', 'g014', 81, 'p05', '05', '01', '2012/2013'),
('046', 'g014', 94.23, 'p05', '05', '01', '2012/2013'),
('047', 'g014', 83, 'p05', '05', '01', '2012/2013'),
('048', 'g014', 72.34, 'p05', '05', '01', '2012/2013'),
('049', 'g014', 87, 'p05', '05', '01', '2012/2013'),
('050', 'g014', 90, 'p05', '05', '01', '2012/2013'),
('051', 'g014', 98, 'p05', '06', '01', '2012/2013'),
('052', 'g014', 87, 'p05', '06', '01', '2012/2013'),
('053', 'g014', 76, 'p05', '06', '01', '2012/2013'),
('054', 'g014', 85.34, 'p05', '06', '01', '2012/2013'),
('055', 'g014', 78.98, 'p05', '06', '01', '2012/2013'),
('056', 'g014', 78.98, 'p05', '06', '01', '2012/2013'),
('057', 'g014', 81, 'p05', '06', '01', '2012/2013'),
('058', 'g014', 94.23, 'p05', '06', '01', '2012/2013'),
('059', 'g014', 83, 'p05', '06', '01', '2012/2013'),
('060', 'g014', 72.34, 'p05', '06', '01', '2012/2013'),
('061', 'g007', 89.88, 'p06', '07', '01', '2012/2013'),
('062', 'g007', 90.34, 'p06', '07', '01', '2012/2013'),
('063', 'g007', 98.99, 'p06', '07', '01', '2012/2013'),
('064', 'g007', 89.56, 'p06', '07', '01', '2012/2013'),
('065', 'g007', 76.34, 'p06', '07', '01', '2012/2013'),
('066', 'g007', 85.34, 'p06', '07', '01', '2012/2013'),
('067', 'g007', 75.34, 'p06', '07', '01', '2012/2013'),
('068', 'g007', 76, 'p06', '07', '01', '2012/2013'),
('069', 'g007', 89, 'p06', '07', '01', '2012/2013'),
('070', 'g007', 87.88, 'p06', '07', '01', '2012/2013'),
('071', 'g007', 78.98, 'p06', '08', '01', '2012/2013'),
('072', 'g007', 81.23, 'p06', '08', '01', '2012/2013'),
('073', 'g007', 94.56, 'p06', '08', '01', '2012/2013'),
('074', 'g007', 83.34, 'p06', '08', '01', '2012/2013'),
('075', 'g007', 72.34, 'p06', '08', '01', '2012/2013'),
('076', 'g007', 87, 'p06', '08', '01', '2012/2013'),
('077', 'g007', 98.77, 'p06', '08', '01', '2012/2013'),
('078', 'g007', 98, 'p06', '08', '01', '2012/2013'),
('079', 'g007', 87, 'p06', '08', '01', '2012/2013'),
('080', 'g007', 76, 'p06', '08', '01', '2012/2013'),
('081', 'g007', 82.34, 'p06', '09', '01', '2012/2013'),
('082', 'g007', 75.34, 'p06', '09', '01', '2012/2013'),
('083', 'g007', 79.88, 'p06', '09', '01', '2012/2013'),
('084', 'g007', 89.77, 'p06', '09', '01', '2012/2013'),
('085', 'g007', 98, 'p06', '09', '01', '2012/2013'),
('086', 'g007', 78.56, 'p06', '09', '01', '2012/2013'),
('087', 'g007', 87.88, 'p06', '09', '01', '2012/2013'),
('088', 'g007', 78.98, 'p06', '09', '01', '2012/2013'),
('089', 'g007', 81, 'p06', '09', '01', '2012/2013'),
('090', 'g007', 94.23, 'p06', '09', '01', '2012/2013'),
('001', 'g016', 83, 'p06', '01', '01', '2012/2013'),
('002', 'g016', 72.34, 'p06', '01', '01', '2012/2013'),
('003', 'g016', 87, 'p06', '01', '01', '2012/2013'),
('004', 'g016', 90, 'p06', '01', '01', '2012/2013'),
('005', 'g016', 98, 'p06', '01', '01', '2012/2013'),
('006', 'g016', 87, 'p06', '01', '01', '2012/2013'),
('007', 'g016', 76, 'p06', '01', '01', '2012/2013'),
('008', 'g016', 85.34, 'p06', '01', '01', '2012/2013'),
('009', 'g016', 75.34, 'p06', '01', '01', '2012/2013'),
('010', 'g016', 76, 'p06', '01', '01', '2012/2013'),
('011', 'g016', 89, 'p06', '02', '01', '2012/2013'),
('012', 'g016', 78.56, 'p06', '02', '01', '2012/2013'),
('013', 'g016', 87.88, 'p06', '02', '01', '2012/2013'),
('014', 'g016', 78.98, 'p06', '02', '01', '2012/2013'),
('015', 'g016', 81, 'p06', '02', '01', '2012/2013'),
('016', 'g016', 94.23, 'p06', '02', '01', '2012/2013'),
('017', 'g016', 78.98, 'p06', '02', '01', '2012/2013'),
('018', 'g016', 81, 'p06', '02', '01', '2012/2013'),
('019', 'g016', 94.23, 'p06', '02', '01', '2012/2013'),
('020', 'g016', 83, 'p06', '02', '01', '2012/2013'),
('021', 'g016', 72.34, 'p06', '03', '01', '2012/2013'),
('022', 'g016', 87, 'p06', '03', '01', '2012/2013'),
('023', 'g016', 90, 'p06', '03', '01', '2012/2013'),
('024', 'g016', 98, 'p06', '03', '01', '2012/2013'),
('025', 'g016', 87, 'p06', '03', '01', '2012/2013'),
('026', 'g016', 76, 'p06', '03', '01', '2012/2013'),
('027', 'g016', 85.34, 'p06', '03', '01', '2012/2013'),
('028', 'g016', 75.34, 'p06', '03', '01', '2012/2013'),
('029', 'g016', 76, 'p06', '03', '01', '2012/2013'),
('030', 'g016', 89, 'p06', '03', '01', '2012/2013'),
('031', 'g016', 87.88, 'p06', '04', '01', '2012/2013'),
('032', 'g016', 78.98, 'p06', '04', '01', '2012/2013'),
('033', 'g016', 81, 'p06', '04', '01', '2012/2013'),
('034', 'g016', 94.23, 'p06', '04', '01', '2012/2013'),
('035', 'g016', 83, 'p06', '04', '01', '2012/2013'),
('036', 'g016', 72.34, 'p06', '04', '01', '2012/2013'),
('037', 'g016', 87, 'p06', '04', '01', '2012/2013'),
('038', 'g016', 90, 'p06', '04', '01', '2012/2013'),
('039', 'g016', 98, 'p06', '04', '01', '2012/2013'),
('040', 'g016', 87, 'p06', '04', '01', '2012/2013'),
('041', 'g016', 76, 'p06', '05', '01', '2012/2013'),
('042', 'g016', 85.34, 'p06', '05', '01', '2012/2013'),
('043', 'g016', 75.34, 'p06', '05', '01', '2012/2013'),
('044', 'g016', 76, 'p06', '05', '01', '2012/2013'),
('045', 'g016', 78.56, 'p06', '05', '01', '2012/2013'),
('046', 'g016', 78.98, 'p06', '05', '01', '2012/2013'),
('047', 'g016', 81, 'p06', '05', '01', '2012/2013'),
('048', 'g016', 94.23, 'p06', '05', '01', '2012/2013'),
('049', 'g016', 83, 'p06', '05', '01', '2012/2013'),
('050', 'g016', 72.34, 'p06', '05', '01', '2012/2013'),
('051', 'g016', 87, 'p06', '06', '01', '2012/2013'),
('052', 'g016', 90, 'p06', '06', '01', '2012/2013'),
('053', 'g016', 98, 'p06', '06', '01', '2012/2013'),
('054', 'g016', 87, 'p06', '06', '01', '2012/2013'),
('055', 'g016', 76, 'p06', '06', '01', '2012/2013'),
('056', 'g016', 85.34, 'p06', '06', '01', '2012/2013'),
('057', 'g016', 75.34, 'p06', '06', '01', '2012/2013'),
('058', 'g016', 76, 'p06', '06', '01', '2012/2013'),
('059', 'g016', 89, 'p06', '06', '01', '2012/2013'),
('060', 'g016', 87.88, 'p06', '06', '01', '2012/2013'),
('001', 'g017', 78.98, 'p07', '01', '01', '2012/2013'),
('002', 'g017', 81, 'p07', '01', '01', '2012/2013'),
('003', 'g017', 94.23, 'p07', '01', '01', '2012/2013'),
('004', 'g017', 83, 'p07', '01', '01', '2012/2013'),
('005', 'g017', 72.34, 'p07', '01', '01', '2012/2013'),
('006', 'g017', 87, 'p07', '01', '01', '2012/2013'),
('007', 'g017', 90, 'p07', '01', '01', '2012/2013'),
('008', 'g017', 98, 'p07', '01', '01', '2012/2013'),
('009', 'g017', 87, 'p07', '01', '01', '2012/2013'),
('010', 'g017', 76, 'p07', '01', '01', '2012/2013'),
('011', 'g017', 85.34, 'p07', '02', '01', '2012/2013'),
('012', 'g017', 75.34, 'p07', '02', '01', '2012/2013'),
('013', 'g017', 76, 'p07', '02', '01', '2012/2013'),
('014', 'g017', 81, 'p07', '02', '01', '2012/2013'),
('015', 'g017', 94.23, 'p07', '02', '01', '2012/2013'),
('016', 'g017', 83, 'p07', '02', '01', '2012/2013'),
('017', 'g017', 72.34, 'p07', '02', '01', '2012/2013'),
('018', 'g017', 90, 'p07', '02', '01', '2012/2013'),
('019', 'g017', 80, 'p07', '02', '01', '2012/2013'),
('020', 'g017', 75.34, 'p07', '02', '01', '2012/2013'),
('021', 'g017', 76, 'p07', '03', '01', '2012/2013'),
('022', 'g017', 89, 'p07', '03', '01', '2012/2013'),
('023', 'g017', 98, 'p07', '03', '01', '2012/2013'),
('024', 'g017', 78.56, 'p07', '03', '01', '2012/2013'),
('025', 'g017', 87.88, 'p07', '03', '01', '2012/2013'),
('026', 'g017', 78.98, 'p07', '03', '01', '2012/2013'),
('027', 'g017', 81, 'p07', '03', '01', '2012/2013'),
('028', 'g017', 94.23, 'p07', '03', '01', '2012/2013'),
('029', 'g017', 83, 'p07', '03', '01', '2012/2013'),
('030', 'g017', 72.34, 'p07', '03', '01', '2012/2013'),
('031', 'g017', 87, 'p07', '04', '01', '2012/2013'),
('032', 'g017', 90, 'p07', '04', '01', '2012/2013'),
('033', 'g017', 78.98, 'p07', '04', '01', '2012/2013'),
('034', 'g017', 81, 'p07', '04', '01', '2012/2013'),
('035', 'g017', 94.23, 'p07', '04', '01', '2012/2013'),
('036', 'g017', 83, 'p07', '04', '01', '2012/2013'),
('037', 'g017', 72.34, 'p07', '04', '01', '2012/2013'),
('038', 'g017', 87, 'p07', '04', '01', '2012/2013'),
('039', 'g017', 90, 'p07', '04', '01', '2012/2013'),
('040', 'g017', 98, 'p07', '04', '01', '2012/2013'),
('041', 'g017', 87, 'p07', '05', '01', '2012/2013'),
('042', 'g017', 76, 'p07', '05', '01', '2012/2013'),
('043', 'g017', 85.34, 'p07', '05', '01', '2012/2013'),
('044', 'g017', 75.34, 'p07', '05', '01', '2012/2013'),
('045', 'g017', 76, 'p07', '05', '01', '2012/2013'),
('046', 'g017', 89, 'p07', '05', '01', '2012/2013'),
('047', 'g017', 87.88, 'p07', '05', '01', '2012/2013'),
('048', 'g017', 78.98, 'p07', '05', '01', '2012/2013'),
('049', 'g017', 81, 'p07', '05', '01', '2012/2013'),
('050', 'g017', 94.23, 'p07', '05', '01', '2012/2013'),
('051', 'g017', 83, 'p07', '06', '01', '2012/2013'),
('052', 'g017', 72.34, 'p07', '06', '01', '2012/2013'),
('053', 'g017', 87, 'p07', '06', '01', '2012/2013'),
('054', 'g017', 78.98, 'p07', '06', '01', '2012/2013'),
('055', 'g017', 81, 'p07', '06', '01', '2012/2013'),
('056', 'g017', 94.23, 'p07', '06', '01', '2012/2013'),
('057', 'g017', 83, 'p07', '06', '01', '2012/2013'),
('058', 'g017', 72.34, 'p07', '06', '01', '2012/2013'),
('059', 'g017', 87, 'p07', '06', '01', '2012/2013'),
('060', 'g017', 90, 'p07', '06', '01', '2012/2013'),
('061', 'g009', 98, 'p07', '07', '01', '2012/2013'),
('062', 'g009', 87, 'p07', '07', '01', '2012/2013'),
('063', 'g009', 76, 'p07', '07', '01', '2012/2013'),
('064', 'g009', 85.34, 'p07', '07', '01', '2012/2013'),
('065', 'g009', 75.34, 'p07', '07', '01', '2012/2013'),
('066', 'g009', 76, 'p07', '07', '01', '2012/2013'),
('067', 'g009', 89, 'p07', '07', '01', '2012/2013'),
('068', 'g009', 87.88, 'p07', '07', '01', '2012/2013'),
('069', 'g009', 78.98, 'p07', '07', '01', '2012/2013'),
('070', 'g009', 81, 'p07', '07', '01', '2012/2013'),
('071', 'g009', 94.23, 'p07', '08', '01', '2012/2013'),
('072', 'g009', 83, 'p07', '08', '01', '2012/2013'),
('073', 'g009', 72.34, 'p07', '08', '01', '2012/2013'),
('074', 'g009', 87, 'p07', '08', '01', '2012/2013'),
('075', 'g009', 90, 'p07', '08', '01', '2012/2013'),
('076', 'g009', 98, 'p07', '08', '01', '2012/2013'),
('077', 'g009', 87, 'p07', '08', '01', '2012/2013'),
('078', 'g009', 76, 'p07', '08', '01', '2012/2013'),
('079', 'g009', 85.34, 'p07', '08', '01', '2012/2013'),
('080', 'g009', 75.34, 'p07', '08', '01', '2012/2013'),
('081', 'g009', 76, 'p07', '09', '01', '2012/2013'),
('082', 'g009', 83, 'p07', '09', '01', '2012/2013'),
('083', 'g009', 72.34, 'p07', '09', '01', '2012/2013'),
('084', 'g009', 78.98, 'p07', '09', '01', '2012/2013'),
('085', 'g009', 81, 'p07', '09', '01', '2012/2013'),
('086', 'g009', 94.23, 'p07', '09', '01', '2012/2013'),
('087', 'g009', 83, 'p07', '09', '01', '2012/2013'),
('088', 'g009', 72.34, 'p07', '09', '01', '2012/2013'),
('089', 'g009', 87, 'p07', '09', '01', '2012/2013'),
('090', 'g009', 90, 'p07', '09', '01', '2012/2013'),
('001', 'g010', 98, 'p08', '01', '01', '2012/2013'),
('002', 'g010', 87, 'p08', '01', '01', '2012/2013'),
('003', 'g010', 76, 'p08', '01', '01', '2012/2013'),
('004', 'g010', 85.34, 'p08', '01', '01', '2012/2013'),
('005', 'g010', 75.34, 'p08', '01', '01', '2012/2013'),
('006', 'g010', 76, 'p08', '01', '01', '2012/2013'),
('007', 'g010', 89, 'p08', '01', '01', '2012/2013'),
('008', 'g010', 87.88, 'p08', '01', '01', '2012/2013'),
('009', 'g010', 78.98, 'p08', '01', '01', '2012/2013'),
('010', 'g010', 81, 'p08', '01', '01', '2012/2013'),
('011', 'g010', 94.23, 'p08', '02', '01', '2012/2013'),
('012', 'g010', 83, 'p08', '02', '01', '2012/2013'),
('013', 'g010', 72.34, 'p08', '02', '01', '2012/2013'),
('014', 'g010', 87, 'p08', '02', '01', '2012/2013'),
('015', 'g010', 90, 'p08', '02', '01', '2012/2013'),
('016', 'g010', 98, 'p08', '02', '01', '2012/2013'),
('017', 'g010', 87, 'p08', '02', '01', '2012/2013'),
('018', 'g010', 76, 'p08', '02', '01', '2012/2013'),
('019', 'g010', 85.34, 'p08', '02', '01', '2012/2013'),
('020', 'g010', 75.34, 'p08', '02', '01', '2012/2013'),
('021', 'g010', 76, 'p08', '03', '01', '2012/2013'),
('022', 'g010', 98, 'p08', '03', '01', '2012/2013'),
('023', 'g010', 78.56, 'p08', '03', '01', '2012/2013'),
('024', 'g010', 87.88, 'p08', '03', '01', '2012/2013'),
('025', 'g010', 78.98, 'p08', '03', '01', '2012/2013'),
('026', 'g010', 81, 'p08', '03', '01', '2012/2013'),
('027', 'g010', 94.23, 'p08', '03', '01', '2012/2013'),
('028', 'g010', 87, 'p08', '03', '01', '2012/2013'),
('029', 'g010', 85.34, 'p08', '03', '01', '2012/2013'),
('030', 'g010', 71.34, 'p08', '03', '01', '2012/2013'),
('031', 'g010', 72, 'p08', '04', '01', '2012/2013'),
('032', 'g010', 81.34, 'p08', '04', '01', '2012/2013'),
('033', 'g010', 91.45, 'p08', '04', '01', '2012/2013'),
('034', 'g010', 72.34, 'p08', '04', '01', '2012/2013'),
('035', 'g010', 87.88, 'p08', '04', '01', '2012/2013'),
('036', 'g010', 78.98, 'p08', '04', '01', '2012/2013'),
('037', 'g010', 81, 'p08', '04', '01', '2012/2013'),
('038', 'g010', 94.23, 'p08', '04', '01', '2012/2013'),
('039', 'g010', 83, 'p08', '04', '01', '2012/2013'),
('040', 'g010', 72.34, 'p08', '04', '01', '2012/2013'),
('041', 'g010', 87, 'p08', '05', '01', '2012/2013'),
('042', 'g010', 90, 'p08', '05', '01', '2012/2013'),
('043', 'g010', 98, 'p08', '05', '01', '2012/2013'),
('044', 'g010', 87, 'p08', '05', '01', '2012/2013'),
('045', 'g010', 76, 'p08', '05', '01', '2012/2013'),
('046', 'g010', 85.34, 'p08', '05', '01', '2012/2013'),
('047', 'g010', 78.98, 'p08', '05', '01', '2012/2013'),
('048', 'g010', 98, 'p08', '05', '01', '2012/2013'),
('049', 'g010', 87, 'p08', '05', '01', '2012/2013'),
('050', 'g010', 76, 'p08', '05', '01', '2012/2013'),
('051', 'g010', 85.34, 'p08', '06', '01', '2012/2013'),
('052', 'g010', 75.34, 'p08', '06', '01', '2012/2013'),
('053', 'g010', 76, 'p08', '06', '01', '2012/2013'),
('054', 'g010', 89, 'p08', '06', '01', '2012/2013'),
('055', 'g010', 89, 'p08', '06', '01', '2012/2013'),
('056', 'g010', 98, 'p08', '06', '01', '2012/2013'),
('057', 'g010', 78.56, 'p08', '06', '01', '2012/2013'),
('058', 'g010', 87.88, 'p08', '06', '01', '2012/2013'),
('059', 'g010', 78.98, 'p08', '06', '01', '2012/2013'),
('060', 'g010', 81, 'p08', '06', '01', '2012/2013'),
('061', 'g010', 94.23, 'p08', '07', '01', '2012/2013'),
('062', 'g010', 83, 'p08', '07', '01', '2012/2013'),
('063', 'g010', 87, 'p08', '07', '01', '2012/2013'),
('064', 'g010', 85.34, 'p08', '07', '01', '2012/2013'),
('065', 'g010', 71.34, 'p08', '07', '01', '2012/2013'),
('066', 'g010', 72, 'p08', '07', '01', '2012/2013'),
('067', 'g010', 81.34, 'p08', '07', '01', '2012/2013'),
('068', 'g010', 91.45, 'p08', '07', '01', '2012/2013'),
('069', 'g010', 72.34, 'p08', '07', '01', '2012/2013'),
('070', 'g010', 87.88, 'p08', '07', '01', '2012/2013'),
('071', 'g010', 78.98, 'p08', '08', '01', '2012/2013'),
('072', 'g010', 81, 'p08', '08', '01', '2012/2013'),
('073', 'g010', 94.23, 'p08', '08', '01', '2012/2013'),
('074', 'g010', 83, 'p08', '08', '01', '2012/2013'),
('075', 'g010', 72.34, 'p08', '08', '01', '2012/2013'),
('076', 'g010', 87, 'p08', '08', '01', '2012/2013'),
('077', 'g010', 90, 'p08', '08', '01', '2012/2013'),
('078', 'g010', 98, 'p08', '08', '01', '2012/2013'),
('079', 'g010', 87, 'p08', '08', '01', '2012/2013'),
('080', 'g010', 76, 'p08', '08', '01', '2012/2013'),
('081', 'g010', 85.34, 'p08', '09', '01', '2012/2013'),
('082', 'g010', 78.98, 'p08', '09', '01', '2012/2013'),
('083', 'g010', 78.98, 'p08', '09', '01', '2012/2013'),
('084', 'g010', 81, 'p08', '09', '01', '2012/2013'),
('085', 'g010', 94.23, 'p08', '09', '01', '2012/2013'),
('086', 'g010', 83, 'p08', '09', '01', '2012/2013'),
('087', 'g010', 72.34, 'p08', '09', '01', '2012/2013'),
('088', 'g010', 72.34, 'p08', '09', '01', '2012/2013'),
('089', 'g010', 72.34, 'p08', '09', '01', '2012/2013'),
('090', 'g010', 80, 'p08', '09', '01', '2012/2013'),
('061', 'g011', 75.34, 'p09', '07', '01', '2012/2013'),
('062', 'g011', 76, 'p09', '07', '01', '2012/2013'),
('063', 'g011', 89, 'p09', '07', '01', '2012/2013'),
('064', 'g011', 98, 'p09', '07', '01', '2012/2013'),
('065', 'g011', 78.56, 'p09', '07', '01', '2012/2013'),
('066', 'g011', 87.88, 'p09', '07', '01', '2012/2013'),
('067', 'g011', 78.98, 'p09', '07', '01', '2012/2013'),
('068', 'g011', 81, 'p09', '07', '01', '2012/2013'),
('069', 'g011', 94.23, 'p09', '07', '01', '2012/2013'),
('070', 'g011', 83, 'p09', '07', '01', '2012/2013'),
('071', 'g011', 72.34, 'p09', '08', '01', '2012/2013'),
('072', 'g011', 87, 'p09', '08', '01', '2012/2013'),
('073', 'g011', 90, 'p09', '08', '01', '2012/2013'),
('074', 'g011', 98, 'p09', '08', '01', '2012/2013'),
('075', 'g011', 87, 'p09', '08', '01', '2012/2013'),
('076', 'g011', 76, 'p09', '08', '01', '2012/2013'),
('077', 'g011', 85.34, 'p09', '08', '01', '2012/2013'),
('078', 'g011', 75.34, 'p09', '08', '01', '2012/2013'),
('079', 'g011', 75.34, 'p09', '08', '01', '2012/2013'),
('080', 'g011', 76, 'p09', '08', '01', '2012/2013'),
('081', 'g011', 89, 'p09', '09', '01', '2012/2013'),
('082', 'g011', 98, 'p09', '09', '01', '2012/2013'),
('083', 'g011', 78.56, 'p09', '09', '01', '2012/2013'),
('084', 'g011', 87.88, 'p09', '09', '01', '2012/2013'),
('085', 'g011', 78.98, 'p09', '09', '01', '2012/2013'),
('086', 'g011', 81, 'p09', '09', '01', '2012/2013'),
('087', 'g011', 94.23, 'p09', '09', '01', '2012/2013'),
('088', 'g011', 83, 'p09', '09', '01', '2012/2013'),
('089', 'g011', 72.34, 'p09', '09', '01', '2012/2013'),
('090', 'g011', 87, 'p09', '09', '01', '2012/2013'),
('001', 'g018', 90, 'p09', '01', '01', '2012/2013'),
('002', 'g018', 98, 'p09', '01', '01', '2012/2013'),
('003', 'g018', 87, 'p09', '01', '01', '2012/2013'),
('004', 'g018', 76, 'p09', '01', '01', '2012/2013'),
('005', 'g018', 85.34, 'p09', '01', '01', '2012/2013'),
('006', 'g018', 75.34, 'p09', '01', '01', '2012/2013'),
('007', 'g018', 76, 'p09', '01', '01', '2012/2013'),
('008', 'g018', 89, 'p09', '01', '01', '2012/2013'),
('009', 'g018', 72.34, 'p09', '01', '01', '2012/2013'),
('010', 'g018', 87, 'p09', '01', '01', '2012/2013'),
('011', 'g018', 90, 'p09', '02', '01', '2012/2013'),
('012', 'g018', 98, 'p09', '02', '01', '2012/2013'),
('013', 'g018', 87, 'p09', '02', '01', '2012/2013'),
('014', 'g018', 76, 'p09', '02', '01', '2012/2013'),
('015', 'g018', 85.34, 'p09', '02', '01', '2012/2013'),
('016', 'g018', 75.34, 'p09', '02', '01', '2012/2013'),
('017', 'g018', 75.34, 'p09', '02', '01', '2012/2013'),
('018', 'g018', 76, 'p09', '02', '01', '2012/2013'),
('019', 'g018', 89, 'p09', '02', '01', '2012/2013'),
('020', 'g018', 98, 'p09', '02', '01', '2012/2013'),
('021', 'g018', 78.56, 'p09', '03', '01', '2012/2013'),
('022', 'g018', 87.88, 'p09', '03', '01', '2012/2013'),
('023', 'g018', 78.98, 'p09', '03', '01', '2012/2013'),
('024', 'g018', 81, 'p09', '03', '01', '2012/2013'),
('025', 'g018', 94.23, 'p09', '03', '01', '2012/2013'),
('026', 'g018', 83, 'p09', '03', '01', '2012/2013'),
('027', 'g018', 72.34, 'p09', '03', '01', '2012/2013'),
('028', 'g018', 87, 'p09', '03', '01', '2012/2013'),
('029', 'g018', 90, 'p09', '03', '01', '2012/2013'),
('030', 'g018', 98, 'p09', '03', '01', '2012/2013'),
('031', 'g018', 87, 'p09', '04', '01', '2012/2013'),
('032', 'g018', 76, 'p09', '04', '01', '2012/2013'),
('033', 'g018', 85.34, 'p09', '04', '01', '2012/2013'),
('034', 'g018', 75.34, 'p09', '04', '01', '2012/2013'),
('035', 'g018', 76, 'p09', '04', '01', '2012/2013'),
('036', 'g018', 89, 'p09', '04', '01', '2012/2013'),
('037', 'g018', 80, 'p09', '04', '01', '2012/2013'),
('038', 'g018', 75.34, 'p09', '04', '01', '2012/2013'),
('039', 'g018', 76, 'p09', '04', '01', '2012/2013'),
('040', 'g018', 89, 'p09', '04', '01', '2012/2013'),
('041', 'g018', 98, 'p09', '05', '01', '2012/2013'),
('042', 'g018', 78.56, 'p09', '05', '01', '2012/2013'),
('043', 'g018', 87.88, 'p09', '05', '01', '2012/2013'),
('044', 'g018', 78.98, 'p09', '05', '01', '2012/2013'),
('045', 'g018', 81, 'p09', '05', '01', '2012/2013'),
('046', 'g018', 94.23, 'p09', '05', '01', '2012/2013'),
('047', 'g018', 83, 'p09', '05', '01', '2012/2013'),
('048', 'g018', 72.34, 'p09', '05', '01', '2012/2013'),
('049', 'g018', 87, 'p09', '05', '01', '2012/2013'),
('050', 'g018', 75.34, 'p09', '05', '01', '2012/2013'),
('051', 'g018', 76, 'p09', '06', '01', '2012/2013'),
('052', 'g018', 89, 'p09', '06', '01', '2012/2013'),
('053', 'g018', 98, 'p09', '06', '01', '2012/2013'),
('054', 'g018', 78.56, 'p09', '06', '01', '2012/2013'),
('055', 'g018', 87.88, 'p09', '06', '01', '2012/2013'),
('056', 'g018', 78.98, 'p09', '06', '01', '2012/2013'),
('057', 'g018', 81, 'p09', '06', '01', '2012/2013'),
('058', 'g018', 94.23, 'p09', '06', '01', '2012/2013'),
('059', 'g018', 83, 'p09', '06', '01', '2012/2013'),
('060', 'g018', 72.34, 'p09', '06', '01', '2012/2013'),
('001', 'g012', 87, 'p10', '01', '01', '2012/2013'),
('002', 'g012', 90, 'p10', '01', '01', '2012/2013'),
('003', 'g012', 98, 'p10', '01', '01', '2012/2013'),
('004', 'g012', 87, 'p10', '01', '01', '2012/2013'),
('005', 'g012', 87, 'p10', '01', '01', '2012/2013'),
('006', 'g012', 85.34, 'p10', '01', '01', '2012/2013'),
('007', 'g012', 71.34, 'p10', '01', '01', '2012/2013'),
('008', 'g012', 72, 'p10', '01', '01', '2012/2013'),
('009', 'g012', 81.34, 'p10', '01', '01', '2012/2013'),
('010', 'g012', 91.45, 'p10', '01', '01', '2012/2013'),
('011', 'g012', 72.34, 'p10', '02', '01', '2012/2013'),
('012', 'g012', 87.88, 'p10', '02', '01', '2012/2013'),
('013', 'g012', 78.98, 'p10', '02', '01', '2012/2013'),
('014', 'g012', 81, 'p10', '02', '01', '2012/2013'),
('015', 'g012', 94.23, 'p10', '02', '01', '2012/2013'),
('016', 'g012', 83, 'p10', '02', '01', '2012/2013'),
('017', 'g012', 72.34, 'p10', '02', '01', '2012/2013'),
('018', 'g012', 87, 'p10', '02', '01', '2012/2013'),
('019', 'g012', 90, 'p10', '02', '01', '2012/2013'),
('020', 'g012', 98, 'p10', '02', '01', '2012/2013'),
('021', 'g012', 87, 'p10', '03', '01', '2012/2013'),
('022', 'g012', 76, 'p10', '03', '01', '2012/2013'),
('023', 'g012', 85.34, 'p10', '03', '01', '2012/2013'),
('024', 'g012', 78.98, 'p10', '03', '01', '2012/2013'),
('025', 'g012', 80, 'p10', '03', '01', '2012/2013'),
('026', 'g012', 75.34, 'p10', '03', '01', '2012/2013'),
('027', 'g012', 76, 'p10', '03', '01', '2012/2013'),
('028', 'g012', 89, 'p10', '03', '01', '2012/2013'),
('029', 'g012', 98, 'p10', '03', '01', '2012/2013'),
('030', 'g012', 78.56, 'p10', '03', '01', '2012/2013'),
('031', 'g012', 87.88, 'p10', '04', '01', '2012/2013'),
('032', 'g012', 78.98, 'p10', '04', '01', '2012/2013'),
('033', 'g012', 81, 'p10', '04', '01', '2012/2013'),
('034', 'g012', 94.23, 'p10', '04', '01', '2012/2013'),
('035', 'g012', 83, 'p10', '04', '01', '2012/2013'),
('036', 'g012', 72.34, 'p10', '04', '01', '2012/2013'),
('037', 'g012', 87, 'p10', '04', '01', '2012/2013'),
('038', 'g012', 90, 'p10', '04', '01', '2012/2013'),
('039', 'g012', 98, 'p10', '04', '01', '2012/2013'),
('040', 'g012', 87, 'p10', '04', '01', '2012/2013'),
('041', 'g012', 87, 'p10', '05', '01', '2012/2013'),
('042', 'g012', 85.34, 'p10', '05', '01', '2012/2013'),
('043', 'g012', 71.34, 'p10', '05', '01', '2012/2013'),
('044', 'g012', 72, 'p10', '05', '01', '2012/2013'),
('045', 'g012', 81.34, 'p10', '05', '01', '2012/2013'),
('046', 'g012', 91.45, 'p10', '05', '01', '2012/2013'),
('047', 'g012', 72.34, 'p10', '05', '01', '2012/2013'),
('048', 'g012', 87.88, 'p10', '05', '01', '2012/2013'),
('049', 'g012', 78.98, 'p10', '05', '01', '2012/2013'),
('050', 'g012', 81, 'p10', '05', '01', '2012/2013'),
('051', 'g012', 94.23, 'p10', '06', '01', '2012/2013'),
('052', 'g012', 83, 'p10', '06', '01', '2012/2013'),
('053', 'g012', 72.34, 'p10', '06', '01', '2012/2013'),
('054', 'g012', 87, 'p10', '06', '01', '2012/2013'),
('055', 'g012', 90, 'p10', '06', '01', '2012/2013'),
('056', 'g012', 98, 'p10', '06', '01', '2012/2013'),
('057', 'g012', 87, 'p10', '06', '01', '2012/2013'),
('058', 'g012', 87, 'p10', '06', '01', '2012/2013'),
('059', 'g012', 85.34, 'p10', '06', '01', '2012/2013'),
('060', 'g012', 71.34, 'p10', '06', '01', '2012/2013'),
('061', 'g012', 72, 'p10', '07', '01', '2012/2013'),
('062', 'g012', 81.34, 'p10', '07', '01', '2012/2013'),
('063', 'g012', 91.45, 'p10', '07', '01', '2012/2013'),
('064', 'g012', 72.34, 'p10', '07', '01', '2012/2013'),
('065', 'g012', 87.88, 'p10', '07', '01', '2012/2013'),
('066', 'g012', 78.98, 'p10', '07', '01', '2012/2013'),
('067', 'g012', 81, 'p10', '07', '01', '2012/2013'),
('068', 'g012', 94.23, 'p10', '07', '01', '2012/2013'),
('069', 'g012', 83, 'p10', '07', '01', '2012/2013'),
('070', 'g012', 72.34, 'p10', '07', '01', '2012/2013'),
('071', 'g012', 87, 'p10', '08', '01', '2012/2013'),
('072', 'g012', 90, 'p10', '08', '01', '2012/2013'),
('073', 'g012', 98, 'p10', '08', '01', '2012/2013'),
('074', 'g012', 87, 'p10', '08', '01', '2012/2013'),
('075', 'g012', 76, 'p10', '08', '01', '2012/2013'),
('076', 'g012', 85.34, 'p10', '08', '01', '2012/2013'),
('077', 'g012', 78.98, 'p10', '08', '01', '2012/2013'),
('078', 'g012', 87, 'p10', '08', '01', '2012/2013'),
('079', 'g012', 76, 'p10', '08', '01', '2012/2013'),
('080', 'g012', 85.34, 'p10', '08', '01', '2012/2013'),
('081', 'g012', 75.34, 'p10', '09', '01', '2012/2013'),
('082', 'g012', 76, 'p10', '09', '01', '2012/2013'),
('083', 'g012', 89, 'p10', '09', '01', '2012/2013'),
('084', 'g012', 76, 'p10', '09', '01', '2012/2013'),
('085', 'g012', 89, 'p10', '09', '01', '2012/2013'),
('086', 'g012', 98, 'p10', '09', '01', '2012/2013'),
('087', 'g012', 78.56, 'p10', '09', '01', '2012/2013'),
('088', 'g012', 87.88, 'p10', '09', '01', '2012/2013'),
('089', 'g012', 78.98, 'p10', '09', '01', '2012/2013'),
('090', 'g012', 81, 'p10', '09', '01', '2012/2013'),
('001', 'g013', 94.23, 'p11', '01', '01', '2012/2013'),
('002', 'g013', 83, 'p11', '01', '01', '2012/2013'),
('003', 'g013', 72.34, 'p11', '01', '01', '2012/2013'),
('004', 'g013', 87, 'p11', '01', '01', '2012/2013'),
('005', 'g013', 90, 'p11', '01', '01', '2012/2013'),
('006', 'g013', 98, 'p11', '01', '01', '2012/2013'),
('007', 'g013', 87, 'p11', '01', '01', '2012/2013'),
('008', 'g013', 76, 'p11', '01', '01', '2012/2013'),
('009', 'g013', 85.34, 'p11', '01', '01', '2012/2013'),
('010', 'g013', 87, 'p11', '01', '01', '2012/2013'),
('011', 'g013', 85.34, 'p11', '02', '01', '2012/2013'),
('012', 'g013', 71.34, 'p11', '02', '01', '2012/2013'),
('013', 'g013', 72, 'p11', '02', '01', '2012/2013'),
('014', 'g013', 81.34, 'p11', '02', '01', '2012/2013'),
('015', 'g013', 91.45, 'p11', '02', '01', '2012/2013'),
('016', 'g013', 72.34, 'p11', '02', '01', '2012/2013'),
('017', 'g013', 87.88, 'p11', '02', '01', '2012/2013'),
('018', 'g013', 78.98, 'p11', '02', '01', '2012/2013'),
('019', 'g013', 81, 'p11', '02', '01', '2012/2013'),
('020', 'g013', 94.23, 'p11', '02', '01', '2012/2013'),
('021', 'g013', 83, 'p11', '03', '01', '2012/2013'),
('022', 'g013', 72.34, 'p11', '03', '01', '2012/2013'),
('023', 'g013', 87, 'p11', '03', '01', '2012/2013'),
('024', 'g013', 90, 'p11', '03', '01', '2012/2013'),
('025', 'g013', 98, 'p11', '03', '01', '2012/2013'),
('026', 'g013', 87, 'p11', '03', '01', '2012/2013'),
('027', 'g013', 85.34, 'p11', '03', '01', '2012/2013'),
('028', 'g013', 71.34, 'p11', '03', '01', '2012/2013'),
('029', 'g013', 72, 'p11', '03', '01', '2012/2013'),
('030', 'g013', 81.34, 'p11', '03', '01', '2012/2013'),
('031', 'g013', 91.45, 'p11', '04', '01', '2012/2013'),
('032', 'g013', 72.34, 'p11', '04', '01', '2012/2013'),
('033', 'g013', 87.88, 'p11', '04', '01', '2012/2013'),
('034', 'g013', 78.98, 'p11', '04', '01', '2012/2013'),
('035', 'g013', 81, 'p11', '04', '01', '2012/2013'),
('036', 'g013', 94.23, 'p11', '04', '01', '2012/2013'),
('037', 'g013', 83, 'p11', '04', '01', '2012/2013'),
('038', 'g013', 72.34, 'p11', '04', '01', '2012/2013'),
('039', 'g013', 87, 'p11', '04', '01', '2012/2013'),
('040', 'g013', 90, 'p11', '04', '01', '2012/2013'),
('041', 'g013', 98, 'p11', '05', '01', '2012/2013'),
('042', 'g013', 87, 'p11', '05', '01', '2012/2013'),
('043', 'g013', 87, 'p11', '05', '01', '2012/2013'),
('044', 'g013', 85.34, 'p11', '05', '01', '2012/2013'),
('045', 'g013', 71.34, 'p11', '05', '01', '2012/2013'),
('046', 'g013', 72, 'p11', '05', '01', '2012/2013'),
('047', 'g013', 81.34, 'p11', '05', '01', '2012/2013'),
('048', 'g013', 91.45, 'p11', '05', '01', '2012/2013'),
('049', 'g013', 72.34, 'p11', '05', '01', '2012/2013'),
('050', 'g013', 87.88, 'p11', '05', '01', '2012/2013'),
('051', 'g013', 78.98, 'p11', '06', '01', '2012/2013');
INSERT INTO `nilai` (`nis`, `id_guru`, `nilai`, `kd_mapel`, `kd_kelas`, `sem`, `thn`) VALUES
('052', 'g013', 81, 'p11', '06', '01', '2012/2013'),
('053', 'g013', 94.23, 'p11', '06', '01', '2012/2013'),
('054', 'g013', 83, 'p11', '06', '01', '2012/2013'),
('055', 'g013', 72.34, 'p11', '06', '01', '2012/2013'),
('056', 'g013', 87, 'p11', '06', '01', '2012/2013'),
('057', 'g013', 90, 'p11', '06', '01', '2012/2013'),
('058', 'g013', 98, 'p11', '06', '01', '2012/2013'),
('059', 'g013', 87, 'p11', '06', '01', '2012/2013'),
('060', 'g013', 76, 'p11', '06', '01', '2012/2013'),
('061', 'g013', 85.34, 'p11', '07', '01', '2012/2013'),
('062', 'g013', 78.98, 'p11', '07', '01', '2012/2013'),
('063', 'g013', 85.34, 'p11', '07', '01', '2012/2013'),
('064', 'g013', 75.34, 'p11', '07', '01', '2012/2013'),
('065', 'g013', 76, 'p11', '07', '01', '2012/2013'),
('066', 'g013', 89, 'p11', '07', '01', '2012/2013'),
('067', 'g013', 94.23, 'p11', '07', '01', '2012/2013'),
('068', 'g013', 83, 'p11', '07', '01', '2012/2013'),
('069', 'g013', 72.34, 'p11', '07', '01', '2012/2013'),
('070', 'g013', 90, 'p11', '07', '01', '2012/2013'),
('071', 'g013', 80, 'p11', '08', '01', '2012/2013'),
('072', 'g013', 75.34, 'p11', '08', '01', '2012/2013'),
('073', 'g013', 76, 'p11', '08', '01', '2012/2013'),
('074', 'g013', 89, 'p11', '08', '01', '2012/2013'),
('075', 'g013', 98, 'p11', '08', '01', '2012/2013'),
('076', 'g013', 78.56, 'p11', '08', '01', '2012/2013'),
('077', 'g013', 87.88, 'p11', '08', '01', '2012/2013'),
('078', 'g013', 78.98, 'p11', '08', '01', '2012/2013'),
('079', 'g013', 81, 'p11', '08', '01', '2012/2013'),
('080', 'g013', 94.23, 'p11', '08', '01', '2012/2013'),
('081', 'g013', 83, 'p11', '09', '01', '2012/2013'),
('082', 'g013', 72.34, 'p11', '09', '01', '2012/2013'),
('083', 'g013', 87, 'p11', '09', '01', '2012/2013'),
('084', 'g013', 90, 'p11', '09', '01', '2012/2013'),
('085', 'g013', 98, 'p11', '09', '01', '2012/2013'),
('086', 'g013', 87, 'p11', '09', '01', '2012/2013'),
('087', 'g013', 76, 'p11', '09', '01', '2012/2013'),
('088', 'g013', 85.34, 'p11', '09', '01', '2012/2013'),
('089', 'g013', 76, 'p11', '09', '01', '2012/2013'),
('090', 'g013', 85.34, 'p11', '09', '01', '2012/2013');

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE IF NOT EXISTS `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendBefore` time NOT NULL DEFAULT '23:59:59',
  `SendAfter` time NOT NULL DEFAULT '00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  KEY `outbox_sender` (`SenderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Triggers `outbox`
--
DROP TRIGGER IF EXISTS `outbox_timestamp`;
DELIMITER //
CREATE TRIGGER `outbox_timestamp` BEFORE INSERT ON `outbox`
 FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingTimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.SendingTimeOut = CURRENT_TIMESTAMP();
    END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `outbox_multipart`
--

CREATE TABLE IF NOT EXISTS `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`,`SequencePosition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pbk`
--

CREATE TABLE IF NOT EXISTS `pbk` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `Name` text NOT NULL,
  `Number` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pbk_groups`
--

CREATE TABLE IF NOT EXISTS `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pbk_groups`
--

INSERT INTO `pbk_groups` (`Name`, `ID`) VALUES
('RPL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '-1',
  `Signal` int(11) NOT NULL DEFAULT '-1',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IMEI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`ID`, `UpdatedInDB`, `InsertIntoDB`, `TimeOut`, `Send`, `Receive`, `IMEI`, `Client`, `Battery`, `Signal`, `Sent`, `Received`) VALUES
('', '2013-01-16 10:09:32', '2013-01-16 08:36:00', '2013-01-16 10:09:42', 'yes', 'yes', '353762038892772', 'Gammu 1.32.0, Windows Server 2007, GCC 4.7, MinGW 3.11', 0, 42, 8, 10);

--
-- Triggers `phones`
--
DROP TRIGGER IF EXISTS `phones_timestamp`;
DELIMITER //
CREATE TRIGGER `phones_timestamp` BEFORE INSERT ON `phones`
 FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.TimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.TimeOut = CURRENT_TIMESTAMP();
    END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE IF NOT EXISTS `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL,
  PRIMARY KEY (`ID`,`SequencePosition`),
  KEY `sentitems_date` (`DeliveryDateTime`),
  KEY `sentitems_tpmr` (`TPMR`),
  KEY `sentitems_dest` (`DestinationNumber`),
  KEY `sentitems_sender` (`SenderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `DeliveryDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `SenderID`, `SequencePosition`, `Status`, `StatusError`, `TPMR`, `RelativeValidity`, `CreatorID`) VALUES
('2013-01-14 16:13:19', '2013-01-14 16:13:13', '2013-01-14 16:13:19', NULL, '004E0061006D00610020003A002000530041004E004400590020004800450052004D004100570041004E002F0072002F006E004E0069006C006100690020006D006100740065006D006100740069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200066006900730069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000740069006B0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000620069006F006C006F006700690020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E006700670072006900730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E0064006F006E00650073006900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200069007000730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006F006C0061006800720061006700610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006100670061006D00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200070006B006E0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000730065006E006900200062007500640061007900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nama : SANDY HERMAWAN/r/nNilai matematika : Belum Diinput/r/nNilai fisika : Belum Diinput/r/nNilai tik : Belum Diinput/r/nNilai biologi : Belum Diinput/r/nNilai bhs. Inggris : Belum Diinput/r/nNilai bhs. Indonesia : Belum Diinput/r/nNilai ips : Belum Diinput/r/nNilai olahraga : Belum Diinput/r/nNilai agama : Belum Diinput/r/nNilai pkn : Belum Diinput/r/nNilai seni budaya : Belum Diinput/r/n', 1, '', 1, 'SendingOKNoReport', -1, 62, 255, ''),
('2013-01-14 16:13:25', '2013-01-14 16:13:13', '2013-01-14 16:13:25', NULL, '004E0061006D00610020003A002000530041004E004400590020004800450052004D004100570041004E002F0072002F006E004E0069006C006100690020006D006100740065006D006100740069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200066006900730069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000740069006B0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000620069006F006C006F006700690020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E006700670072006900730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E0064006F006E00650073006900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200069007000730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006F006C0061006800720061006700610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006100670061006D00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200070006B006E0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000730065006E006900200062007500640061007900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nama : SANDY HERMAWAN/r/nNilai matematika : Belum Diinput/r/nNilai fisika : Belum Diinput/r/nNilai tik : Belum Diinput/r/nNilai biologi : Belum Diinput/r/nNilai bhs. Inggris : Belum Diinput/r/nNilai bhs. Indonesia : Belum Diinput/r/nNilai ips : Belum Diinput/r/nNilai olahraga : Belum Diinput/r/nNilai agama : Belum Diinput/r/nNilai pkn : Belum Diinput/r/nNilai seni budaya : Belum Diinput/r/n', 2, '', 1, 'SendingOKNoReport', -1, 63, 255, ''),
('2013-01-14 16:15:01', '2013-01-14 16:14:55', '2013-01-14 16:15:01', NULL, '004E0061006D00610020003A0020004E0041004E0041004E004700200053004100500055005400520041002F0072002F006E004E0069006C006100690020006D006100740065006D006100740069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200066006900730069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000740069006B0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000620069006F006C006F006700690020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E006700670072006900730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E0064006F006E00650073006900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200069007000730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006F006C0061006800720061006700610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006100670061006D00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200070006B006E0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000730065006E006900200062007500640061007900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nama : NANANG SAPUTRA/r/nNilai matematika : Belum Diinput/r/nNilai fisika : Belum Diinput/r/nNilai tik : Belum Diinput/r/nNilai biologi : Belum Diinput/r/nNilai bhs. Inggris : Belum Diinput/r/nNilai bhs. Indonesia : Belum Diinput/r/nNilai ips : Belum Diinput/r/nNilai olahraga : Belum Diinput/r/nNilai agama : Belum Diinput/r/nNilai pkn : Belum Diinput/r/nNilai seni budaya : Belum Diinput/r/n', 3, '', 1, 'SendingOKNoReport', -1, 64, 255, ''),
('2013-01-14 16:50:10', '2013-01-14 16:48:51', '2013-01-14 16:50:10', NULL, '0054006900640061006B0020004100640061002000530069007300770061002000440065006E00670061006E0020004E006900730020005400650072007300650062007500740020002100210021', '+6287758822228', 'Default_No_Compression', '', '+62818445009', -1, 'Tidak Ada Siswa Dengan Nis Tersebut !!!', 4, '', 1, 'SendingOKNoReport', -1, 65, 255, ''),
('2013-01-15 11:20:53', '2013-01-15 11:20:44', '2013-01-15 11:20:53', NULL, '004E0061006D00610020003A002000520045004E0049005400410020004E0055005200200050005200410054004900570049002F0072002F006E004E0069006C006100690020006D006100740065006D006100740069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200066006900730069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000740069006B0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000620069006F006C006F006700690020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E006700670072006900730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E0064006F006E00650073006900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200069007000730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006F006C0061006800720061006700610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006100670061006D00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200070006B006E0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000730065006E006900200062007500640061007900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E', '+628977942261', 'Default_No_Compression', '', '+62818445009', -1, 'Nama : RENITA NUR PRATIWI/r/nNilai matematika : Belum Diinput/r/nNilai fisika : Belum Diinput/r/nNilai tik : Belum Diinput/r/nNilai biologi : Belum Diinput/r/nNilai bhs. Inggris : Belum Diinput/r/nNilai bhs. Indonesia : Belum Diinput/r/nNilai ips : Belum Diinput/r/nNilai olahraga : Belum Diinput/r/nNilai agama : Belum Diinput/r/nNilai pkn : Belum Diinput/r/nNilai seni budaya : Belum Diinput/r/n', 5, '', 1, 'SendingOKNoReport', -1, 82, 255, ''),
('2013-01-15 11:21:17', '2013-01-15 11:21:12', '2013-01-15 11:21:17', NULL, '006D0065', '087751750878', 'Default_No_Compression', '', '+62818445009', -1, 'me', 6, '', 1, 'SendingOKNoReport', -1, 83, 255, ''),
('2013-01-15 12:15:42', '2013-01-15 12:15:37', '2013-01-15 12:15:42', NULL, '0073006500620061006700690061006E00200073006D00730020006D00750020007400650072006E00790061007400610020006D006100730075006B0020006B0065002000640061007400610062006100730065002C0020006A00610064006900200061006B007500200067006B002000740061006800750020006B0061006C006F002000610064006100200073006D0073002000640061007200690020006B0061006D0075000D000A', '+6285335367235', 'Default_No_Compression', '', '+62818445009', -1, 'sebagian sms mu ternyata masuk ke database, jadi aku gk tahu kalo ada sms dari kamu\r\n', 7, '', 1, 'SendingOKNoReport', -1, 113, 255, ''),
('2013-01-16 09:36:54', '2013-01-16 09:36:45', '2013-01-16 09:36:54', NULL, '004E0061006D00610020003A002000530041004E004400590020004800450052004D004100570041004E002F0072002F006E004E0069006C006100690020006D006100740065006D006100740069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200066006900730069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000740069006B0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000620069006F006C006F006700690020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E006700670072006900730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E0064006F006E00650073006900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200069007000730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006F006C0061006800720061006700610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006100670061006D00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200070006B006E0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000730065006E006900200062007500640061007900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Nama : SANDY HERMAWAN/r/nNilai matematika : Belum Diinput/r/nNilai fisika : Belum Diinput/r/nNilai tik : Belum Diinput/r/nNilai biologi : Belum Diinput/r/nNilai bhs. Inggris : Belum Diinput/r/nNilai bhs. Indonesia : Belum Diinput/r/nNilai ips : Belum Diinput/r/nNilai olahraga : Belum Diinput/r/nNilai agama : Belum Diinput/r/nNilai pkn : Belum Diinput/r/nNilai seni budaya : Belum Diinput/r/n', 8, '', 1, 'SendingOKNoReport', -1, 127, 255, ''),
('2013-01-16 09:38:39', '2013-01-16 09:38:30', '2013-01-16 09:38:39', NULL, '0054006900640061006B0020004100640061002000530069007300770061002000440065006E00670061006E0020004E006900730020005400650072007300650062007500740020002100210021', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Tidak Ada Siswa Dengan Nis Tersebut !!!', 9, '', 1, 'SendingOKNoReport', -1, 128, 255, ''),
('2013-01-16 09:39:44', '2013-01-16 09:39:33', '2013-01-16 09:39:44', NULL, '0054006900640061006B0020004100640061002000530069007300770061002000440065006E00670061006E0020004E006900730020005400650072007300650062007500740020002100210021', '+6281938744934', 'Default_No_Compression', '', '+62818445009', -1, 'Tidak Ada Siswa Dengan Nis Tersebut !!!', 10, '', 1, 'SendingOKNoReport', -1, 129, 255, ''),
('2013-01-16 09:41:59', '2013-01-16 09:41:48', '2013-01-16 09:41:59', NULL, '004E0061006D00610020003A002000410052004900460020005200410048004D0041004E00200048004100440049002F0072002F006E004E0069006C006100690020006D006100740065006D006100740069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200066006900730069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000740069006B0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000620069006F006C006F006700690020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E006700670072006900730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E0064006F006E00650073006900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200069007000730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006F006C0061006800720061006700610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006100670061006D00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200070006B006E0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000730065006E006900200062007500640061007900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'Nama : ARIF RAHMAN HADI/r/nNilai matematika : Belum Diinput/r/nNilai fisika : Belum Diinput/r/nNilai tik : Belum Diinput/r/nNilai biologi : Belum Diinput/r/nNilai bhs. Inggris : Belum Diinput/r/nNilai bhs. Indonesia : Belum Diinput/r/nNilai ips : Belum Diinput/r/nNilai olahraga : Belum Diinput/r/nNilai agama : Belum Diinput/r/nNilai pkn : Belum Diinput/r/nNilai seni budaya : Belum Diinput/r/n', 11, '', 1, 'SendingOKNoReport', -1, 130, 255, ''),
('2013-01-16 09:44:14', '2013-01-16 09:44:04', '2013-01-16 09:44:14', NULL, '0054006900640061006B0020004100640061002000530069007300770061002000440065006E00670061006E0020004E006900730020005400650072007300650062007500740020002100210021', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'Tidak Ada Siswa Dengan Nis Tersebut !!!', 12, '', 1, 'SendingOKNoReport', -1, 131, 255, ''),
('2013-01-16 09:45:09', '2013-01-16 09:44:56', '2013-01-16 09:45:09', NULL, '0054006900640061006B0020004100640061002000530069007300770061002000440065006E00670061006E0020004E006900730020005400650072007300650062007500740020002100210021', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'Tidak Ada Siswa Dengan Nis Tersebut !!!', 13, '', 1, 'SendingOKNoReport', -1, 132, 255, ''),
('2013-01-16 09:45:43', '2013-01-16 09:45:38', '2013-01-16 09:45:43', NULL, '0054006900640061006B0020004100640061002000530069007300770061002000440065006E00670061006E0020004E006900730020005400650072007300650062007500740020002100210021', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'Tidak Ada Siswa Dengan Nis Tersebut !!!', 14, '', 1, 'SendingOKNoReport', -1, 133, 255, ''),
('2013-01-16 09:46:28', '2013-01-16 09:46:20', '2013-01-16 09:46:28', NULL, '004E0061006D00610020003A0020004E005500520055004C00200048004900440041005900410048002F0072002F006E004E0069006C006100690020006D006100740065006D006100740069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200066006900730069006B00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000740069006B0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000620069006F006C006F006700690020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E006700670072006900730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006200680073002E00200049006E0064006F006E00650073006900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200069007000730020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006F006C0061006800720061006700610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C006100690020006100670061006D00610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C0061006900200070006B006E0020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E004E0069006C00610069002000730065006E006900200062007500640061007900610020003A002000420065006C0075006D0020004400690069006E007000750074002F0072002F006E', '+6287758918198', 'Default_No_Compression', '', '+62818445009', -1, 'Nama : NURUL HIDAYAH/r/nNilai matematika : Belum Diinput/r/nNilai fisika : Belum Diinput/r/nNilai tik : Belum Diinput/r/nNilai biologi : Belum Diinput/r/nNilai bhs. Inggris : Belum Diinput/r/nNilai bhs. Indonesia : Belum Diinput/r/nNilai ips : Belum Diinput/r/nNilai olahraga : Belum Diinput/r/nNilai agama : Belum Diinput/r/nNilai pkn : Belum Diinput/r/nNilai seni budaya : Belum Diinput/r/n', 15, '', 1, 'SendingOKNoReport', -1, 134, 255, '');

--
-- Triggers `sentitems`
--
DROP TRIGGER IF EXISTS `sentitems_timestamp`;
DELIMITER //
CREATE TRIGGER `sentitems_timestamp` BEFORE INSERT ON `sentitems`
 FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` char(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `kd_status` varchar(50) NOT NULL,
  `kd_kelas` char(3) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jk`, `kd_status`, `kd_kelas`) VALUES
('001', 'SANDY HERMAWAN', 'L', '1', '01'),
('002', 'RIANTIANI MAHASTUTI', 'P', '1', '01'),
('003', 'ANDIKA SEPTIAWAN', 'L', '1', '01'),
('004', 'RENITA NUR PRATIWI', 'P', '1', '01'),
('005', 'NANANG SAPUTRA', 'L', '1', '01'),
('006', 'ARIF SETIAWAN', 'L', '1', '01'),
('007', 'RISA ANGGI SISWANDARI', 'P', '1', '01'),
('008', 'ARIF SETIAWAN', 'L', '1', '01'),
('009', 'NUR ESA SOFIANA', 'P', '1', '01'),
('010', 'RIAN EKA HIDAYAT', 'L', '1', '01'),
('011', 'INTAN APRILIA PERMATA', 'P', '1', '02'),
('012', 'RIAN EKA HIDAYAT', 'L', '1', '02'),
('013', 'FENDI RIZKI PRATAMA', 'L', '1', '02'),
('014', 'FERI ANDRIAWAN', 'L', '1', '02'),
('015', 'DITA DWI SUSANTI', 'P', '1', '02'),
('016', 'RIA OKTAVIA', 'P', '1', '02'),
('017', 'RISKI KURNIAWAN', 'L', '1', '02'),
('018', 'ANTON WIJAKSONO', 'L', '1', '02'),
('019', 'WINDA HARFITASARI', 'P', '1', '02'),
('020', 'RENITA NUR PRATIWI', 'P', '1', '02'),
('021', 'NUR FITRIA RIZKI', 'P', '1', '03'),
('022', 'SEPTIYAN DWIKY WARDANA', 'L', '1', '03'),
('023', 'YESSICA AFRIDA AYUSTINA', 'P', '1', '03'),
('024', 'AGUS KURNIAWAN', 'L', '1', '03'),
('025', 'VEVIANA NINGRUM', 'P', '1', '03'),
('026', 'ANGGA PRATAMA', 'L', '1', '03'),
('027', 'WIDYA AYU ANGGRAENI', 'P', '1', '03'),
('028', 'DWI WAHYU SAPUTRA', 'L', '1', '03'),
('029', 'RIKA FITRIANI', 'P', '1', '03'),
('030', 'DONI KUSUMA', 'L', '1', '03'),
('031', 'RISNA NOVIANTI', 'P', '1', '04'),
('032', 'RATIH HERMAWATI', 'P', '1', '04'),
('033', 'ARIF RAHMAN B', 'L', '1', '04'),
('034', 'SITI NURHAYATI', 'P', '1', '04'),
('035', 'ARIF PURWANTO', 'L', '1', '04'),
('036', 'DANNY KRISTANTO', 'L', '1', '04'),
('037', 'ENDANG SUSILAWATI', 'P', '1', '04'),
('038', 'JOKO SUPRIANTO', 'L', '1', '04'),
('039', 'KURNIAWAN GETA PUTRA', 'L', '1', '04'),
('040', 'DEVI YANTI NURAENI', 'P', '1', '04'),
('041', 'IKA RAHAYU', 'P', '1', '05'),
('042', 'RINA PUSPITA SARI', 'P', '1', '05'),
('043', 'INDRA CAHYONO', 'L', '1', '05'),
('044', 'HENDRY KURNIAWAN', 'L', '1', '05'),
('045', 'CHYNTIA PUTRI GUSTINIAWATI', 'P', '1', '05'),
('046', 'YOGI GUSSTAF FERDIANSYAH', 'L', '1', '05'),
('047', 'PRISKA NUR FAUZIAH', 'P', '1', '05'),
('048', 'ONA OKTASARI', 'P', '1', '05'),
('049', 'ZEFRI ANDRIANTO', 'L', '1', '05'),
('050', 'DASILVA HANAFI HANUM', 'P', '1', '05'),
('051', 'FITRI FATMAWATI', 'P', '1', '06'),
('052', 'ARIF RAHMAN HADI', 'L', '1', '06'),
('053', 'AKBAR MAULANA', 'L', '1', '06'),
('054', 'AGUNG KURNIAWAN', 'L', '1', '06'),
('055', 'HERLINA TINENGSIH', 'P', '1', '06'),
('056', 'YESSI DEA PRATINA', 'P', '1', '06'),
('057', 'EKA OCTAVIYANTI', 'P', '1', '06'),
('058', 'BAYU ERWANA', 'L', '1', '06'),
('059', 'CATUR ADI SAPUTRA', 'L', '1', '06'),
('060', 'RIKA FITRIA', 'P', '1', '06'),
('061', 'POPPY RAMDASARI', 'P', '1', '07'),
('062', 'DIAN RATNA WULAN', 'P', '1', '07'),
('063', 'APRILIA WIDYA KURNIAWATI', 'P', '1', '07'),
('064', 'GINANJAR IRFAN SETYAWAN', 'L', '1', '07'),
('065', 'HARIS DWIYANTO', 'L', '1', '07'),
('066', 'HENDRA DIAN INDRIANTO', 'L', '1', '07'),
('067', 'ASIH DWI ANGGRAINI', 'P', '1', '07'),
('068', 'DEFITA INTAN SARI', 'P', '1', '07'),
('069', 'DESY TRI WULANDARI', 'P', '1', '07'),
('070', 'MAHENDA AIDIN', 'L', '1', '07'),
('071', 'DIAN AGNI ARDITAMA', 'L', '1', '08'),
('072', 'DIANA NURCAHYANI', 'P', '1', '08'),
('073', 'MUHHAMAD KHOLID AN', 'L', '1', '08'),
('074', 'PRIBADI WIRASATRIA', 'L', '1', '08'),
('075', 'RAHMAT WIRATMOKO', 'L', '1', '08'),
('076', 'EGO AYU PERMANA SAKTI', 'P', '1', '08'),
('077', 'EMI FUJIASTUTIK', 'P', '1', '08'),
('078', 'RINO RAHMAN', 'L', '1', '08'),
('079', 'SAKA GUNA WIJAYA', 'L', '1', '08'),
('080', 'ERLIN RENIAWATI', 'P', '1', '08'),
('081', 'FENNY TRI WULAN DARI', 'P', '1', '09'),
('082', 'FRANSISKA AYUDYHIA MARTASARI', 'P', '1', '09'),
('083', 'SETIAWAN RIAN PRATAMA', 'L', '1', '09'),
('084', 'SIGIT RIYAN PRASETYA', 'L', '1', '09'),
('085', 'LINDA WIDYAWATI', 'P', '1', '09'),
('086', 'MELATI PRAMUDIASTUTI', 'P', '1', '09'),
('087', 'SLAMET ARIANTO', 'L', '1', '09'),
('088', 'YANU EKO LAHURI', 'L', '1', '09'),
('089', 'NOVA ENTINA SETYANINGRUM', 'P', '1', '09'),
('090', 'NURUL HIDAYAH', 'P', '1', '09');

-- --------------------------------------------------------

--
-- Table structure for table `status_siswa`
--

CREATE TABLE IF NOT EXISTS `status_siswa` (
  `kd_status` int(2) NOT NULL AUTO_INCREMENT,
  `status_siswa` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_status`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `status_siswa`
--

INSERT INTO `status_siswa` (`kd_status`, `status_siswa`) VALUES
(1, 'aktif'),
(2, 'alumni'),
(3, 'mengundurkan diri');

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE IF NOT EXISTS `teach` (
  `id_guru` char(5) NOT NULL,
  `kd_kelas` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`id_guru`, `kd_kelas`) VALUES
('g001', '01'),
('g001', '02'),
('g001', '03'),
('g001', '04'),
('g001', '05'),
('g001', '06'),
('g002', '07'),
('g002', '08'),
('g002', '09'),
('g003', '04'),
('g003', '05'),
('g003', '06'),
('g004', '07'),
('g004', '08'),
('g004', '09'),
('g005', '01'),
('g005', '02'),
('g005', '03'),
('g005', '04'),
('g005', '05'),
('g005', '06'),
('g005', '07'),
('g005', '08'),
('g005', '09'),
('g006', '07'),
('g006', '08'),
('g006', '09'),
('g007', '07'),
('g007', '08'),
('g007', '09'),
('g008', '04'),
('g008', '05'),
('g008', '06'),
('g009', '07'),
('g009', '08'),
('g009', '09'),
('g010', '01'),
('g010', '02'),
('g010', '03'),
('g010', '04'),
('g010', '05'),
('g010', '06'),
('g010', '07'),
('g010', '08'),
('g010', '09'),
('g011', '07'),
('g011', '08'),
('g011', '09'),
('g012', '01'),
('g012', '02'),
('g012', '03'),
('g012', '04'),
('g012', '05'),
('g012', '06'),
('g012', '07'),
('g012', '08'),
('g012', '09'),
('g013', '01'),
('g013', '02'),
('g013', '03'),
('g013', '04'),
('g013', '05'),
('g013', '06'),
('g013', '07'),
('g013', '08'),
('g013', '09'),
('g014', '01'),
('g014', '02'),
('g014', '03'),
('g014', '04'),
('g014', '05'),
('g014', '06'),
('g015', '07'),
('g015', '08'),
('g015', '09'),
('g016', '01'),
('g016', '02'),
('g016', '03'),
('g016', '04'),
('g016', '05'),
('g016', '06'),
('g017', '01'),
('g017', '02'),
('g017', '03'),
('g017', '04'),
('g017', '05'),
('g017', '06'),
('g018', '01'),
('g018', '02'),
('g018', '03'),
('g018', '04'),
('g018', '05'),
('g018', '06'),
('g019', '03'),
('g019', '02'),
('g019', '01'),
('g020', '03'),
('g020', '02'),
('g020', '01');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(90) NOT NULL,
  `id_guru` char(5) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `id_guru`) VALUES
('jokoharibowo', '481e2868c6c2489bd84464ea0c49718f', 'g012'),
('ikahsuhartatik', 'e8ad677d9b16332f243244c6dc348c2a', 'g011'),
('sispinaryo', 'a1c7ddce2d4b1c995ef2600c8b299395', 'g010'),
('ferikurniawan', '50f1dc2707cb134c5b0d7bc620b92f15', 'g009'),
('indrayatini', '9cf0ab33a6a62cde9e6888e367723322', 'g008'),
('wahyunurcahyo', 'fbac9d39c2caf221fae121005259e706', 'g007'),
('nurrakhmad', 'ab7a34a5fd6b07aa8c23b6e12b096542', 'g006'),
('matius', 'b5a8d14c0e812da2de9e0c06df16aa18', 'g005'),
('hendriwinarto', 'de4c5bbec676f205a3505f71cd9812bf', 'g004'),
('bayuseptarini', '1eb179f7d643a1406e232cf65230b6e9', 'g003'),
('widyastuti', '24f944cb7540b40fa463c017cf165cc3', 'g002'),
('pujirahayu', '21c9a166e4e7f1d5a90561bb63373504', 'g001'),
('arifwaryanto', '4ca57ca56b9d4fb959b9ed2bb28e2c3e', 'g013'),
('slametabidin', '190d31e818933605f196da730c73dfd5', 'g014'),
('sukatno', '262d7c80cd4e3323a6be99e95e2c6b38', 'g015'),
('imamprasetyo', '8024557e57e09326fac76c3a7861fe71', 'g016'),
('bambanghadi', '0a82c5ed10cbfb29685db444d1fdfd65', 'g017'),
('wawanrianto', '684002661a121870fe54d3854dacbd27', 'g018'),
('afikefendi', '9e8c65594e79858fa4678967615b6d5d', 'g019'),
('sendibastian', '8c8d252eb0061b48c59eeb005e7625a8', 'g020');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
