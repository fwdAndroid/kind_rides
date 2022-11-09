import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/widgets/appbar.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../utils/constants.dart';

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
    Widget bottomSheet() {
      return Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF2F9FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.only(top: 40.h),
        child: Column(
          children: [
            const Text("hello"),
          ],
        ),
      );
    }

    return Scaffold(
      // appBar: AppBar(
      //   foregroundColor: Colors.black,
      //   primary: true,
      //   elevation: 10.h,
      //   automaticallyImplyLeading: true,
      //   title: Text(
      //     "gygyg",
      //     style: Theme.of(context).textTheme.headline4,
      //   ),
      // ),
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
                                // elevation: 2.h,
                                // clipBehavior: Clip.hardEdge,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 315.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    margin:
                                        const EdgeInsets.fromLTRB(2, 2, 2, 0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                color: const Color.fromARGB(
                                                    255, 230, 228, 228),
                                                controller: passwordController,
                                                hintText: "Where to?",
                                                isPasswordField: false,
                                                validator: (value) {},
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                suffixIcon: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          4, 6, 3, 6),
                                                  child: getButton(
                                                    context: context,
                                                    alignment: MainAxisAlignment
                                                        .center,
                                                    shadow: false,
                                                    width: 70.h,
                                                    //  radius: 5.r,
                                                    text: "New",
                                                    vertical: 4.h,
                                                    horizontal: 3.h,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline4,
                                                    icon: const Icon(Icons
                                                        .arrow_drop_down_outlined),
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
                                                  margin: EdgeInsets.fromLTRB(
                                                      2.h, 10.h, 2.h, 2.h),
                                                  padding: EdgeInsets.fromLTRB(
                                                      10.h, 10.h, 10.h, 10.h),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 241, 240, 240),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
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
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline4,
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    20,
                                                                    8,
                                                                    20,
                                                                    8),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.r),
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      230,
                                                                      228,
                                                                      228),
                                                            ),
                                                            child: Text(
                                                              "192 \$",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 10.h,
                                                          ),
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                Icons
                                                                    .radio_button_off,
                                                                color: Color(
                                                                    Constants
                                                                        .darkGreen),
                                                              ))
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      2.h, 10.h, 2.h, 2.h),
                                                  padding: EdgeInsets.fromLTRB(
                                                      10.h, 10.h, 10.h, 10.h),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 241, 240, 240),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
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
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline4,
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    20,
                                                                    8,
                                                                    20,
                                                                    8),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.r),
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      230,
                                                                      228,
                                                                      228),
                                                            ),
                                                            child: Text(
                                                              "132 \$",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 10.h,
                                                          ),
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                Icons
                                                                    .radio_button_checked,
                                                                color: Color(
                                                                    Constants
                                                                        .darkGreen),
                                                              ))
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 10.h, 0, 0),
                                                  padding: EdgeInsets.fromLTRB(
                                                      10.h, 15.h, 10.h, 15.h),
                                                  decoration: BoxDecoration(
                                                    color: Color(Constants
                                                        .greenButtonBg),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "OOk",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline3!
                                                            .copyWith(
                                                              color: Color(
                                                                  Constants
                                                                      .darkGreen),
                                                            ),
                                                      ),
                                                      SizedBox(
                                                        width: 10.h,
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .arrow_forward_ios_sharp,
                                                        size: 15.h,
                                                        color: Color(Constants
                                                            .darkGreen),
                                                      ),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
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
