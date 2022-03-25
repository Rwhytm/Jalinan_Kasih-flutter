part of 'menu2.dart';

class SublistPage2 extends StatefulWidget {
  const SublistPage2({Key? key}) : super(key: key);

  @override
  _SublistPage2State createState() => _SublistPage2State();
}

class _SublistPage2State extends State<SublistPage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: ListView(
        children: [
          AppBar(
            toolbarHeight: 80,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: blackColor,
              ),
              iconSize: 25,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Kenali Dirimu Lebih Dalam',
              style: semiBlackFont.copyWith(fontSize: 18),
            ),
            centerTitle: true,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi21();
                      }),
                    );
                  },
                  image: 'assets/images/deskripsi21.png',
                  title: 'Mengenal Organ Reproduksi\nPerempuan',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi22();
                      }),
                    );
                  },
                  image: 'assets/images/penis2_2.png',
                  title: 'Mengenal Organ Reproduksi\nLaki-laki',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi23();
                      }),
                    );
                  },
                  image: 'assets/images/perubahan.png',
                  title: 'Perubahan pada Remaja',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi24();
                      }),
                    );
                  },
                  image: 'assets/images/perawatan.png',
                  title: 'Perawatan Pribadi saat\nmenstruasi pada perempuan',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
