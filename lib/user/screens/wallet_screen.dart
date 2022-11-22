import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import '../../utils/constants.dart';
import '../../utils/widgets/bottom_menu_bar.dart';
import 'notification_screen.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  TextEditingController tipController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget getWalletCard({
    required BuildContext context,
    required IconData iconData,
    required String name,
    required String description,
    required double amount,
  }) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
      padding: const EdgeInsets.fromLTRB(10, 8, 8, 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).splashColor,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.fromLTRB(7, 6, 7, 6),
                child: Icon(
                  iconData,
                  color: Color(
                    Constants.greenIcon,
                  ),
                ),
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
                    Container(
                      width: 130.h,
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.bodyText1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  //   width: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  margin: EdgeInsets.fromLTRB(7, 3, 7, 3),
                  padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                  child: Text(
                    "\$ ${amount} ",
                    style: TextStyle(
                      color: Colors.red.shade500,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }

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
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.h),
              child: Column(
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
                          "WALLET",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        //SizedBox(width: 75.h),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NotificationPage()),
                              );
                            },
                            child: Icon(Icons.home,
                                color: Colors.black, size: 20.h)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  Container(
                    width: 340.w,
                    height: 180.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).splashColor,
                      borderRadius: BorderRadius.circular(5.r),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/cardvisa.png"),
                      ),
                      //Image.asset("assets/icons/cardvisa.png"),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  getButton(
                    context: context,
                    alignment: MainAxisAlignment.center,
                    shadow: true,
                    text: "ADD FUNDS",
                    width: 140,
                    horizontal: 8.h,
                    vertical: 4.h,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Vouchers:",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ]),
                  SizedBox(
                    height: 5.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 230.w,
                        child: CTextField(
                          radius: 20.r,
                          hintText: "Add voucher",
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
                      getButton(
                        context: context,
                        alignment: MainAxisAlignment.center,
                        shadow: true,
                        text: "ADD",
                        width: 100,
                        horizontal: 2.h,
                        vertical: 4.h,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Promo code:",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ]),
                  SizedBox(
                    height: 5.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 230.w,
                        child: CTextField(
                          radius: 20.r,
                          hintText: "Add voucher",
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
                      getButton(
                        context: context,
                        alignment: MainAxisAlignment.center,
                        shadow: true,
                        text: "ADD",
                        width: 100,
                        horizontal: 2.h,
                        vertical: 4.h,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  ////////////////////////////////////
                ],
              ),
            ),
            Expanded(
              child: Container(
                //  width: double.infinity,
                //   padding: EdgeInsets.all(0),
                padding: const EdgeInsets.fromLTRB(7, 6, 7, 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Color.fromARGB(133, 154, 156, 156),
                        blurRadius: 3.0,
                        offset: Offset.zero,
                        blurStyle: BlurStyle.solid),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/images/xbar.svg",
                      ),
                      getWalletCard(
                          context: context,
                          iconData: Icons.car_repair,
                          description:
                              "gug gyugeu geugeuygeu  twrtf fsr swrc uhubn egugueugeu geyugeugeug",
                          name: "mark",
                          amount: 350),
                      getWalletCard(
                          context: context,
                          iconData: Icons.car_repair,
                          description:
                              "gug gyugeu geugeuygeu  twrtf fsr swrc uhubn egugueugeu geyugeugeug",
                          name: "mark",
                          amount: 350),
                      getWalletCard(
                          context: context,
                          iconData: Icons.donut_small_sharp,
                          description: "gvy ge yewf yewiqhih",
                          name: "elsa",
                          amount: -950),
                      getWalletCard(
                          context: context,
                          iconData: Icons.car_repair,
                          description: "qgu qyyv",
                          name: "malik",
                          amount: -100),
                      getWalletCard(
                          context: context,
                          iconData: Icons.car_repair,
                          description: "qgu qyyv",
                          name: "malik",
                          amount: -100),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
