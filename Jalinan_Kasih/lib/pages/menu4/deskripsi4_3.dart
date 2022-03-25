part of 'menu4.dart';

class Deskripsi43 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi43({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Dampak Perkawinan Remaja  '),
                  DeskripsiImage(image: 'assets/images/marah.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  SubtitleDeskripsi(subtitle: '1. Aspek Ekonomi dan Sosial'),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Mengalami masalah perekonomian yang berperan dalam mewujudkan kesejahteraan keluarga\n-	Daya saing rendah untuk mendapatkan pekerjaan formal dengan jenjang karir yang baik\n-	Kehilangan komunitas / teman karena waktu terkuras untuk mengurus anak dan keluarga\n-	Kurang optimalnya pengasuhan anak (aspek pengetahuan dan intelektual pengasuhan belum siap)'''),
                  SubtitleDeskripsi(subtitle: '2. Aspek Psikologi'),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Emosi yang tidak stabil dapat memicu retaknya hubungan rumah tangga (pertengkaran\n-	Rentan mendapatkan perlakukan kekerasan brbasis gender\n-	Berpotensi mengalami kegagalan dalam membangun keluarga (perceraian)\n-	 Kondisi emosional yang labil ketika pasca melahirkan (baby blues)\n-	Mengalami ketidakstabilan emosi (stress / depresi) karena tuntunan sebagai orangtua muda'''),
                  SubtitleDeskripsi(subtitle: '3. Aspek Pendidikan'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pernikahan dini cenderung menyebabkan pelakunya mengalami putus sekolah. Mereka kemungkinan 11 kali lebih tinggi untuk putus sekolah dibanding dengan anak perempuan yang masih bersekolah.'''),
                  SubtitleDeskripsi(subtitle: '4. Aspek Kesehatan'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Berisiko mengalami masalah kesehatan reproduksi seperti kanker leher rahim dan trauma fisik pada organ intim, jika sampai terjadi kehamilan maka risiko kesehatannya lebih tinggi.'''),
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
