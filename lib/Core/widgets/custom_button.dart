import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_management/Core/Constants/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  const CustomButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onTap,
        splashColor: kveryWhite.withOpacity(0.3),
        child: Container(
          height: h * .11,
          width: w * .35,
          decoration: BoxDecoration(
            color: kveryWhite,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: kveryWhite.withOpacity(0.9),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
            border: Border.all(
              color: kveryWhite,
              width: 3,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.aBeeZee(
                  color: kPrimary,
                  fontSize: w * .07,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
