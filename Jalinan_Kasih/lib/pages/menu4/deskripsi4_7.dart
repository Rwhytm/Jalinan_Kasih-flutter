part of 'menu4.dart';

class Deskripsi47 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi47({Key? key}) : super(key: key);

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
                      text: 'Karakteristik Remaja yang Belum Siap Menikah'),
                  DeskripsiImage(image: 'assets/images/belumsiap.png'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomListDeskripsi(
                      deskripsi:
                          '''-	Masih dalam proses untuk membentuk identitas diri yang matang\n-	Belum mampu berfikir secara komprehensif mengingat perkembangan hormonal yang bergejolak serta perkembangan otak yang belum sempurna sehingga masih mengedepankan solusi yang bersifat emosional dan cenderung labil\n-	Baru mengembangkan kemampuan menjalin hubungan interpersonal dan berempati kepada oranglain'''),
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
