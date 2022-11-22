import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/chat_screen.dart';
import 'package:kind_rides/user/screens/ride_start_screen.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import '../../utils/constants.dart';

class DriverPickupPage extends StatefulWidget {
  const DriverPickupPage({Key? key}) : super(key: key);

  @override
  State<DriverPickupPage> createState() => _DriverPickupPageState();
}

class _DriverPickupPageState extends State<DriverPickupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _modalBottomSheetMenu();
    // showModalBottomSheet<void>(
    //     isScrollControlled: true,
    //     // elevation: 2.h,
    //     // clipBehavior: Clip.hardEdge,
    //     context: context,
    //     builder: (BuildContext context) {
    //       return bottomPickupBar();
    //     });
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
                  SvgPicture.asset(
                    "assets/images/more_icon.svg",
                    width: 13.h,
                    height: 13.h,
                  ),
                  SvgPicture.asset(
                    "assets/images/kind.svg",
                  ),
                  //SizedBox(width: 75.h),
                  Icon(Icons.notifications, color: Colors.black, size: 20.h),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130.h,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: const Color(0xFFc9eaeb).withOpacity(1),
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/call_icon.svg',
                                color: const Color(0xFF247377).withOpacity(1),
                              ),
                              Text(
                                "278723877",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 130.h,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: const Color(0xFFf4c6d1),
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/cancel.svg',
                                color: const Color(0xFFeb96ab).withOpacity(1),
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
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: -10.h,
                left: 0,
                right: 0,
                child: Container(
                  height: 280.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  margin: const EdgeInsets.fromLTRB(2, 2, 2, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                    width: 150.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "From",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                        Text(
                                          "street 5 faislabad gogar   town",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                    width: 150.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "To",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                        Text(
                                          "street 6 lahore gogar   town",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
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
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Mark Brakus",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
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
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RideStartPage()),
                                      );
                                    },
                                    child: Text(
                                      "arriving in 4 minutes",
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                              Text(
                                "Vehicle details ",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    //   width: 170.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Text(
                                      "honda civic -2021",
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    //    width: 170.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Text(
                                      "LEC - 0136",
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                              Text(
                                "Ride details",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    // width: 170.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13.r),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Text(
                                      "\$ 132",
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.h,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    // width: 170.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13.r),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icons/clock_icon.svg"),
                                        Text(
                                          "   1.3 km",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.h,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 8, 15, 8),
                                    //   width: 170.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13.r),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.radio_button_checked),
                                        Text(
                                          "  20 min",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                            padding:
                                EdgeInsets.fromLTRB(10.h, 15.h, 10.h, 15.h),
                            decoration: BoxDecoration(
                              color: Color(Constants.greenButtonBg),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: InkWell(
                              onTap: () {
                                // showDialog(
                                //     context: context,
                                //     builder: (context) {
                                //       return ConfirmLocationDialog();
                                //     });
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const ChatPage()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SEND MESSAGE",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                          color: Color(Constants.darkGreen),
                                        ),
                                  ),
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
                )),
          ],
        ),
      ),
    );
  }
}
