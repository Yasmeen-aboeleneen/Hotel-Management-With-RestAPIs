import 'package:flutter/material.dart';
import 'package:hotel_management/Core/Constants/colors.dart';
import 'package:hotel_management/Views/Widgets/login_form.dart';

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
      backgroundColor: kveryWhite,
      body: Container(
        height: h,
        width: w,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/pic1.jpeg',
              height: h * .4,
              width: w,
              fit: BoxFit.fill,
            ),
            Positioned(
                top: h * .34,
                bottom: 0,
                left: 0,
                right: 0,
                child: const LoginForm()),
          ],
        ),
      ),
    );
  }
}
