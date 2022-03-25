part of 'menu3.dart';

class Deskripsi31 extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const Deskripsi31({Key? key}) : super(key: key);

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
                  DeskripsiTitle(text: 'Kesehatan Reproduksi'),
                  DeskripsiImage(image: 'assets/images/sex_health.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 24,
                      right: 20,
                    ),
                    child: Text(
                      '''$tab Kesehatan reproduksi menurut ICPD (Konferensi Kependudukan dan Pembangunan, Kairo,1994), yaitu suatu keadaan sejahtera fisik, mental dan sosial secara utuh, tidak semata-mata bebas dari penyakit atau kecacatan dalam semua hal yang berkaitan dengan sistem reproduksi, serta fungsi dan prosesnya. ''',
                      style: regularBlackFont,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  CustomDeskripsi(
                      deskripsi:
                          '''$tab Masalah kesehatan reproduksi remaja yaitu pada saat perempuan mengalami haid atau menarche yang bisa berisiko timbulnya anemia, perilaku seksual berisiko bila kurang pengetahuan,sehingga dapat terjadi kehamilan di luar nikah, abortuss yang tidak aman, tertular penyakit menular seksual termasuk HIV AIDS.''')
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
