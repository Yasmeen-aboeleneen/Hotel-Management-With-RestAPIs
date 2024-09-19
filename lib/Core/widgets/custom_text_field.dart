import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_management/Core/Constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.keyboardType,
    required this.hintText,
    required this.labelText,
    required this.iconData,
  });
  final TextInputType? keyboardType;
  final String hintText;
  final String labelText;
  final IconData iconData;
  // final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.bold, fontSize: w * .035, color: kGrey),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(
          labelText,
        ),
        suffixIcon: Icon(
          iconData,
          color: kGrey,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: kPrimary, width: w * .006)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: kPrimary, width: w * .006)),
      ),
      cursorColor: kPrimary,
    );
  }
}
