part of 'menuartikel.dart';

class Artikel1 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Artikel1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          // Deskripsi
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DeskripsiTitle(text: 'Pernikahan Dini di Kalangan Remaja'),
                  DeskripsiImage(image: 'assets/images/artikel1.jpg'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Berdasarkan Undang-Undang Nomor 1 Tahun 1974 tentang Perkawinan, perkawinan hanya diizinkan bila pihak pria mencapai umur 19 (sembilan belas) tahun dan pihak wanita sudah mencapai usia 16 (enam belas) tahun. Namun, sejak tanggal 16 September 2019, DPR telah mengesahkan revisi terhadap undang-undang tersebut. Berdasarkan revisi tersebut, batas usia menikah baik pria maupun wanita adalah 19 tahun. Namun, pada kenyataannya, ada begitu banyak anak di bawah usia 19 tahun yang melakukan pernikahan dini. Berdasarkan data yang diperoleh dari Direktorat Jenderal Badan Peradilan Agama, terdapat 34 ribu permohonan dispensasi kawin yang terhitung dari bulan Januari-Juni tahun 2020. Dari total tersebut 97% dikabulkan dan 60% yang mengajukan adalah anak di bawah 18 tahun. '''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pernikahan dini dapat dipicu dari dalam diri maupun dari lingkungan sekitar seseorang. Berdasarkan Ari (2014), berikut beberapa alasan maraknya pernikahan dini di tengah-tengah masyarakat saat ini. '''),
                  SubtitleDeskripsi(subtitle: '1. Faktor Ekonomi'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Biasanya terjadi ketika sang wanita berasal dari keluarga yang kurang mampu secara ekonomi. Sehingga orang tuanya memilih untuk menikahkan anak mereka dengan pria yang sudah mapan agar sang anak memperoleh kehidupan yang lebih baik dan beban orang tua berkurang.'''),
                  SubtitleDeskripsi(subtitle: '2. Faktor Pendidikan'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kurangnya sosialisasi terhadap orang tua atau masyarakat yang berada di daerah seperti pedesaan dan anak yang tidak memiliki akses untuk menempuh pendidikan wajib 12 tahun sehingga dirinya tidak masalah jika dinikahkan di usia dini dan beranggapan bahwa hal tersebut adalah hal yang wajar.
'''),
                  SubtitleDeskripsi(subtitle: '3. Faktor Orang Tua'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Tidak sedikit orang tua yang memilih menikahkan anak mereka karena merasa khawatir anaknya akan melakukan perbuatan zina selama berpacaran, yang dapat menimbulkan aib bagi keluarga mereka.'''),
                  SubtitleDeskripsi(
                      subtitle: '4. Faktor Media Massa dan Internet  '),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Di jaman sekarang, sangat mudah bagi semua orang untuk mengakses informasi dari internet. Jika seorang remaja tidak berhati-hati, dirinya dapat terjatuh dalam pergaulan bebas yang dimulai dari rasa penasaran setelah melihat atau membaca informasi yang ia peroleh dari media sosial. Bahkan ada banyak akun-akun di media sosial yang mendukung pernikahan dini. '''),
                  SubtitleDeskripsi(subtitle: '5. Faktor Hamil di Luar Nikah'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Faktor ini timbul sebagai salah satu akibat dari media massa dan internet. Dimana dengan mudahnya akses internet, anak-anak mengetahui apa yang belum seharusnya mereka ketahui. Begitu juga dengan informasi tentang seks, pendidikan seks adalah hal yang penting, namun harus tetap dalam pengawasan orang tua atau guru. Karena jika tidak, dapat menimbulkan dampak yang negatif. Jika hal ini telah terjadi, maka orang tua mau tidak mau harus menikahkan anak mereka meskipun belum mencapai batas usia menikah.  '''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Berdasarkan teori Erik Erikson (1950), usia remaja adalah saat dimana seseorang mengalami fase identity vs role confusion, yaitu dimana remaja sedang dalam proses mencari jati dirinya yang akan berpengaruh pada hidupnya dalam jangka waktu yang panjang. Jati diri ini berhubungan dengan kepercayaan, konsep ideal dan nilai-nilai yang membentuk karakter. Bisa saja konsep yang diterapkan di lingkungan pergaulannya berbeda dengan konsep yang diterapkan oleh orang tuanya di rumah, sehingga remaja menjadi bingung harus mengikuti yang mana. Di sisi lain, mereka juga sering kali takut akan ditolak oleh lingkungannya apabila tidak mengikuti jalan berpikir atau tindakan teman-teman sebayanya. Misalnya, ketika lingkungan disekitarnya menganggap bahwa berhubungan seksual sebelum menikah adalah hal yang biasa. Namun, ajaran dalam keluarganya menolak dengan keras tentang sex sebelum menikah. Jika remaja tersebut memilih jalan yang salah dan terjebak dalam pergaulan bebas, bisa saja hal-hal tersebut memicu pada pernikahan dini, misalnya karena hamil di luar nikah yang disebabkan remaja secara sadar melakukan hubungan seksual sebelum menikah atas dasar saling menyukai dan bukan karena pemerkosaan. Selain itu, masa remaja adalah saat dimana rasa penasaran seseorang menjadi sangat tinggi dan ingin mencoba banyak hal-hal baru yang ada di sekitarnya tanpa adanya kekangan dari pihak lain seperti orang tua atau guru.
'''),
                  DeskripsiTitle(text: 'Dampak Pernikahan Dini'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pernikahan dini berarti bahwa pasangan yang melakukan pernikahan belum memenuhi standar dan belum mencapai batas usia untuk masuk ke dalam kehidupan berumah tangga. Oleh sebab itu, pernikahan dini dapat menimbulkan beberapa dampak. Beberapa dampak secara psikologis yaitu: 
'''),
                  SubtitleDeskripsi(subtitle: '1. Gangguan Mental '),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pasangan suami istri remaja yang melakukan pernikahan dini terutama sebelum menginjak usia 18 tahun, memiliki risiko mengalami gangguan mental sebesar 41%. Contohnya seperti depresi, kecemasan, gangguan disosiatif (kepribadian ganda) dan trauma psikologis seperti PTSD. Hal ini diperoleh dari penilitian yang terdapat dalam jurnal Pediatrics (2011).'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab UNICEF melaporkan bahwa remaja pada dasarnya belum mampu untuk mengelola emosi dan memutuskan sesuatu dengan baik. Mereka masih memerlukan bimbingan dari orang-orang yang lebih tua. Sehingga ketika terjadi suatu konflik dalam rumah tangga mereka, tidak sedikit pasangan suami istri remaja yang menyelesaikannya dengan cara kekerasan. Hal inilah yang memicu timbulnya gangguan mental seperti yang telah disebutkan sebelumnya. Selain itu, gangguan mental juga dapat timbul sebagai akibat dari keguguran atau kehilangan anak. Pada dasarnya, tubuh wanita remaja masih belum terlalu kuat untuk mengandung dan melahirkan sehingga sangat rentan terjadi keguguran. 
'''),
                  SubtitleDeskripsi(subtitle: '2. Kecanduan '),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kencanduan dapat berupa kecanduan pada rokok, narkoba, judi atau minuman keras. Hal ini disebabkan karena beberapa pasangan suami istri remaja tidak dapat menemukan cara yang sehat dan tepat untuk mengekspresikan emosi atau mencari distraksi saat menghadapi stres yang diakibatkan oleh masalah rumah tangga. '''),
                  SubtitleDeskripsi(subtitle: '3. Tekanan Sosial '),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Masyarakat di negara kita banyak yang tinggal dalam lingkungan komunal. Sehingga keluarga, kerabat, tetangga dan masyarakat dapat membawa suatu beban tersendiri bagi pasangan suami istri remaja. Sang suami merasa tertekan karena di usianya yang masih muda, ia dituntut untuk menjadi kepala rumah tangga yang memiliki pekerjaan yang pasti dan menafkahi keluarganya. Sementara sang istri dituntut untuk mengurus pekerjaan rumah dan membesarkan anak. Padahal secara psikologis, baik sang suami maupun sang istri belum sepenuhnya siap untuk melaksanakan tanggung jawab tersebut. Namun jika mereka gagal melakukan tuntutan tersebut, tidak menutup kemungkinan bahwa orang-orang di sekitar akan mengucilkan atau mencap buruk mereka.'''),
                ],
              ),
            ),
          ),
          // Heading
          SafeArea(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 46),
                  width: 40,
                  height: 80,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
