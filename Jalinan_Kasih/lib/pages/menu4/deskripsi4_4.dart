part of 'menu4.dart';

class Deskripsi44 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi44({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Kehamilan Remaja'),
                  DeskripsiImage(image: 'assets/images/kehamilan.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  SubtitleDeskripsi(
                      subtitle: 'Risiko kehamilan remaja pada kesehatan :'),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Tekanan darah tinggi, risiko yang lebih berat mungkin akan terjadi yaitu eklampsia (kejang-kejang)\n-	Kelahiran bayi prematur \n-	Bayi kekurangan berat badan atau Berat Badan Lahir Rendah (BBLR)\n-	Memiliki kecenderungan yang tinggi untuk melahirkan\n-	Proses persalinan yang memakan waktu lama\n-	Kematian ibu dan janin'''),
                  SubtitleDeskripsi(subtitle: 'Pencegahan Kehamilan Remaja '),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Memberikan banyak informasi mengenai seksualitas pada remaja, menjelaskan akibat jika melakukan hubungan seksual sebelum menikah\n-	Diperlukan kontrol diri dari remaja, dengan memunculkan rasa percaya diri, mealtih sikap asertif terhadap apa yang diinginkan\n-	Peran orangtua menjadi teman diskusi '''),
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
