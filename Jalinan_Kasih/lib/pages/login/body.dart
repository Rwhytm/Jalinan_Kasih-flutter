import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jalinan_kasih/pages/login/background.dart';
import 'package:jalinan_kasih/pages/welcome.dart';
import 'package:jalinan_kasih/widgets/login_sebagai_user.dart';
import 'package:jalinan_kasih/widgets/rounded_button.dart';
import 'package:jalinan_kasih/widgets/rounded_input_field.dart';
import 'package:jalinan_kasih/widgets/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN ADMIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture
            .asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            TextButton(onPressed: () {}, child: Text("Sebagai User"))
          ],
        ),
      ),
    );
  }
}
