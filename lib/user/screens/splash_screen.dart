import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kind_rides/user/screens/welcome_screen.dart';

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
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const WelcomeScreen()),
            (Route<dynamic> route) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
              ),
            ),

            Positioned(
              bottom: 60.h,
              child: Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: SvgPicture.asset(
                  'assets/images/taxi_loading.svg',
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: 38.w,
            //     right: 38.w,
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Image.asset(
            //         'assets/images/logo.png',
            //       ),
            //       Image.asset(
            //         'assets/images/taxi_loading.png',
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ));
  }
}
