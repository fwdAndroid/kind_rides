import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/main_home.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/widgets/appbar.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/favorite_driver_card.dart';
import 'package:kind_rides/utils/widgets/notification_card.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../utils/constants.dart';
import '../../utils/widgets/bottom_menu_bar.dart';

class FavoriteDriverPage extends StatefulWidget {
  const FavoriteDriverPage({Key? key}) : super(key: key);

  @override
  State<FavoriteDriverPage> createState() => _FavoriteDriverPageState();
}

class _FavoriteDriverPageState extends State<FavoriteDriverPage> {
  TextEditingController tipController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool favouriteActive = true;
  bool prioritizeActive = false;

  @override
  Widget build(BuildContext context) {
    Widget getFavoriteDriverCard({
      required BuildContext context,
      required String url,
      required String name,
      required String description,
    }) {
      bool ontapped = false;
      return InkWell(
        onLongPress: () {
          print("hello");

          setState(() {
            ontapped = true;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).hoverColor,
          ),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
          padding: const EdgeInsets.fromLTRB(10, 10, 6, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                size: 15.h,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.h,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.h,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.h,
                                color: Colors.blueGrey,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.h,
                                color: Colors.blueGrey,
                              ),
                              Text(
                                description,
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.mail,
                      color: Color(Constants.darkGreen),
                      size: 20.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

///////////
    ///
    Widget favourite() {
      return Column(children: [
        getFavoriteDriverCard(
            context: context,
            url: 'assets/images/p1.png',
            description: "3.2",
            name: "mark"),
        getFavoriteDriverCard(
            context: context,
            url: 'assets/images/p2.png',
            description: "4.2",
            name: "elsa"),
        getFavoriteDriverCard(
            context: context,
            url: 'assets/images/p3.png',
            description: "2.1",
            name: "malik"),
        getFavoriteDriverCard(
            context: context,
            url: 'assets/images/p2.png',
            description: "1.2",
            name: "babar"),
      ]);
    }

    Widget prioritize() {
      return Column(children: [
        getFavoriteDriverCard(
            context: context, url: "", description: "3.2", name: "mema"),
        getFavoriteDriverCard(
            context: context, url: "", description: "4.2", name: "shwan"),
        getFavoriteDriverCard(
            context: context, url: "", description: "2.1", name: "lucky"),
        getFavoriteDriverCard(
            context: context, url: "", description: "1.2", name: "ufaq"),
      ]);
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
                      Text(
                        "FAVOURITE DRIVERS",
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
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("                "),
                    Container(
                      width: 200.w,
                      decoration: BoxDecoration(
                        color: Theme.of(context).hoverColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                favouriteActive = true;
                                prioritizeActive = false;
                              });
                            },
                            child: getButton(
                              context: context,
                              alignment: MainAxisAlignment.center,
                              shadow: false,
                              color: favouriteActive
                                  ? Theme.of(context).hoverColor
                                  : Colors.transparent,
                              width: 100.w,
                              text: "Favourite",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.sp),
                              vertical: 5.h,
                              horizontal: 1.h,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                favouriteActive = false;
                                prioritizeActive = true;
                              });
                            },
                            child: getButton(
                              context: context,
                              alignment: MainAxisAlignment.center,
                              shadow: false,
                              color: prioritizeActive
                                  ? Theme.of(context).hoverColor
                                  : Colors.transparent,
                              width: 100.w,
                              text: "Prioritize",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.sp),
                              vertical: 5.h,
                              horizontal: 1.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined),

                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     IconButton(
                    //         onPressed: () {},
                    //         icon: Icon(Icons.arrow_drop_up_outlined)),
                    //     IconButton(
                    //         onPressed: () {},
                    //         icon: Icon(Icons.arrow_drop_down_sharp)),
                    //   ],
                    // ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                favouriteActive ? favourite() : prioritize(),
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
