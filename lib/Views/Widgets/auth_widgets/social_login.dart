import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_management/Core/Constants/colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
    this.image,
    this.icon,
    required this.text,
  });
  final String? image;
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            if (image != null)
              Image.asset(
                image!,
                fit: BoxFit.cover,
                height: h * .040,
              ),
            if (icon != null)
              Icon(
                icon,
                size: h * .040,
                color: kPrimary,
              ),
            SizedBox(
              height: h * .01,
            ),
            Text(
              text,
              style: GoogleFonts.aBeeZee(
                  color: kPrimary, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
