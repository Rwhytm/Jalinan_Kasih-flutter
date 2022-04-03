import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jalinan_kasih/common/constant.dart';
import 'package:jalinan_kasih/common/services.dart';
import 'package:jalinan_kasih/pages/pages.dart';
import 'package:jalinan_kasih/pages/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.FirebaseUserStream,
      initialData: null,
      child: MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
