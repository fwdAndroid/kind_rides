import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/login_screen.dart';
import 'package:kind_rides/user/screens/main_home.dart';
import 'package:kind_rides/user/screens/otp_verification_screen.dart';
import 'package:kind_rides/utils/utils.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../utils/constants.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool loading = false;
  void signup() {
    if (formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      auth
          .createUserWithEmailAndPassword(
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
                          horizontal: 20.h, vertical: 40.h),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Column(
                        children: [
                          Text("Register.",
                              style: Theme.of(context).textTheme.headline1),
                          Text(
                            "Register your account to kind",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 30.h,
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
                                  height: 6.h,
                                ),
                                CTextField(
                                  maxlines: 1,
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
                                      ).withOpacity(0.7),
                                    ),
                                  ),
                                  hintText: "Password",
                                  isPasswordField: true,
                                  controller: passwordController,
                                  validator: (value) {},
                                  autovalidateMode: AutovalidateMode.disabled,
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                CTextField(
                                  maxlines: 1,
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
                                      ).withOpacity(0.7),
                                    ),
                                  ),
                                  hintText: "Confirm Password",
                                  isPasswordField: true,
                                  controller: confirmPasswordController,
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
                                      ).withOpacity(0.7),
                                    ),
                                  ),
                                  hintText: "Mobile Phone",
                                  isPasswordField: false,
                                  controller: phoneController,
                                  validator: (value) {},
                                  autovalidateMode: AutovalidateMode.disabled,
                                ),
                                SizedBox(
                                  height: 35.h,
                                ),
                              ],
                            ),
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
                            "I agree to ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            "Terms & Conditions and Privacy policy. ",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w600),
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
                            // auth
                            //     .createUserWithEmailAndPassword(
                            //         email: emailController.text.toString(),
                            //         password:
                            //             passwordController.text.toString())
                            auth
                                .verifyPhoneNumber(
                                    phoneNumber:
                                        phoneController.text.toString(),
                                    verificationCompleted:
                                        (PhoneAuthCredential credential) async {
                                      await auth
                                          .signInWithCredential(credential);
                                    },
                                    verificationFailed: (e) {
                                      Utils().toastMessage(e.toString());
                                    },
                                    codeSent: ((String verificationId,
                                        int? resentToken) async {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OTPVerificationPage(
                                                  verificationId:
                                                      verificationId,
                                                )),
                                      );
                                      setState(() {
                                        loading = false;
                                      });
                                      // PhoneAuthCredential credential =
                                      //     PhoneAuthProvider.credential(
                                      //         verificationId: verificationId,
                                      //         smsCode: Utils().getCode);
                                      // await auth.signInWithCredential(credential);
                                    }),
                                    codeAutoRetrievalTimeout: (e) {
                                      Utils().toastMessage(e.toString());
                                    })
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
                        },
                        child: getButton(
                            shadow: true,
                            loading: loading,
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
