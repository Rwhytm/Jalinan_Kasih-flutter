import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jalinan_kasih/pages/login.dart';
import 'package:jalinan_kasih/pages/pages.dart';
import 'package:jalinan_kasih/pages/welcome.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? firebaseUser = Provider.of<User?>(context);
    return (firebaseUser == null) ? Welcome() : HomePage();
  }
}
