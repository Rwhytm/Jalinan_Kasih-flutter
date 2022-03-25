part of 'menu4.dart';

class Deskripsi41 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi41({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Perkawinan Remaja'),
                  DeskripsiImage(image: 'assets/images/cincin.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 24,
                      right: 20,
                    ),
                    child: Text(
                      '''$tab Perkawinan atau pernikahan dalam perundang-undangan di Indonesia adalah ikatan lahir batin antara seorang laki-laki dan perempuan sebagai suami istri dengan tujuan membentuk keluarga (rumah tangga) yang bahagia berdasarkan Ketuhanan Yang Maha Esa.''',
                      style: regularBlackFont,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Perkawinan remaja adalah perkawinan yang dilakukan pada saat salah satu atau keduanya masih beruis anak, yaitu kurang dari 18 tahun. Hal tersebut bertentangan dengan Undang-Undang Republik Indonesia tahun 2019 tentang perubahan atas Undang-Undang Nomor 1 tahun 1974 tentang perkawinan.''')
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
