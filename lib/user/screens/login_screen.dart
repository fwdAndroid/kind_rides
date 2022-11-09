import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';

import '../../utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          horizontal: 20.h, vertical: 50.h),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Log In",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            "Log In to your account",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          SizedBox(
                            height: 35.h,
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
                            height: 10.h,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Navigator.of(context).push(
                                  //   MaterialPageRoute(
                                  //       builder: (context) => const ForgetPasswordPage()),
                                  // );
                                },
                                child: Text(
                                  "Forgot Password?     ",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      child: InkWell(
                        onTap: () {},
                        child: getButton(
                            shadow: true,
                            radius: 30.r,
                            width: 160.h,
                            context: context,
                            alignment: MainAxisAlignment.center,
                            text: "Login"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 80.h,
                ),
                SizedBox(
                  width: 250.h,
                  child: getButton(
                    shadow: false,
                    context: context,
                    alignment: MainAxisAlignment.start,
                    vertical: 15.h,
                    horizontal: 10.w,
                    radius: 10.r,
                    color: Theme.of(context).selectedRowColor,
                    icon: Row(
                      children: [
                        Image.asset("assets/icons/facebook.png"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Login with Facebook",
                          style: Theme.of(context).textTheme.headline3,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 250.h,
                  child: getButton(
                    shadow: false,
                    context: context,
                    alignment: MainAxisAlignment.start,
                    horizontal: 10.w,
                    vertical: 15.w,
                    radius: 10.r,
                    color: Theme.of(context).selectedRowColor,
                    icon: Row(
                      children: [
                        Image.asset("assets/icons/google.png"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Login with Google",
                          style: Theme.of(context).textTheme.headline3,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 65.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text(
                    "Don't have an account?",
                    style: Theme.of(context).textTheme.headline4,
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
