part of 'menu2.dart';

class Deskripsi23 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi23({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Perubahan pada Remaja'),
                  DeskripsiImage(image: 'assets/images/perubahan.png'),
                  SubtitleDeskripsi(subtitle: 'Perubahan fisik (secara umum)'),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Tinggi dan berat badan bertambah dengan cepat \n-	Kulit berminyak, rentan timbul jerawat\n-	Produksi keringat berlebih\n-	Mulai tumbuh rambut di ketiak dan sekitar alat kelamin  '''),
                  SubtitleDeskripsi(
                      subtitle:
                          'Perubahan Psikis atau Emosional (secara umum)'),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab perubahan emosional disebabkan oleh perkembangan hormon dan perubahan fisik pun berdampak pada perubahan pola pergaulan dan kehidupan sosial remaja itu sendiri'''),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Mulai memperhatikan penampilannya\n-	Merasa kurang percaya diri\n-	Menarik diri dari pergaulan\n-	Emosi yang mudah sekali berubah\n-	Mulai adanya ketertarikan dengan orang lain secara emosional dan munculnya ketertarikan seksual'''),
                  SubtitleDeskripsi(subtitle: 'Perubahan Secara Spesifik'),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(20.0),
                    child: Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(
                            'Laki-Laki',
                            textAlign: TextAlign.center,
                          ),
                          Text('Perempuan', textAlign: TextAlign.center),
                        ]),
                        TableRow(children: [
                          Text('$tab Bahu dan dada lebih bidang'),
                          Text('$tab Kadar lemak mulai bertambah'),
                        ]),
                        TableRow(children: [
                          Text('$tab Lebih berotot'),
                          Text('$tab Pinggul mulai melebar'),
                        ]),
                        TableRow(children: [
                          Text('$tab Tumbuh Jakun'),
                          Text(
                              '$tab Payudara membesar dan putting mulai berbentuk (menonjol ke depan)'),
                        ]),
                        TableRow(children: [
                          Text('$tab Suara lebih dalam dan membesar'),
                          Text(
                              '$tab Tumbuh rambut halus di sekitar ketiak dan alat kelamin (pada beberapa remaja perempuan juga tumbuh rambut sedikit di lengan dan tungkai'),
                        ]),
                        TableRow(children: [
                          Text(
                              '$tab Tumbuh rambut halus sekitar ketiak dan alat kelamin (sebagian ada juga yang tumbuh rambut di lengan, tungkai, dada, punggung dan wajah (kumis dan janggut)'),
                          Text('$tab Warna alat kelamin menjadi agak gelap'),
                        ]),
                        TableRow(children: [
                          Text('$tab Penis dan skrotum menjadi lebih besar'),
                          Text('$tab Mulai menstruasi'),
                        ]),
                        TableRow(children: [
                          Text(
                              '$tab Dapat terjadi ejakulasi (keluarnya air mani), melalui mimpi basah'),
                          Text(''),
                        ])
                      ],
                    ),
                  )
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
