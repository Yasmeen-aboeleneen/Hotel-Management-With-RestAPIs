import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_management/Core/Constants/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
        height: h * .7,
        width: w,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: kveryWhite,
        ),
        child: Padding(
          // Corrected padding
          padding:
              EdgeInsets.only(top: h * 0.01, left: w * 0.02, right: w * 0.02),
          child: Center(
            child: Text(
              'Login to OCIEL',
              style:
                  GoogleFonts.aBeeZee(color: kPrimary, fontSize: w * .08),
            ),
          ),
        ));
  }
}
