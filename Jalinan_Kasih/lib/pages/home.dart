part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _error = false;
  bool _initialized = false;
  User? _user;
  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        setState(() {
          _user = user;
        });
      });
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: 10,
            top: 10,
            bottom: 40,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    AuthServices.signOut();
                  },
                  icon: const Icon(
                    Icons.logout_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                ),

                // SizedBox(
                //   height: 30,
                // ),
                // Text(
                //   'Selamat Datang di\nAplikasi Jalinan Kasih',
                //   style: semiBlackFont.copyWith(
                //     fontSize: 16,
                //   ),
                // ),

                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) => Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CustomMenuButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return KataPengantar();
                                }),
                              );
                            },
                            image: 'assets/icons/katapengantar.png',
                            title: 'Kata\n pengantar',
                            backgroundColor: blueColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CustomMenuButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Deskripsi1();
                                }),
                              );
                            },
                            image: 'assets/icons/icon1.png',
                            title: 'Siapakah\n aku',
                            backgroundColor: blueColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CustomMenuButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return SublistPage3();
                                }),
                              );
                            },
                            image: 'assets/icons/icon3.png',
                            title: 'Kesehatan\n reproduksi',
                            backgroundColor: blueColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
                        return const Deskripsi21();
                      }),
                    );
                  },
                  image: 'assets/images/deskripsi21.png',
                  title: 'Mengenal Organ Reproduksi\nPerempuan',
                ),
                // ),
                // Row(
                //   children: [
                //     // Sebelah Kiri
                //     Column(
                //       children: [

                //         // Menu 1
                //

                //         // Menu 3

                //         SizedBox(
                //           height: 40,
                //         ),
                //         CustomMenuButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(builder: (context) {
                //                 return Deskripsi51();
                //               }),
                //             );
                //           },
                //           image: 'assets/icons/icon5.png',
                //           title: 'Fungsi\n keluarga',
                //           backgroundColor: blueColor,
                //         ),
                //       ],
                //     ),
                //     SizedBox(
                //       width: 70,
                //     ),
                //     // Sebelah Kanan
                //     Column(
                //       children: [
                //         CustomMenuButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(builder: (context) {
                //                 return TimPeneliti();
                //               }),
                //             );
                //           },
                //           image: 'assets/icons/timpeneliti.png',
                //           title: 'Tim\nPeneliti',
                //           backgroundColor: pinkColor,
                //         ),
                //         SizedBox(
                //           height: 40,
                //         ),
                //         CustomMenuButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(builder: (context) {
                //                 return SublistPage2();
                //               }),
                //             );
                //           },
                //           image: 'assets/icons/icon2.png',
                //           title: 'Kenali dirimu\nlebih dalam',
                //           backgroundColor: pinkColor,
                //         ),
                //         SizedBox(
                //           height: 40,
                //         ),
                //         CustomMenuButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(builder: (context) {
                //                 return SublistPage4();
                //               }),
                //             );
                //           },
                //           image: 'assets/icons/icon4.png',
                //           title: 'Perkawinan\nremaja',
                //           backgroundColor: pinkColor,
                //         ),
                //         SizedBox(
                //           height: 40,
                //         ),
                //         CustomMenuButton(
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(builder: (context) {
                //                 return Deskripsi61();
                //               }),
                //             );
                //           },
                //           image: 'assets/icons/icon6.png',
                //           title: 'Berencana itu\nkeren',
                //           backgroundColor: pinkColor,
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.chat),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
