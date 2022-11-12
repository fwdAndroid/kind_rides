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
import '../../utils/widgets/bottom_menu_bar.dart';
import 'main_home.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  TextEditingController tipController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget getRound(String text) {
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(Constants.greenDark),
        ),
        //Theme.of(context).hoverColor),
        padding: EdgeInsets.all(6),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white),
        ),
      );
    }

    Widget getInboxCard({
      required BuildContext context,
      required String url,
      required String name,
      required String description,
      required int chats,
    }) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).hoverColor,
        ),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
        padding: const EdgeInsets.fromLTRB(10, 8, 8, 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(url),
                  //  radius: 25.r,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        description,
                        style: Theme.of(context).textTheme.bodyText1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ],
                  ),
                ),
                (chats > 0) ? getRound(chats.toString()) : Container(),
              ],
            ),
          ],
        ),
      );
    }

// Container(
//     padding: EdgeInsets.symmetric(
//         vertical: vertical ?? 10.h, horizontal: horizontal ?? 20.h),
//     width: width ?? double.infinity,
//     decoration: BoxDecoration(
//       boxShadow: const <BoxShadow>[
//         BoxShadow(
//             color: Color.fromARGB(133, 155, 163, 163),
//             blurRadius: 30.0,
//             offset: Offset(0.9, 0.85),
//             blurStyle: BlurStyle.normal),
//       ],
//       color: color ?? Color(Constants.whitetext),
//       // border: Border.all(
//       //  // width: 1.w,
//       // ),
//       borderRadius: BorderRadius.circular(radius ?? 10.r),
//     ),
//     child: Row(
//       mainAxisAlignment: alignment,
//       children: [
//         Text(
//           text ?? "",
//           style: Theme.of(context).textTheme.headline2,
//         ),
//         icon ?? Container(),
//       ],
//     ),
//   );

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
                      // SvgPicture.asset(
                      //   "assets/images/kind.svg",
                      // ),
                      Text(
                        "INBOX",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      //SizedBox(width: 75.h),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const MainHomePage()),
                            );
                          },
                          child: Icon(Icons.home,
                              color: Colors.black, size: 20.h)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 300.w,
                      child: CTextField(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Search",
                        isPasswordField: false,
                        controller: tipController,
                        validator: (value) {},
                        autovalidateMode: AutovalidateMode.disabled,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Icon(Icons.more_vert_outlined,
                        color: Color(Constants.greenDark)),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                getInboxCard(
                    context: context,
                    url: 'assets/images/p3.png',
                    description:
                        "gug gyugeu geugeuygeu  twrtf fsr swrc uhubn egugueugeu geyugeugeug",
                    name: "mark",
                    chats: 0),
                getInboxCard(
                    context: context,
                    url: 'assets/images/p2.png',
                    description: "gvy ge yewf yewiqhih",
                    name: "elsa",
                    chats: 4),
                getInboxCard(
                    context: context,
                    url: 'assets/images/p1.png',
                    description: "qgu qyyv",
                    name: "malik",
                    chats: 3),
                getInboxCard(
                    context: context,
                    url: 'assets/images/p3.png',
                    description: "ewqubu uqugu quegu.2",
                    chats: 2,
                    name: "babar"),
                getInboxCard(
                    context: context,
                    url: 'assets/images/p2.png',
                    description: "qgu qyyv",
                    name: "maya",
                    chats: 0),
                getInboxCard(
                    context: context,
                    url: 'assets/images/p1.png',
                    description: "ewqubu uqugu quegu.2",
                    chats: 2,
                    name: "babar"),
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
