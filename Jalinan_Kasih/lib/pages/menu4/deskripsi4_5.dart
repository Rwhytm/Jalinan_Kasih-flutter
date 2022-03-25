part of 'menu4.dart';

class Deskripsi45 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi45({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Usia Ideal untuk Menikah'),
                  DeskripsiImage(image: 'assets/images/usiaideal.png'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Ingat teman-teman, usia ideal untuk menikah pada laki-laki adalah 25 tahun, dengan pertimbangan perannya sebagai suami, laki-laki sudah memiliki pertimbangan keuangan dengan memiliki pendapatan atau penghasilan untuk memenuhi kebutuhan keluarga. '''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Sementara, usia ideal untuk menikah pada  perempuan ialah 21 tahun, karena berkaitan dengan kesiapan fisik, terutama untuk hamil dan melahirkan, mental, emosi dan kesiapan lainnya.'''),
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
