import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalinan_kasih/common/constant.dart';
import 'package:jalinan_kasih/common/services.dart';
import 'package:jalinan_kasih/pages/login.dart';
import 'package:jalinan_kasih/pages/register/background_register.dart';
import 'package:jalinan_kasih/pages/wrapper.dart';
import 'package:jalinan_kasih/widgets/rounded_button.dart';
import 'package:jalinan_kasih/widgets/rounded_input_field.dart';
import 'package:jalinan_kasih/widgets/rounded_password_field.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';

class BodyRegister extends StatelessWidget {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  TextEditingController usernameController = TextEditingController(text: "");
  BodyRegister({Key? key}) : super(key: key);

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
              press: () async {},
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
