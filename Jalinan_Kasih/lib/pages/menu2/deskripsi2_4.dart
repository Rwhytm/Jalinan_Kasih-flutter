part of 'menu2.dart';

class Deskripsi24 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi24({Key? key}) : super(key: key);

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
                  DeskripsiTitle(
                      text: 'Perawatan Pribadi saatmenstruasi pada perempuan'),
                  DeskripsiImage(image: 'assets/images/perawatan.png'),
                  SubtitleDeskripsi(
                      subtitle:
                          'Perawatan Pribadi saat menstruasi pada perempuan'),
                  CustomListDeskripsi(
                      deskripsi:
                          '''- Mandi setiap hari\n- Makan makanan sehat dan bergizi, terutama yang mengandung zat besi seperti sayuran hijau, kacang-kacangan, hati ayam atau sapi, daging merah\n- Gunakan kain bersih, pembalut atau material lain yang ebrsih atau dapat diganti\n- Kebersihan merupakan hal penting untuk mencegah infeksi. Cuci baju dengan sabun dan keringkan di bawah matahari untuk mencegah bakteri\n- Beristirahat yang cukup\n- Lanjutkan  kegiatan seperti biasa\n- Jika mengalami keram atau terasa sakit di bawah perut atau punggung, lakukan aktivitas agar lebih nyaman dengan mandi air hangat, minum-minuman panas, berjalan jalan, pijat bagian bawah perut, berbaring dengan menaikan lutut dan menggerakannya di dalam lingkaran kecil\n- Berolahraga\n- Mengurangi konsumsi garam untuk emngurangi dehidrasi yangd apat menambah rasa sakit\n- Terkadang selama kurang lebih satu kinggu sebelum menstruasi, perempuan dapat mengalami payudara terasa sakit, suasana hati yang berubah-ubah , tetapi hal ini adalah wajar dan biasa terjadi.'''),
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
