import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/login_screen.dart';
import 'package:kind_rides/user/screens/otp_verification_screen.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';

import '../../utils/constants.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
                SizedBox(
                  height: 40.h,
                ),
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 40.h),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Register",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            "Register your account",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          CTextField(
                            prefixIcon: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).splashColor,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              margin: EdgeInsets.all(6),
                              //    padding: EdgeInsets.all(3),
                              child: Icon(
                                Icons.person_outline_outlined,
                                color: Color(
                                  Constants.greenIcon,
                                ),
                              ),
                            ),
                            hintText: "Email / Phone Number",
                            isPasswordField: false,
                            controller: emailController,
                            validator: (value) {},
                            autovalidateMode: AutovalidateMode.disabled,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CTextField(
                            prefixIcon: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).splashColor,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              margin: EdgeInsets.all(6),
                              child: Icon(
                                Icons.lock_outline_rounded,
                                color: Color(
                                  Constants.greenIcon,
                                ),
                              ),
                            ),
                            hintText: "Password",
                            isPasswordField: true,
                            controller: emailController,
                            validator: (value) {},
                            autovalidateMode: AutovalidateMode.disabled,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CTextField(
                            prefixIcon: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).splashColor,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              margin: EdgeInsets.all(6),
                              child: Icon(
                                Icons.lock_outline_rounded,
                                color: Color(
                                  Constants.greenIcon,
                                ),
                              ),
                            ),
                            hintText: "Confirm Password",
                            isPasswordField: true,
                            controller: emailController,
                            validator: (value) {},
                            autovalidateMode: AutovalidateMode.disabled,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CTextField(
                            prefixIcon: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).splashColor,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              margin: EdgeInsets.all(6),
                              child: Icon(
                                Icons.phone,
                                color: Color(
                                  Constants.greenIcon,
                                ),
                              ),
                            ),
                            hintText: "Mobile Phone",
                            isPasswordField: false,
                            controller: emailController,
                            validator: (value) {},
                            autovalidateMode: AutovalidateMode.disabled,
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text(
                            "I agree to Terms & Conditions and Privacy policy. ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const OTPVerificationPage()),
                              (Route<dynamic> route) => false);
                        },
                        child: getButton(
                            shadow: true,
                            radius: 30.r,
                            width: 160.h,
                            context: context,
                            alignment: MainAxisAlignment.center,
                            text: "Register"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  width: 240.h,
                  child: getButton(
                    shadow: false,
                    context: context,
                    alignment: MainAxisAlignment.start,
                    vertical: 15.h,
                    radius: 10.r,
                    color: Theme.of(context).selectedRowColor,
                    icon: Row(
                      children: [
                        Image.asset("assets/icons/facebook.png"),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Register with Facebook",
                          style: Theme.of(context).textTheme.headline4,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 240.h,
                  child: getButton(
                    shadow: false,
                    context: context,
                    alignment: MainAxisAlignment.start,
                    vertical: 15.h,
                    radius: 10.r,
                    color: Theme.of(context).selectedRowColor,
                    icon: Row(
                      children: [
                        Image.asset("assets/icons/google.png"),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Register with Google",
                          style: Theme.of(context).textTheme.headline4,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text(
                    "Already have an account?",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
