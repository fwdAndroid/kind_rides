import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/widgets/appbar.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/notification_card.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../utils/constants.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                      SvgPicture.asset(
                        "assets/images/more_icon.svg",
                        width: 13.h,
                        height: 13.h,
                      ),
                      // SvgPicture.asset(
                      //   "assets/images/kind.svg",
                      // ),
                      Text(
                        "NOTIFICATIONS",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      //SizedBox(width: 75.h),
                      Icon(Icons.home, color: Colors.black, size: 20.h),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getButton(
                      context: context,
                      alignment: MainAxisAlignment.center,
                      shadow: false,
                      color: Theme.of(context).hoverColor,
                      width: 50.w,
                      text: "All (3)",
                      style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      vertical: 3.h,
                      horizontal: 3.h,
                    ),
                    getButton(
                      context: context,
                      alignment: MainAxisAlignment.center,
                      shadow: false,
                      color: Theme.of(context).hoverColor,
                      width: 100.w,
                      text: "Generals (3)",
                      style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      vertical: 3.h,
                      horizontal: 3.h,
                    ),
                    getButton(
                      context: context,
                      alignment: MainAxisAlignment.center,
                      shadow: false,
                      color: Theme.of(context).hoverColor,
                      width: 150.w,
                      text: "Recommendations (0)",
                      style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      vertical: 3.h,
                      horizontal: 3.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Clear All",
                      style:
                          TextStyle(color: Color.fromARGB(255, 166, 30, 111)),
                    ),
                    Text(
                      "Mark All as read",
                      style: TextStyle(color: Color.fromARGB(255, 8, 206, 227)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                getNotificationCard(context: context),
                getNotificationCard(context: context),
                getNotificationCard(context: context),
                getNotificationCard(context: context),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
