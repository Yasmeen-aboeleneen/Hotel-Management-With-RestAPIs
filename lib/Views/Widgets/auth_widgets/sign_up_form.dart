import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_management/Core/Constants/colors.dart';
import 'package:hotel_management/Core/widgets/custom_normal_button.dart';
import 'package:hotel_management/Core/widgets/custom_text_field.dart';
import 'package:hotel_management/Views/Auth/login_screen.dart';
import 'package:hotel_management/Views/Home/home_screen.dart';
import 'package:hotel_management/Views/Widgets/auth_widgets/social_login.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        const CustomTextfield(
          hintText: 'Enter your user name',
          labelText: 'User Name',
          iconData: Icons.person,
          keyboardType: TextInputType.text,
        ),
        SizedBox(
          height: h * .03,
        ),
        const CustomTextfield(
          hintText: 'Enter your email',
          labelText: 'Email',
          iconData: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: h * .03,
        ),
        const CustomTextfield(
          hintText: 'Enter your password',
          labelText: 'Password',
          iconData: Icons.remove_red_eye_rounded,
          keyboardType: TextInputType.text,
        ),
        SizedBox(
          height: h * .02,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SocialLogin(image: 'assets/images/google.jpg', text: 'Google'),
            SocialLogin(image: 'assets/images/facebook.png', text: 'Facebook'),
          ],
        ),
        SizedBox(
          height: h * .02,
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Loginscreen()));
            },
            child: Center(
              child: Text(
                "Already have an account ? Login",
                style: GoogleFonts.notoSansOlChiki(
                    fontWeight: FontWeight.bold,
                    fontSize: w * .04,
                    color: kPrimary,
                    // decoration: TextDecoration.underline,
                    decorationColor: kPrimary),
              ),
            )),
        SizedBox(
          height: h * .015,
        ),
        CustomNormalButton(
          title: 'Sign Up',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        )
      ],
    );
  }
}
