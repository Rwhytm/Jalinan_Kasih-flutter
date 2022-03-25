part of 'menu2.dart';

class Deskripsi22 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi22({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Mengenal Organ Reproduksi Laki-laki'),
                  DeskripsiImage(image: 'assets/images/penis2_2.png'),
                  SubtitleDeskripsi(subtitle: 'Penis'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Berfungsi sebagai alat senggama dan saluran pengeluaran sperma dan air seni. Penis terdiri dari jaringan erektil. Dalam kondisi biasa, ukuran penis kecil. Akan tetapi, ketika terangsang secara seksual, jaringan erektil akan terisi banyak darah, sehingga penis akan berubah menjadi tegang, keras dan besar, yang dinamakan ereksi. 
Ereksi dapat terjadi karena rangsang seksual dan pada dini hari karena meningkatnya hormon testosteron.

'''),
                  SubtitleDeskripsi(subtitle: 'Kulup'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Adalah kulit penutup bagian ujung penis, disebut juga foreskin. Bagian ujung penis yang disebut glands ini banyak mengandung pembuluh darah dan syaraf. Kuluo ini lah yang dibersihkan atau dipotong pada saat di khitan (sangat dianjurkan karena memudahkan pembersihan penis sehingga mengurangi kemungkinan terkena infeksi, radang dan beberapa macam kanker.
'''),
                  SubtitleDeskripsi(subtitle: 'Skrotum (Kantung Zakar)'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Adalah kantung kulit yang melindungi testis, berwarna gelap dan berlipat-lipat. Skrotum adalah tempat bergantungnya testis yang mengandung otot polos yang mengatur jarak testis ke dinding perut agar suhu testis relatif tetap.
'''),
                  SubtitleDeskripsi(subtitle: 'Testis (buah zakar)'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Berjumlah dua buah, berfungsi memproduksi sperma setiap hari dengan bantuan hormon testosteron. Testis berada di dalam skrotum, di luar rongga panggul karena pertumbuhan sperma membutuhkan suhu yang lebih rendah daripada suhu tubuh.
'''),
                  SubtitleDeskripsi(subtitle: 'Vas Deferens'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Masing-masing testis mempunyai saluran sperma yang menyalurkan sperma dari testis menuju prostat. Dari prostat, sel sperma akan didorong oleh cairan putih kental (mani atau semen) agar dapat berenang lebih cepat melalui saluran menuju penis.
'''),
                  SubtitleDeskripsi(subtitle: 'Epididimis'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Di bagian awal vagina, terdapat dua penutup vagina yang disebut labia atau bibir kemaluan. Bagian luar disebut labia mayora, sementara bagian dalam disebut labia minora.
'''),
                  SubtitleDeskripsi(subtitle: 'Kelenjar prostat'),
                  CustomDeskripsi(
                      deskripsi: '''$tab Menghasilkan air mani (cairan semen).
'''),
                  SubtitleDeskripsi(
                      subtitle: 'Uretra (saluran kencing atau saluran kemih)'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Saluran untuk mengeluarkan air seni dan air mani.
'''),
                  SubtitleDeskripsi(subtitle: 'Vesica seminalis'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Dua kantong yang terletak di sisi kelenjar prostat yang menghasilkan sekaligus menampung air mani agar sperma dapat mengalir ke penis.
'''),
                  SubtitleDeskripsi(subtitle: 'Rektum'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Bagian akhir dari usus besar yang terletak di atas anus. Rektum adalah saluran yang dilalui oleh kotoran
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
