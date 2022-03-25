part of 'menu3.dart';

class Deskripsi32 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi32({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Perilaku Berisiko'),
                  DeskripsiImage(image: 'assets/images/alasanperkawinan.png'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Nah, salah satu tanda pubertas adalah adanya ketertarikan secara emosional maupun seksualitas. Eits.... jangan salah... Kamu harus mengerti dulu bahwa istilah ‘seksual’ bukan hanya hal-hal yang berhubungan dengan berhubungan seks, karena pengertiannya lebih dalam dan luas.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Kesehatan seksual adalah kondisi kesejahteraan fisik, emosi, jiwa dan sosial terkait dengan seksualitas. Untuk sehat secara seksual, diperlukan pendekatan yang positif dan penuh hormat terhadap seksualitas dan hubungan seksual.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Nah, teman teman harus ingat bahwa kesehatan seksual sangat berhubungan dengan bagaimana perilaku seksual seseorang, dimana perilaku seksual akan meningkat saat masuk pubertas karena adanya dorongan seksual karena perkembangan hormon dalam tubuh.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Nah, perilaku seksual sering dimaknai sebagai sesuatu yang melulu’negatif’ dan identik dengan hubungan seksual . Padahal perilaku seksual sangat luas sifatnya, mulai dari berdandan, mejeng, ngerling , merayu hingga aktifitas dan hubungan seksual.'''),
                  SubtitleDeskripsi(
                      subtitle: 'Perilaku seksual remaja dibagi menjadi 2'),
                  CustomDeskripsi(
                      deskripsi:
                          '''-	Perilaku berisiko\n$tab Merupakan segala perilaku seksual dan non seksual yang menimbulkan risiko terhadap kesehatan reproduksi dan seksual\n\nContoh : bergonta ganti pasangan, onani atau masturbasi menggunakan alat yang tidak aman, melakukan hubungan seksual sebelum pernikahan.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''-	Perilaku yang sehat\n$tab Merupakan segala perilaku seksual dan non seksual yang tidak memungkinkan terjadinya risiko reproduksi dan seksual
\nContoh : Tidak melakukan hubungan seksual sebelum perkawinan, menjaga kebersihan tubuh termasuk organ seksual''')
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
