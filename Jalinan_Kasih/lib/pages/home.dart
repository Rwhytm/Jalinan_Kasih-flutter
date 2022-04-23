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

  void _handlePressed(types.User otherUser, BuildContext context) async {
    final room = await FirebaseChatCore.instance.createRoom(otherUser);

    Navigator.of(context).pop();
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatPage(
          room: room,
        ),
      ),
    );
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
    var currentUser = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            left: 10,
            top: 10,
            bottom: 40,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    (currentUser!.isAnonymous == false)
                        ? IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return RegisterPage();
                                  },
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.app_registration,
                              size: 25,
                              color: Colors.white,
                            ),
                          )
                        : const Text(""),
                  ],
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
                Center(
                  child: Container(
                    child: Image(
                      width: 300,
                      height: 200,
                      image: AssetImage('assets/images/suster.png'),
                    ),
                  ),
                ),

                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) => Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
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
                            backgroundColor: tombolColor,
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
                            backgroundColor: tombolColor,
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
                            backgroundColor: tombolColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CustomMenuButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Deskripsi51();
                                }),
                              );
                            },
                            image: 'assets/icons/icon5.png',
                            title: 'Fungsi\n keluarga',
                            backgroundColor: tombolColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CustomMenuButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return SublistPage2();
                                }),
                              );
                            },
                            image: 'assets/icons/icon2.png',
                            title: 'Kenali dirimu\nlebih dalam',
                            backgroundColor: tombolColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CustomMenuButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return SublistPage4();
                                }),
                              );
                            },
                            image: 'assets/icons/icon4.png',
                            title: 'Perkawinan\nremaja',
                            backgroundColor: tombolColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CustomMenuButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Deskripsi61();
                                }),
                              );
                            },
                            image: 'assets/icons/icon6.png',
                            title: 'Berencana itu\nkeren',
                            backgroundColor: tombolColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: CustomMenuButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return TimPeneliti();
                                }),
                              );
                            },
                            image: 'assets/icons/timpeneliti.png',
                            title: 'Tim\nPeneliti',
                            backgroundColor: tombolColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const Text(
                  'Berbagai Artikel',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),

                CustomSublistButton(
                  onPressed: () {},
                  image: 'assets/images/deskripsi21.png',
                  title: 'Artikel 1\n',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: (currentUser.isAnonymous == false)
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return UsersPage();
                      },
                    ),
                  );
                },
                child: const Icon(Icons.chat),
                backgroundColor: Colors.green,
              )
            : FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return UsersPageAdmin();
                      },
                    ),
                  );
                  // _handlePressed(, context);
                },
                child: const Icon(Icons.chat),
                backgroundColor: Colors.red,
              ),
      ),
    );
  }
}
