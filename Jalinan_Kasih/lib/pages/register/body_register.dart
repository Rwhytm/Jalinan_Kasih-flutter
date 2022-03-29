import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalinan_kasih/pages/login.dart';
import 'package:jalinan_kasih/pages/register/background_register.dart';
import 'package:jalinan_kasih/widgets/rounded_button.dart';
import 'package:jalinan_kasih/widgets/rounded_input_field.dart';
import 'package:jalinan_kasih/widgets/rounded_password_field.dart';

class BodyRegister extends StatelessWidget {
  const BodyRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundRegister(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
            child: Text("Sudah memiliki akun, Login?"),
          ),
        ],
      ),
    ));
  }
}
