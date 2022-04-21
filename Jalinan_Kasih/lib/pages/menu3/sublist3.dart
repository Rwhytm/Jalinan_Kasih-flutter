part of 'menu3.dart';

class SublistPage3 extends StatefulWidget {
  const SublistPage3({Key? key}) : super(key: key);

  @override
  _SublistPage3State createState() => _SublistPage3State();
}

class _SublistPage3State extends State<SublistPage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: ListView(
        children: [
          AppBar(
            backgroundColor: tombolColor,
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
              'Kesehatan reproduksi',
              style: semiBlackFont.copyWith(fontSize: 18),
            ),
            centerTitle: true,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor,
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
                        return const Deskripsi31();
                      }),
                    );
                  },
                  image: 'assets/images/sex_health.png',
                  title: 'Kesehatan Reproduksi  ',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi32();
                      }),
                    );
                  },
                  image: 'assets/images/alasanperkawinan.png',
                  title: 'Perilaku Berisiko',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi33();
                      }),
                    );
                  },
                  image: 'assets/images/remaja.png',
                  title: 'Dampak Perilaku Berisiko',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
