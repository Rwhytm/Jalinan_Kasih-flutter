part of 'menu5.dart';

class Deskripsi51 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi51({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Fungsi Keluarga'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga adalah unit terkecil dalam masyarakat yang terdiri dari suami, istri atau suami, istri dan anaknya. Setiap orang menginginakn keluarga yang dibangunnya berkualitas.'''),
                  DeskripsiImage(image: 'assets/images/keluarga.png'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Tetapi teman teman harus ingat, makna anggota keluarga dari masing-masing orang akan berbeda. Ada yang anggotanya seperti disebutkan di atas, ada juga yang tinggal dan dibesarkan oleh kakek dan nenek, atau om dan tante atau tinggal di panti asuhan bersama teman teman dan pengasuhnya. Keluarga berkualitas itu tidak dilihat dari siapa saja anggota keluarganya, tetapi apakah keluarga tersebut menjalankan 8 fungsi keluarga atau tidak, yaitu :'''),
                  SubtitleDeskripsi(subtitle: '1. Fungsi Keagamaan'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga adalah tempat pertama seorang remaja mengenal agama, keluarga berperan dalam pendidikan agama bagi anak-anak serta pembentukan kepribadian'''),
                  SubtitleDeskripsi(subtitle: '2. Fungsi Sosial dan Budaya'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga memiliki peran penting untuk menanamkan pola tingkah laku yang berhubungan dengan orang lain (sosialisasi).'''),
                  SubtitleDeskripsi(subtitle: '3. Fungsi Cinta dan Kasih'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga harus menjadi tempat untuk menciptakan suasana cinta dan kasih sayang dalam kehidupan berkeluarga, bermasyarakat, berbangsa dan bernegara. Fungsi cinta kasih adalah membentuk anak yang lembut dan penurut'''),
                  SubtitleDeskripsi(subtitle: '4. Fungsi Perlindungan'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga menjadi pelindung yang pertama dan utama dalam memberikan kebenaran dan keteladanan kepada anak. Fungsi perlindungan yang baik dapat mendukung pertumbuhan dan perkembangan anak yang optimal'''),
                  SubtitleDeskripsi(subtitle: '5. Fungsi Reproduksi'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga berfungsi mempertahankan generasi dan menjaga kelangsungan keluarga, bukan hanya mengembangkan keturunan tetapi merupakan tempat mengembangkan fungsi reproduksi secara menyeluruh, diantaranya pendidkan seksualitas bagi anak'''),
                  SubtitleDeskripsi(
                      subtitle: '6. Fungsi Sosialisasi dan Pendidikan'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga berperan sebagai tempat utama dan pertama memberikan pendidikan kepada semua anak untuk bekal masa depan'''),
                  SubtitleDeskripsi(subtitle: '7. Fungsi Ekonomi'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga berfungsi sebagai tempat membina dan menanamkan nilai-nilai keuangan keluarga dan perencanaan keuangan keluarga sehingga terwujud keluarga sejahtera.'''),
                  SubtitleDeskripsi(subtitle: '8. Fungsi Pembinaan Lingkungan'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Keluarga berfungsi untuk memberikan yang terbaik bagi generasi yang akan datang untuk membentuk generasi yang santun dan peduli terhadap kondisi alam dan lingkungannya.'''),
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
