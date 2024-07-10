import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_management/Core/Utils/common/custom_text_field.dart';
import 'package:hotel_management/Core/Utils/common/spacing.dart';

import '../../Core/Utils/common/constants.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();



    @override
  void dispose() {
    email.dispose();
    password.dispose();
     super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(40.h),
              child: Center(
                child: CircleAvatar(
                  radius: 85.h,
                  backgroundImage: const AssetImage(AppConstants.logo),
                ),
              ),
            ),
            heightSpacer(10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            heightSpacer(8),
             CustomTextField(controller:email ,
             enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14)
             ),
             )
          ],
        ),
      )),
    );
  }
}
