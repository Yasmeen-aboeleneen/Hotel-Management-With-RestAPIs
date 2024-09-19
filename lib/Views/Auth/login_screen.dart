import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_management/Core/Constants/colors.dart';
import 'package:hotel_management/Views/Widgets/auth_widgets/login_form.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kPrimary,
      body: Padding(
        padding: EdgeInsets.only(top: h * .07, left: w * .03, right: w * .03),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Login to OCIEL',
                  style: GoogleFonts.aBeeZee(
                      color: kveryWhite,
                      fontSize: w * .08,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: h * .06,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: h * .02, left: w * .02, right: w * .02),
                height: h * .65,
                width: w,
                decoration: const BoxDecoration(
                    color: kveryWhite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(52),
                        bottomRight: Radius.circular(52))),
                child: const Center(child: LoginForm()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
