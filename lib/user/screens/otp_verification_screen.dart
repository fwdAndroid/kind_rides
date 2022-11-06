import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/main_home.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import 'package:pinput/pinput.dart';
import '../../utils/constants.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({Key? key}) : super(key: key);

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 50.h,
      textStyle: TextStyle(
        fontSize: 24.sp,
        color: Theme.of(context).hintColor,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color.fromARGB(136, 153, 216, 215),
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75),
              blurStyle: BlurStyle.solid),
        ],
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      borderRadius: BorderRadius.circular(10.r),
    );
    final submittedPinTheme = defaultPinTheme;

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
                            "OTP Verfication",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            "We are sending otp on your number\nto verify your number +92312****036",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Text(
                            "Please enter your code",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Form(
                            child: Pinput(
                              cursor: Image.asset(
                                "assets/icons/cursor.png",
                                width: 25.h,
                                height: 25.h,
                                color: Color(Constants.greenDark),
                              ),
                              androidSmsAutofillMethod:
                                  AndroidSmsAutofillMethod.smsRetrieverApi,
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: focusedPinTheme,
                              submittedPinTheme: submittedPinTheme,
                              validator: (s) {},
                              pinputAutovalidateMode:
                                  PinputAutovalidateMode.onSubmit,
                              showCursor: true,
                              onCompleted: (pin) {},
                            ),
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
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const MainHomePage()),
                              (Route<dynamic> route) => false);
                        },
                        child: getButton(
                            shadow: true,
                            radius: 30.r,
                            width: 160.h,
                            context: context,
                            alignment: MainAxisAlignment.center,
                            text: "Verify"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Didn't get code?",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text(
                    "Resend code",
                    style: Theme.of(context).textTheme.headline3,
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
