// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hotel_management/Core/Constants/colors.dart';

class CustomNormalButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  const CustomNormalButton({
    super.key,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: w * .17, right: w * .17),
      height: h * .06,
      width: w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(52),
        color: kPrimary,
        boxShadow: [
          BoxShadow(
            color: kPrimary.withOpacity(0.9),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.aBeeZee(
              color: kveryWhite,
              fontSize: w * .07,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
