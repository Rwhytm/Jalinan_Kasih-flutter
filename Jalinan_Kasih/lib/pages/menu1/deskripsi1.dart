part of 'menu1.dart';

class Deskripsi1 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi1({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: '1.	Siapakah Aku'),
                  DeskripsiImage(image: 'assets/images/siapaaku1.png'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Aku adalah remaja yang sedang menjalani masa peralihan dari anak-anak menjadi dewasa dan ditandai dengan matangnya organ reproduksi. Masa peralihan ini dinamakan pubertas.'''),
                  SubtitleDeskripsi(
                      subtitle:
                          'Tahapan pubertas dibagi menjadi tiga tahap : '),
                  CustomListDeskripsi(
                      deskripsi:
                          '''Remaja awal (10-14 tahun)\nRemaja tengah (15-19 tahun)\nRemaja Akhir (20-24 tahun)'''),
                  DeskripsiImage(image: 'assets/images/siapaaku2.png'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pubertas pada perempuan ditandai dengan menstruasi (biasa dikenal dengan “mens” atau “datang bulan”) , yang biasa dialami oleh perempuan setiap 28-35 hari selama 2-7 hari.  Jika sudah menstruasi, berarti perempuan mulai melepas hormon yang menandakan rahim siap untuk menerima sel telur dari indung telur, dan ketika sel telur tidak dibuahi, maka akan dilepaskan ke rahim dan akan luruh bersama dinding rahim.
'''),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Pubertas  pada laki-laki ditandai dengan mimpi basah, yang artinya hormon testosteron sudah mulai berfungsi, sehingga secara alami sepasang testis (buah zakar) akan terus menerus menghasilkan sperma. Jika sudah matang, sperma akan disalurkan melalui saluran sperma menuju saluran kencing. Jika tidak terjadi pembuahan maka sperma tersebut akan keluar sendiri secara alami melalui mimpi basah.''')
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
