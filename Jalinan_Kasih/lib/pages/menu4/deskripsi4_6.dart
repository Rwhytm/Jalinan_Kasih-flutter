part of 'menu4.dart';

class Deskripsi46 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi46({Key? key}) : super(key: key);

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
                      text: 'Karakteristik Remaja yang Sudah Siap Menikah'),
                  DeskripsiImage(image: 'assets/images/ballon.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Telah membentuk identitas diri yang matang\n-	Siap untuk menjalin komitmen hubungan dengan segala konsekuensi (tanggung jawab emosional, finansial, moril)\n-	Jika memutuskan ingin memiliki anak, individu siap menjadi orangtua dengan tanggungjawab dan komitmen tersendiri\n-	Mampu mengelola konflik yang menjadi salah satu konsekuensi dalam keluarga\n-	Bersedia menjalani hubungan yang bersifat mutual atau saling menerima dan memberi, bersifat terbuka dengan pasangan, serta saling percaya\n-	Dapat berempati dengan pasangan intim\n-	Mampu menjalin komunikasi yang dewasa dan sehat untuk mendukung komitmen hubungan intim'''),
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
