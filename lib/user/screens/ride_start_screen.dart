import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/notification_screen.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/widgets/appbar.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/confirmed_location_dialog.dart';
import 'package:kind_rides/utils/widgets/date_time_dialog.dart';
import 'package:kind_rides/utils/widgets/reached_dialog.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../utils/constants.dart';
import '../../utils/widgets/bottom_menu_bar.dart';

class RideStartPage extends StatefulWidget {
  const RideStartPage({Key? key}) : super(key: key);

  @override
  State<RideStartPage> createState() => _RideStartPageState();
}

class _RideStartPageState extends State<RideStartPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                  SvgPicture.asset(
                    "assets/images/kind.svg",
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
              bottom: 280.h,
              left: 8,
              right: 8,
              child: Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(8.r),
                //   color: Theme.of(context).scaffoldBackgroundColor,
                // ),
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                margin: const EdgeInsets.fromLTRB(2, 2, 2, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 130.h,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFc9eaeb).withOpacity(1),
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      padding: EdgeInsets.fromLTRB(15, 4, 15, 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/emergency_icon.svg',
                            color: Color(0xFF247377).withOpacity(1),
                          ),
                          Text(
                            "Emergency",
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 130.h,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFf4c6d1),
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      padding: EdgeInsets.fromLTRB(15, 4, 15, 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/cancel.svg',
                            color: Color(0xFFeb96ab).withOpacity(1),
                          ),
                          Text(
                            "Cancel ride",
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: -10.h,
                left: 0,
                right: 0,
                child: Container(
                  height: 295.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
                  margin: const EdgeInsets.fromLTRB(2, 2, 2, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                              width: 150.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.grey.shade200,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "From",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    "street 5 faislabad gogar   town",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                              width: 150.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.grey.shade200,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "To",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    "street 6 lahore gogar   town",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage:
                                      AssetImage('assets/images/p1.png'),
                                  //  radius: 25.r,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "mark twain",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                        Text(
                                          "4.5",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return ReachedDialog();
                                    });
                              },
                              child: Text(
                                "0.2 kilometers left",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Ride details",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                              // width: 170.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey.shade200,
                              ),
                              child: Text(
                                "\$ 132",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 15.h,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                              // width: 170.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey.shade200,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/clock_icon.svg',
                                    //  color: Color(0xFF247377).withOpacity(1),
                                  ),
                                  Text(
                                    "  30 min",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15.h,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                              //   width: 170.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey.shade200,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.radio_button_checked,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "  1.3 km",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Seats: ",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            Text(
                              "(per seat cost +5\$",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                          width: 100.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.grey.shade200,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/seat_icon.svg',
                                //  color: Color(0xFF247377).withOpacity(1),
                              ),
                              //   Icon(Icons.event_seat_sharp),
                              Text(
                                "02 seats",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Pet: ",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                          width: 80.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.grey.shade200,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.pets),
                              Text(
                                "1 pet",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
