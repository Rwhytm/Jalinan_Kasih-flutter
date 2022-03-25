part of 'menu4.dart';

class Deskripsi42 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi42({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Alasan Perkawinan Anak atau Remaja'),
                  DeskripsiImage(image: 'assets/images/gandengan.png'),
                  SizedBox(
                    height: 20,
                  ),
                  SubtitleDeskripsi(subtitle: '- Alasan Kultural'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Memastikan sang anak menikah dengan seseorang yang dipercaya keluarga akan merawatnya. Di wilayah dimana perkawinan biasa dilakukan di usia yang lebih muda, perempuan terlambat kawin bisa mendapat predikat ‘perawan tua’.'''),
                  SubtitleDeskripsi(subtitle: '- Alasan Ekonomi'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Beberapa orangtua memberikan anak perempuannya untuk dinikahi dengan tujuan untuk mendapatkan mas kawin, berupa uang, barang atau ternak, bahkan untuk melunasi hutang.'''),
                  SubtitleDeskripsi(subtitle: '- Alasan Keluarga'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kebanyakan untuk menjaga nama baik keluarga pada saat seorang anak perempuan hamil di luar nikah, walaupun seringkali perkawinan seperti ini menjadi beban karena anak belum siap secara mental untuk menajlani kehidupan rumah tangga.'''),
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
    ;
  }
}
