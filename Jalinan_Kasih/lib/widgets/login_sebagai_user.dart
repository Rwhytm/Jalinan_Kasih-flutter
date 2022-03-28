// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:jalinan_kasih/common/constant.dart';

// class LoginSebagaiUser extends StatelessWidget {
//   final Function? press;
//   const LoginSebagaiUser({
//     Key? key,
//     this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         TextButton(
//           onPressed: press != null
//               ? () {
//                   if (press != null) {
//                     press!();
//                   }
//                 }
//               : null,
//           child: Text(
//             "Login Sebagai User",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//         // Text(
//         //   login ? "Don’t have an Account ? " : "Already have an Account ? ",
//         //   style: TextStyle(color: kPrimaryColor),
//         // ),
//         // GestureDetector(
//         //   onTap: press,
//         //   child: Text(
//         //     login ? "Sign Up" : "Sign In",
//         //     style: TextStyle(
//         //       color: kPrimaryColor,
//         //       fontWeight: FontWeight.bold,
//         //     ),
//         //   ),
//         // )
//       ],
//     );
//   }
// }
