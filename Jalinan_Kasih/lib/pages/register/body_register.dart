import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalinan_kasih/pages/register/background_register.dart';

import '../../common/constant.dart';
import '../../common/services.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_input_field.dart';
import '../../widgets/rounded_password_field.dart';
import '../wrapper.dart';

class BodyRegister extends StatefulWidget {
  BodyRegister({Key? key}) : super(key: key);

  @override
  State<BodyRegister> createState() => _BodyRegisterState();
}

class _BodyRegisterState extends State<BodyRegister> {
  bool _registering = false;
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  TextEditingController usernameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundRegister(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "SIGNUP",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Username",
              controller: usernameController,
            ),
            RoundedInputField(
              hintText: "Your Email",
              controller: emailController,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              controller: passwordController,
              onChanged: (value) {},
            ),
            RoundedButton(
              color: kPrimaryColor,
              text: "REGISTER",
              textColor: Colors.white,
              press: () async {
                await AuthServices.signUp(
                  usernameController.text,
                  emailController.text,
                  passwordController.text,
                ).then(
                  (value) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value != null
                          ? "Register Berhasil"
                          : "Register gagal, Coba Lagi"),
                    ),
                  ),
                );
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Wrapper();
                    },
                  ),
                );
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Wrapper();
                    },
                  ),
                );
              },
              child: Text("Sudah memiliki akun, Login?"),
            ),
          ],
        ),
      ),
    );
  }
}
