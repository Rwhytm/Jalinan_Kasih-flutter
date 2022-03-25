import 'package:flutter/material.dart';
import 'package:jalinan_kasih/pages/welcome/body_welcome.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWelcome(),
    );
  }
}
