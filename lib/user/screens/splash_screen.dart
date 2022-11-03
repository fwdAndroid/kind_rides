import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      // setState(() {
      //   Navigator.of(context).pushAndRemoveUntil(
      //       MaterialPageRoute(builder: (context) => const WelcomePage()),
      //       (Route<dynamic> route) => false);
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 38.w,
              right: 38.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                ),
                SvgPicture.asset(
                  'assets/images/traveler.svg',
                ),
              ],
            ),
          ),
        ));
  }
}
