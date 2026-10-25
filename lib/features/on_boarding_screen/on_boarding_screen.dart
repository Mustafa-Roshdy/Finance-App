import 'package:day11/core/styling/app_assets.dart';
// import 'package:day11/core/styling/app_styles.dart';
import 'package:day11/core/widgets/buttons/primary_button_widget.dart';
import 'package:day11/core/widgets/buttons/primary_outlined_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                AppAssets.onBoarding,
                width: double.infinity,
                height: 570.h,
                fit: BoxFit.fill,
              ),
        
              Gap(21.h),
        
              PrimaryButtonWidget(
                onPressed: () {},
                buttonText: "Login",
                width: 331.w,
                height: 56.h,
              ),
        
              Gap(15.h),
        
              PrimaryOutlinedButtonWidget(
                onPressed: () {},
                buttonText: "Register",
                width: 331.w,
                height: 56.h,
              ),
        
        
               Gap(46.h),
        
              //  Text("Continue as a guest",style: AppStyles.black15BoldStyle.copyWith(
              //   decoration: TextDecoration.underline)),

              Text("Continue as a guest",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                decoration: TextDecoration.underline)),
            ],
          ),
        ),
      ),
    );
  }
}
