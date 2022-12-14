import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kind_rides/user/screens/login_screen.dart';
import 'package:kind_rides/utils/widgets/button.dart';

import '../../utils/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: -180.h,
              left: -100.h,
              right: -180.w,
              child: SizedBox(
                child: SvgPicture.asset(
                  'assets/images/bg_ellipse.svg',
                  color: Color(0xFF9bd8db).withOpacity(0.32),
                  // Image.asset(
                  //   'assets/images/bg_ellipse.png',
                  // color: t,
                  // height: 200.h,
                  // width: 200.h,
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: -100,
              right: -180,
              child: SizedBox(
                child: SvgPicture.asset(
                  'assets/images/car_bg_thumbnail.svg',
                  //   color: Color(0xFF9bd8db).withOpacity(0.32),
                  // Image.asset(
                  //   'assets/images/bg_ellipse.png',
                  // color: t,
                  // height: 200.h,
                  // width: 200.h,
                ),
              ),
            ),
            Positioned(
                bottom: 40.h,
                left: 20.h,
                child: Padding(
                  padding: const EdgeInsets.only(right: 78.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome.",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        "Let's get started to catch a cab.",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.grey.shade300),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Consequatur placeat necessitatibus\nsaepefacere magni quaerat.\nMolestiae pariatur asperiores\npraesentium neque minus et qui.\nAsperiores quasi repellendus ut earum\nvoluptas hic. Earum praesentium\nsunt culpa placeat doloribus\nautem. Error occaecati quibusdam",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Color.fromARGB(255, 2, 78, 57)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: getButton(
                          shadow: false,
                          context: context,
                          text: "Get Started",
                          alignment: MainAxisAlignment.spaceBetween,
                          icon: Icon(
                            Icons.navigate_next,
                            color: Color(Constants.darkGreen),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
