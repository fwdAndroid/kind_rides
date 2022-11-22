import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/notification_screen.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/confirmed_location_dialog.dart';
import 'package:kind_rides/utils/widgets/date_time_dialog.dart';
import 'package:kind_rides/utils/widgets/health_dialog.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import '../../utils/constants.dart';
import '../../utils/widgets/bottom_menu_bar.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget bookingDetails() {
      return Container(
        height: 500.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.transparent,
        ),
        margin: const EdgeInsets.fromLTRB(2, 2, 2, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 8, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(children: [
                        Image.asset(
                          "assets/images/ride.png",
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Ride",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Seats: (",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          "per seat cost",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          "+5\$)",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                    Container(
                        width: 150.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.chair_alt_outlined),
                            Text(
                              "Extra Seat",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Icon(
                              Icons.radio_button_checked,
                              color: Color(Constants.bgblack),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Pet: (",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          "pet transportation cost",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          "+3\$)",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                    Container(
                        width: 150.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.pets),
                            Text(
                              "Taking pet",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Icon(
                              Icons.radio_button_checked,
                              color: Color(Constants.bgblack),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Accessibility:",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          "(Additional charges)",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    Container(
                        width: 150.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.wheelchair_pickup_sharp),
                            Text(
                              "Accessibility",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Icon(
                              Icons.radio_button_checked,
                              color: Color(Constants.bgblack),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Helping Hands:",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          "(Additional charges +5)",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            //   width: 150.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.shopping_bag_sharp),
                                Text(
                                  "less than 30lbs",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Icon(
                                  Icons.radio_button_checked,
                                  color: Color(Constants.bgblack),
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 10.h,
                        ),
                        Container(
                            //  width: 150.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.shopping_bag_sharp),
                                Text(
                                  "over 30lbs",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Icon(
                                  Icons.radio_button_off_outlined,
                                  color: Color(Constants.bgblack),
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Fare Estimates:",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Container(
                        //  width: 150.w,
                        //   height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                        child: Text(
                          "\$ 150",
                          style: Theme.of(context).textTheme.bodyText1,
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Payment Method:",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            // width: 150.w,
                            //  height: 40.h,
                            decoration: BoxDecoration(
                              color:
                                  Color(Constants.buttonGreen).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Cash after ride",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Icon(
                                  Icons.radio_button_checked,
                                  color: Color(Constants.darkGreen),
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 5.h,
                        ),
                        Container(
                            //  width: 100.w,
                            //   height: 40.h,
                            decoration: BoxDecoration(
                              color:
                                  Color(Constants.buttonGreen).withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "card",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Icon(
                                  Icons.radio_button_off_outlined,
                                  color: Color(Constants.bgblack),
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                  padding: EdgeInsets.fromLTRB(10.h, 15.h, 10.h, 15.h),
                  decoration: BoxDecoration(
                    color: Color(Constants.greenButtonBg),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ConfirmLocationDialog();
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("CONFIRM LOCATION",
                            style: Theme.of(context).textTheme.headline3),
                        SizedBox(
                          width: 10.h,
                          height: 5.h,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15.h,
                          color: Color(Constants.darkGreen),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      );
    }

    // Widget bottomMenuBar() {
    //   return Container(
    //     height: 600.h,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.only(
    //           topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
    //       //  borderRadius: BorderRadius.circular(40.r),
    //       color: Theme.of(context).scaffoldBackgroundColor,
    //     ),
    //     child: Stack(
    //       clipBehavior: Clip.none,
    //       alignment: AlignmentDirectional.topCenter,
    //       children: [
    //         Positioned(
    //             top: -50,
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 boxShadow: <BoxShadow>[
    //                   BoxShadow(
    //                       color: Color.fromARGB(133, 37, 175, 172),
    //                       blurRadius: 30.0,
    //                       offset: Offset(0.9, 0.85),
    //                       blurStyle: BlurStyle.normal),
    //                 ],
    //                 shape: BoxShape.circle,
    //               ),
    //               child: CircleAvatar(
    //                 radius: 50.r,
    //               ),
    //             )),
    //         Positioned(
    //           top: 60,
    //           child: Text(
    //             "Gabriel Streich",
    //             style: Theme.of(context).textTheme.headline4,
    //           ),
    //         ),
    //         Positioned(
    //           top: 20,
    //           right: 20,
    //           child: Icon(
    //             Icons.close,
    //             color: Color(Constants.darkGreen),
    //           ),
    //         ),
    //         Center(
    //           child: Padding(
    //             padding: EdgeInsets.only(left: 40.h, top: 120.h, right: 80.h),
    //             child: Column(children: [
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.car_repair,
    //                     color: Color(Constants.darkGreen),
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "Rides",
    //                     style: Theme.of(context).textTheme.headline4,
    //                   )
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.account_balance_wallet,
    //                     color: Color(Constants.darkGreen),
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "wallet",
    //                     style: Theme.of(context).textTheme.headline4,
    //                   )
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.favorite,
    //                     color: Color(Constants.darkGreen),
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "favourite Drivers",
    //                     style: Theme.of(context).textTheme.headline4,
    //                   )
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.mail_rounded,
    //                     color: Color(Constants.darkGreen),
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "Messages",
    //                     style: Theme.of(context).textTheme.headline4,
    //                   )
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.person_add_alt_rounded,
    //                     color: Color(Constants.darkGreen),
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "Invite",
    //                     style: Theme.of(context).textTheme.headline4,
    //                   )
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.help_outline_outlined,
    //                     color: Color(Constants.darkGreen),
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "Help",
    //                     style: Theme.of(context).textTheme.headline4,
    //                   )
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               ),
    //               Divider(
    //                 thickness: 1.w,
    //                 color: Color(Constants.greenDark),
    //               ),
    //               SizedBox(
    //                 height: 40.h,
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.settings,
    //                     color: Color(Constants.darkGreen),
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "Settings",
    //                     style: Theme.of(context).textTheme.headline4,
    //                   )
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 20.h,
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.logout,
    //                     color: Color(Constants.darkGreen),
    //                   ),
    //                   SizedBox(
    //                     width: 20.h,
    //                   ),
    //                   Text(
    //                     "Logout",
    //                     style: Theme.of(context).textTheme.headline4,
    //                   )
    //                 ],
    //               ),
    //             ]),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    Widget bottomPickupBar() {
      return Container(
        height: 315.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Colors.transparent),
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        margin: const EdgeInsets.fromLTRB(2, 2, 2, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/xbar.svg",
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              //  width: 350.h,
              // height: 40.h
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CTextField(
                    color: const Color.fromARGB(255, 230, 228, 228),
                    controller: passwordController,
                    hintText: "Where to?",
                    isPasswordField: false,
                    validator: (value) {},
                    autovalidateMode: AutovalidateMode.disabled,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 6, 3, 6),
                      child: getButton(
                        context: context,
                        alignment: MainAxisAlignment.center,
                        shadow: false,
                        width: 70.h,
                        //  radius: 5.r,
                        text: "New",
                        vertical: 4.h,
                        horizontal: 3.h,
                        style: Theme.of(context).textTheme.headline4,
                        icon: const Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                  ),
                  // getButton(
                  //   context: context,
                  //   alignment: MainAxisAlignment.center,
                  //   shadow: false,
                  //   width: 70.h,
                  //   //  radius: 5.r,
                  //   text: "New",
                  //   vertical: 4.h,
                  //   horizontal: 3.h,
                  //   style: Theme.of(context).textTheme.headline4,
                  //   icon: const Icon(Icons.arrow_drop_down_outlined),
                  // ),
                  SizedBox(
                    height: 15.h,
                  ),

                  Container(
                      margin: EdgeInsets.fromLTRB(2.h, 10.h, 2.h, 2.h),
                      padding: EdgeInsets.fromLTRB(10.h, 10.h, 10.h, 10.h),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 241, 240, 240),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/ride.png",
                              ),
                              SizedBox(
                                width: 20.h,
                              ),
                              Text(
                                "Ride",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color:
                                      const Color.fromARGB(255, 230, 228, 228),
                                ),
                                child: Text(
                                  "192 \$",
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return DateTimeDialog(
                                            date: "Google",
                                            time: "Sign Up",
                                          );
                                        });
                                  },
                                  icon: Icon(
                                    Icons.radio_button_off,
                                    color: Color(Constants.darkGreen),
                                  ))
                            ],
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(2.h, 10.h, 2.h, 2.h),
                      padding: EdgeInsets.fromLTRB(10.h, 10.h, 10.h, 10.h),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 241, 240, 240),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/ridemini.png",
                              ),
                              SizedBox(
                                width: 20.h,
                              ),
                              Text(
                                "Mini Ride",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color:
                                      const Color.fromARGB(255, 230, 228, 228),
                                ),
                                child: Text(
                                  "132 \$",
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.radio_button_checked,
                                    color: Color(Constants.darkGreen),
                                  ))
                            ],
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                      padding: EdgeInsets.fromLTRB(10.h, 15.h, 10.h, 15.h),
                      decoration: BoxDecoration(
                        color: Color(Constants.greenButtonBg),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                              isScrollControlled: true,
                              // elevation: 2.h,
                              // clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(40.r),
                                ),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return bookingDetails();
                              });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("OOk",
                                style: Theme.of(context).textTheme.headline3),
                            SizedBox(
                              width: 10.h,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 15.h,
                              color: Color(Constants.darkGreen),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Stack(
          //alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/map.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Color.fromARGB(133, 93, 96, 96),
                        blurRadius: 20.0,
                        offset: Offset(0.3, 0.25),
                        blurStyle: BlurStyle.normal),
                  ]),
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
              margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return HealthDialog(
                              date: "Google",
                              time: "Sign Up",
                            );
                          });
                    },
                    child: SvgPicture.asset(
                      "assets/images/kind.svg",
                    ),
                  ),
                  //SizedBox(width: 75.h),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const NotificationPage()),
                        );
                      },
                      child: Icon(Icons.notifications,
                          color: Colors.black, size: 20.h)),
                ],
              ),
            ),
            Positioned(
              top: 80.h,
              left: 8,
              right: 8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                margin: const EdgeInsets.fromLTRB(2, 2, 2, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 340.h,
                          height: 40.h,
                          child: CTextField(
                            color: const Color.fromARGB(255, 230, 228, 228),
                            controller: passwordController,
                            hintText: "tdt tft rtc ygyguhi derd",
                            isPasswordField: false,
                            validator: (value) {},
                            autovalidateMode: AutovalidateMode.disabled,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(4, 6, 3, 6),
                              child: Image.asset("assets/images/path_icon.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 230.h,
              left: 8,
              right: 8,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/car_left.png",
                      ),
                      SizedBox(
                        width: 40.h,
                      ),
                      Image.asset(
                        "assets/images/car_right.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/locator.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/car_down.png",
                      ),
                      SizedBox(
                        width: 40.h,
                      ),
                      Image.asset(
                        "assets/images/car_up.png",
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: -10.h,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                margin: const EdgeInsets.fromLTRB(2, 2, 2, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet<void>(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(15.r),
                                  ),
                                ),
                                // elevation: 2.h,
                                // clipBehavior: Clip.hardEdge,
                                context: context,
                                builder: (BuildContext context) {
                                  return bottomPickupBar();
                                });
                          },
                          child: SvgPicture.asset(
                            "assets/images/xbar.svg",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CTextField(
                            color: const Color.fromARGB(255, 230, 228, 228),
                            controller: passwordController,
                            hintText: "Where to?",
                            isPasswordField: false,
                            validator: (value) {},
                            autovalidateMode: AutovalidateMode.disabled,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(4, 6, 3, 6),
                              child: getButton(
                                context: context,
                                alignment: MainAxisAlignment.center,
                                shadow: false,
                                width: 70.h,
                                //  radius: 5.r,
                                text: "New",
                                vertical: 4.h,
                                horizontal: 3.h,
                                style: Theme.of(context).textTheme.headline4,
                                icon:
                                    const Icon(Icons.arrow_drop_down_outlined),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
