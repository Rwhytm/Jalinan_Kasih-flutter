part of 'menuartikel.dart';

class Artikel3 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Artikel3({Key? key}) : super(key: key);

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
                  DeskripsiTitle(
                      text:
                          '5 Alasan Pernikahan Dini Tidak Dianjurkan, Bisa Menimbulkan Beragam Masalah'),
                  DeskripsiImage(image: 'assets/images/artikel3.jpg'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Di Indonesia telah diatur dalam perundang-undangan bahwa batasan menikah adalah usia 19 tahun. Jika belum mencapai usia tersebut maka tergolong ke dalam pernikahan dini dan sangat tidak dianjurkan untuk dilaksanakan.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Banyak hal yang mendasari terjadinya pernikahan dini. Diantaranya karena faktor lingkungan, tidak pendidikan dan ekonomi yang rendah serta alasan agar tidak terjadi seks di luar nikah. Namun ternyata, pernikahan dini dapat menimbulkan beragam masalah, lho. '''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Dilansir dari Alodokter, pernikahan dini di usia remaja memiliki dampak buruk dari sisi medis maupun psikologis serta lebih berisiko berujung pada perceraian.'''),
                  SubtitleDeskripsi(
                      subtitle: '1. Risiko Penyakit Seksual Meningkat'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pasangan di bawah usia 18 tahun yang telah melakukan hubungan seksual akan lebih rentan terkena penyakit menular seksual termasuk HIV. Hal ini dikarenakan kurangnya pengetahuan tentang hubungan seksual yang sehat dan aman. Selain itu, pemahaman penggunaan alat kontrasepsi juga masih sangat rendah.'''),
                  SubtitleDeskripsi(
                      subtitle: '2. Risiko Kekerasan Seksual Meningkat'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Usia yang masih terlalu muda membuat seseorang belum mampu berpikir dewasa, termasuk ketika menjalani kehidupan rumah tangga. Karena tidak memiliki sikap dewasa sehingga ketika terjadi konflik dalam rumah tangga maka tidak dapat diselesaikan dengan bijak.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Alih-alih menyelesaikannya dengan diskusi bersama pasangan, justru malah memilih jalur kekerasan terhadap pasangan. Berdasarkan hasil penelitian, perempuan lebih sering menjadi korban kekerasan dalam sebuah pernikahan dini.
'''),
                  SubtitleDeskripsi(subtitle: '3. Risiko Kehamilan Meningkat'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kehamilan yang terjadi di usia yang masih sangat mudah termasuk kehamilan yang berisiko. Risiko tersebut dapat berdampak pada janin dan juga bagi ibu. Pada janin, terdapat risiko kelahiran prematur dan berat badan lahir rendah.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Selain itu, bayi yang dilahirkan juga memiliki risiko masalah pertumbuhan dan perkembangan karena kurangnya pengetahuan sang ibu tentang hal tersebut. Sementara pada ibu juga memiliki risiko yaitu mengalami anemia dan preeklamsia yang dapat membahayakan ibu serta janin.
'''),
                  SubtitleDeskripsi(
                      subtitle: '4. Risiko Mengalami Masalah Psikilogis'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pernikahan dini selain memiliki risiko bagi kesehatan fisik juga sangat berisiko bagi kesehatan mental. Perempuan usia remaja yang telah menikah akan lebih rentan mengalami gangguan mental. Diantaranya gangguan kecemasan, gangguan suasana hati, dan depresi, di kemudian hari.'''),
                  SubtitleDeskripsi(
                      subtitle:
                          '5. Risiko Tingkat Sosial dan Ekonomi yang Rendah'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pernikahan dini akan membuat seseorang kehilangan masa remaja. Dimana pada masa tersebut kesempatan untuk belajar dan melakukan hal baru masih terbuka lebar. Namun, karena adanya pernikahan dini, membuat seseorang terlebih perempuan harus putus sekolah.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kebanyakan dari mereka lebih memilih melaksanakan tugas baru sebagai istri dibandingkan tetap meneruskan pendidikannya. Rendahnya tingkat pendidikan akan berdampak pada kualitas orang tersebut dan sangat berpengaruh terhadap masa depannya.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Menikah bukanlah hal yang bisa sembarangan untuk dilakukan. Sebelum memutuskan untuk menikah, tentunya perlu mempertimbangkan beragam aspek. Diantaranya kesiapan mental, finansial, dan juga kedewasaan. Sehingga dalam menjalani kehidupan rumah tangga, kamu akan lebih siap dan terhindar dari segala risiko di atas. Jadi, jangan terburu-buru untuk menikah di usia muda, ya.
'''),
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
