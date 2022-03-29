part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    splashTimer();
    super.initState();
  }

  Future<Timer> splashTimer() async {
    return Timer(Duration(seconds: 4), onDone);
  }

  void onDone() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => RegisterPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 300,
              height: 220,
              image: AssetImage('assets/images/remaja.png'),
              fit: BoxFit.contain,
            ),
            Text(
              'Jalinan Kasih',
              textAlign: TextAlign.center,
              style: semiBlackFont.copyWith(fontSize: 24),
            ),
            Text(
              '(RemaJA PeduLI deNgAN KesehAtan ReprodukSI)',
              textAlign: TextAlign.center,
              style: regularBlackFont.copyWith(fontSize: 14),
            ),
          ],
        )),
      ),
    );
  }
}
