import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/main_home.dart';
import 'package:kind_rides/user/screens/notification_screen.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/widgets/appbar.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../utils/constants.dart';
import '../../utils/widgets/bottom_menu_bar.dart';

class DriverReviewPage extends StatefulWidget {
  const DriverReviewPage({Key? key}) : super(key: key);

  @override
  State<DriverReviewPage> createState() => _DriverReviewPageState();
}

class _DriverReviewPageState extends State<DriverReviewPage> {
  TextEditingController tipController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget getRound(String text) {
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.withOpacity(0.3),
        ),
        //Theme.of(context).hoverColor),
        padding: EdgeInsets.all(10),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.grey),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Theme.of(context).cardColor,
                    // boxShadow: const <BoxShadow>[
                    //   BoxShadow(
                    //       color: Color.fromARGB(133, 93, 96, 96),
                    //       blurRadius: 20.0,
                    //       offset: Offset(0.3, 0.25),
                    //       blurStyle: BlurStyle.normal),
                    // ],
                  ),
                  padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
                  margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(40.r),
                                ),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return bottomMenuBar(context);
                              });
                        },
                        child: SvgPicture.asset(
                          "assets/images/more_icon.svg",
                          width: 13.h,
                          height: 13.h,
                        ),
                      ),

                      SvgPicture.asset(
                        "assets/images/kind.svg",
                      ),
                      //SizedBox(width: 75.h),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const NotificationPage()),
                          );
                        },
                        child: Icon(Icons.notifications,
                            color: Colors.black, size: 20.h),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "               ",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      "Your Driver",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.grey),
                    ),
                    getButton(
                      context: context,
                      alignment: MainAxisAlignment.center,
                      shadow: false,
                      color: Theme.of(context).hoverColor,
                      width: 40.w,
                      text: "skip",
                      style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      vertical: 3.h,
                      horizontal: 3.h,
                    )
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage('assets/images/p1.png'),
                  radius: 60.r,
                ),
                Text(
                  "Efrain Brakus",
                  style: Theme.of(context).textTheme.headline2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 30.h,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 30.h,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 30.h,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 30.h,
                      color: Colors.blueGrey,
                    ),
                    Icon(
                      Icons.star,
                      size: 30.h,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      "4.1",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                getButton(
                  context: context,
                  alignment: MainAxisAlignment.center,
                  shadow: false,
                  color: Theme.of(context).hoverColor,
                  width: 130.w,
                  text: "Add to favorites",
                  style: TextStyle(color: Colors.black, fontSize: 12.sp),
                  vertical: 2.h,
                  horizontal: 2.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Add a tip",
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      getRound("2\$"),
                      getRound("3\$"),
                      getRound("4\$"),
                      getRound("5\$"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: CTextField(
                    hintText: "Custom Tip",
                    isPasswordField: false,
                    controller: tipController,
                    validator: (value) {},
                    autovalidateMode: AutovalidateMode.disabled,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Drop A Review",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 40.h,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 40.h,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 40.h,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 40.h,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 40.h,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: CTextField(
                    minlines: 6,
                    maxlines: 6,
                    hintText: "Say something about driver",
                    isPasswordField: false,
                    controller: tipController,
                    validator: (value) {},
                    autovalidateMode: AutovalidateMode.disabled,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const MainHomePage()),
                    );
                  },
                  child: getButton(
                    context: context,
                    alignment: MainAxisAlignment.center,
                    shadow: true,
                    // color: Theme.of(context).hoverColor,
                    width: 150.w,
                    text: "SUBMIT",
                    // style: TextStyle(color: Colors.black, fontSize: 12.sp),
                    vertical: 5.h,
                    horizontal: 12.h,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.grey, fontSize: 12.sp),
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
