import 'package:flutter/material.dart';
import 'package:jalinan_kasih/common/common.dart';
import 'package:jalinan_kasih/pages/login/body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: primaryColor, body: Body());
  }
}
