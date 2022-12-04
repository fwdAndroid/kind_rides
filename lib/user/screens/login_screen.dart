import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/main_home.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/utils.dart';
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
  final formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool loading = false;
  void login() {
    auth
        .signInWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString())
        .then((value) {
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    });
  }

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
                            "Login.",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            "Log In to your account",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          Form(
                            key: formKey,
                            child: Column(
                              children: [
                                CTextField(
                                  prefixIcon: Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).splashColor,
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    margin: const EdgeInsets.all(6),
                                    //    padding: EdgeInsets.all(3),
                                    child: Icon(
                                      Icons.person_outline_outlined,
                                      color: Color(
                                        Constants.greenIcon,
                                      ).withOpacity(0.7),
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
                                  maxlines: 1,
                                  prefixIcon: Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).splashColor,
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    margin: const EdgeInsets.all(6),
                                    child: Icon(
                                      Icons.lock_outline_rounded,
                                      color: Color(
                                        Constants.greenIcon,
                                      ).withOpacity(0.7),
                                    ),
                                  ),
                                  hintText: "Password",
                                  isPasswordField: true,
                                  controller: passwordController,
                                  validator: (value) {},
                                  autovalidateMode: AutovalidateMode.disabled,
                                ),
                              ],
                            ),
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(color: Colors.grey.shade700),
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
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              loading = true;
                            });
                            login();
                          }
                          // Navigator.of(context).pushAndRemoveUntil(
                          //     MaterialPageRoute(
                          //         builder: (context) => const MainHomePage()),
                          //     (Route<dynamic> route) => false);
                        },
                        child: getButton(
                            shadow: true,
                            radius: 30.r,
                            width: 160.h,
                            context: context,
                            loading: loading,
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
                          width: 8.w,
                        ),
                        Text(
                          "Login with Facebook",
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
                          width: 8.w,
                        ),
                        Text(
                          "Login with Google",
                          style: Theme.of(context).textTheme.headline4,
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
                    style: Theme.of(context).textTheme.bodyLarge,
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
