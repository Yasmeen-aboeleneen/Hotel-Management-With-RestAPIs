import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_management/Core/Constants/colors.dart';
import 'package:hotel_management/Views/Auth/forgot_password_screen.dart';

class LoginRow extends StatefulWidget {
  const LoginRow({super.key});

  @override
  State<LoginRow> createState() => _CustomRawState();
}

class _CustomRawState extends State<LoginRow> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    // LoginControllerImplement controller = Get.put(LoginControllerImplement());
    var w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Checkbox(
            checkColor: Colors.white,
            activeColor: kPrimary,
            value: isCheck,
            onChanged: (newValue) {
              setState(() {
                isCheck = newValue;
              });
            }),
        Expanded(
            child: RichText(
                text: TextSpan(children: [
          TextSpan(
            text: 'Remember me',
            style: TextStyle(
                color: kPrimary,
                fontSize: w * .04,
                fontWeight: FontWeight.bold),
          ),
        ]))),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotPasswordScreen()));
            },
            child: Text(
              "Forgot Password ?",
              style: GoogleFonts.notoSansOlChiki(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .04,
                  color: kPrimary,
                  decoration: TextDecoration.underline,
                  decorationColor: kPrimary),
            )),
      ],
    );
  }
}
