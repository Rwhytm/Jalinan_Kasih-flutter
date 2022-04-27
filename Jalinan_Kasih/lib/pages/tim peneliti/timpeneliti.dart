part of 'menu0_2.dart';

class TimPeneliti extends StatelessWidget {
  final String tab = '\t\t\t\t';
  const TimPeneliti({Key? key}) : super(key: key);

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
                  Container(
                    margin: const EdgeInsets.only(
                      top: 100,
                      left: 24,
                      right: 24,
                    ),
                    child: Center(
                      child: Text(
                        'Tim Peneliti',
                        style: semiBlackFont.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const CustomDeskripsi(
                      deskripsi:
                          '''LUSI ANDRIANI, SST.M.Kes (Prodi Sarjana Terapan Kebidanan Poltekkes Kemenkes Bengkulu)'''),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomDeskripsi(
                      deskripsi:
                          '''Dr. Demsa Simbolon, SKM.MKM (Jurusan Gizi Poltekkes Kemenkes Bengkulu)'''),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomDeskripsi(
                      deskripsi:
                          '''Frensi Riastuti, S.Sos (Perwakilan BKKBN Propinsi Bengkulu)'''),
                  const SizedBox(
                    height: 10,
                  ),
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
