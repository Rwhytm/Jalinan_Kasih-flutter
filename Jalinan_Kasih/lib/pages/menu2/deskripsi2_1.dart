part of 'menu2.dart';

class Deskripsi21 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi21({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Mengenal Organ Reproduksi Perempuan'),
                  DeskripsiImage(image: 'assets/images/deskripsi21.png'),
                  SubtitleDeskripsi(subtitle: 'Ovarium'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Yaitu organ di kiri dan kanan rahim di ujung saluran fimbriae (umbai-umbai) dan terletak di rongga pinggul indung telur yang berfungsi mengeluarkan sel telur (ovum). Sebulan sekali ovarium kiri dan kanan akan secara bergiliran mengeluarkan sel telur yang dapat dibuahi oleh sperma. Jika tidak dibuahi maka akan ikut keluar pada saat menstruasi. Selain itu, ovarium berfungsi menghasilkan hormon (estrogen dan progesteron).
'''),
                  SubtitleDeskripsi(subtitle: 'Tuba Falopi'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Disebut juga saluran telur, yaitu saluran kiri dan kanan rahir yang dilalui oleh ovum (sel telur) dan indung telur (ovarium) menuju rahim. Fungsinya sebagai tempat berjalannya sel telur setelah keluar dari ovarium (proses ovulasi) dan tempat bertemunya sel telur dan sperma (pembuahan atau konsepsi). Ujungnya berbentuk fimbriae yang berfungsi menangkap ovum yang dilepas indung telur.
'''),
                  SubtitleDeskripsi(subtitle: 'Serviks'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Disebut juga leher rahim. Jaringan otot yang tebal yang berfungsi sebagai leher rahim. Pada saat persalinan tiba, leher rahim akan membuka sekitar 10 cm.
'''),
                  SubtitleDeskripsi(subtitle: 'Klitoris'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Yaitu benjolan daging kecil yang paling peka dari seluruh alat kelamin perempuan, yang banyak mengandung pembuluh darah dan syaraf. 
'''),
                  SubtitleDeskripsi(subtitle: 'Uterus (rahim)'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Organ berbentuk alpukat gepeng, panjang 75 mm dan berat normal antara 30-50 gr. Memiliki dinding otot yang sangat tebal. Pada saat tidak hamil kurang lebih sebesar telur ayam kampung. Fungsi utama adalah sebagai tempat janin, berlindung dan menyediakan makanan untuk pertumbuhan janin sampai saatnya lahir.
'''),
                  SubtitleDeskripsi(subtitle: 'Labia Mayora dan labia minora'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Di bagian awal vagina, terdapat dua penutup vagina yang disebut labia atau bibir kemaluan. Bagian luar disebut labia mayora, sementara bagian dalam disebut labia minora.
'''),
                  SubtitleDeskripsi(subtitle: 'Vagina'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Saluran berdinding otot yang berbentuk silinder dengan diameter dnding depan ± 6,5 cm dan dinding belakang ± 9 cm, yang bersifat elastis dengan berlipat-lipat. Fungsinya sebagai tempat keluarnya darah menstruasi dan keluarnya bayi ketika persalinan.
'''),
                  SubtitleDeskripsi(subtitle: 'Kandung Kemih'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Tempat penampungan sementara air seni yang berasal dari ginjal. 
'''),
                  SubtitleDeskripsi(subtitle: 'Uretra (saluran kemih)'),
                  CustomDeskripsi(
                      deskripsi: '''$tab Saluran untuk menngeluarkan air seni. 
'''),
                  SubtitleDeskripsi(subtitle: 'Rektum'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Bagian akhir dari usus besar yang terletak di atas anus. Rektum adalah saluran yang dilalui oleh kotoran
'''),
                  SubtitleDeskripsi(subtitle: 'Anus'),
                  CustomDeskripsi(
                      deskripsi: '''$tab Tempat mengeluarkan kotoran atau feses.
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
    ;
  }
}
