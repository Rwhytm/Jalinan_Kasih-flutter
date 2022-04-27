part of 'menu0_1.dart';

class KataPengantar extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const KataPengantar({Key? key}) : super(key: key);

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
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      top: 100,
                      left: 24,
                      right: 24,
                    ),
                    child: Center(
                      child: Text(
                        'Kata Pengantar',
                        style: semiBlackFont.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Puji dan syukur kami panjatkan ke hadirat Allah SWT yang telah mencurahkan rahmat dan hidayah-Nya sehingga inovasi Aplikasi “Jalinan Kasih (RemaJA PeduLI DeNgAN KesehAtan ReprodukSI)” ini dapat dihasilkan.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Aplikasi ini merupakan versi digital yang mengacu ada modul Direktorat Bina Ketahanan Keluarga. BKKBN & John Hapkins Center For Communication Programs. Modul perencanaan Masa Depan dan Ketahanan Reproduksi untuk Pendidik Sebaya Remaja usia 10-14 tahun, usia 15-19 tahun dan usia 20-24 tahun.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Ucapan terimakasih kami sampaikan kepada Poltekkes Kemenkes Bengkulu yang telah memberikan dana penelitian skema Penelitian Terapan Unggulan Perguruan Tinggi dan Ucapan terimakasih juga kami sampaikan kepada perwakilan BKKBN Propinsi Bengkulu sebagai mitra pengguna dalam pemanfaatan output hasil penelitian ini.'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Penelitian Aplikasi Jalinan Kasih ini bertujuan untuk memudahkan dalam memberikan edukasi tentang perencanaan masa depan dan kesehatan reproduksi bagi remaja, sehingga membantu remaja dalam pendewasaan usia perkawinan dan perencanaan keluarga.'''),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Bengkulu 31 Maret 2021',
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Tim Peneliti',
                        )),
                  ),
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
