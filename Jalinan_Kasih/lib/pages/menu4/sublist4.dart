part of 'menu4.dart';

class SublistPage4 extends StatefulWidget {
  const SublistPage4({Key? key}) : super(key: key);

  @override
  _SublistPage4State createState() => _SublistPage4State();
}

class _SublistPage4State extends State<SublistPage4> {
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
              'Perkawinan Remaja',
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
                        return const Deskripsi41();
                      }),
                    );
                  },
                  image: 'assets/images/cincin.jpg',
                  title: 'Perkawinan Remaja',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi42();
                      }),
                    );
                  },
                  image: 'assets/images/gandengan.png',
                  title: 'Alasan Perkawinan Anak\natau Remaja',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi43();
                      }),
                    );
                  },
                  image: 'assets/images/marah.jpg',
                  title: 'Dampak Perkawinan Remaja',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi44();
                      }),
                    );
                  },
                  image: 'assets/images/kehamilan.jpg',
                  title: 'Kehamilan Remaja',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi45();
                      }),
                    );
                  },
                  image: 'assets/images/usiaideal.png',
                  title: 'Usia Ideal untuk Menikah',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi46();
                      }),
                    );
                  },
                  image: 'assets/images/ballon.jpg',
                  title: 'Karakteristik Remaja yang\nSiap Untuk Menikah',
                ),
                CustomSublistButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Deskripsi47();
                      }),
                    );
                  },
                  image: 'assets/images/belumsiap.png',
                  title: 'Karakteristik Remaja yang\nBelum Siap Untuk Menikah',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
