import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kind_rides/user/screens/favorite_drivers_screen.dart';
import 'package:kind_rides/user/screens/inbox_screen.dart';
import 'package:kind_rides/user/screens/login_screen.dart';
import 'package:kind_rides/user/screens/main_home.dart';
import 'package:kind_rides/user/screens/wallet_screen.dart';
import 'package:kind_rides/utils/widgets/health_dialog.dart';

import '../constants.dart';

Widget bottomMenuBar(context) {
  return Container(
    height: 600.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
      //  borderRadius: BorderRadius.circular(40.r),
      color: Theme.of(context).scaffoldBackgroundColor,
    ),
    child: Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.topCenter,
      children: [
        Positioned(
            top: -50,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color.fromARGB(133, 37, 175, 172),
                      blurRadius: 30.0,
                      offset: Offset(0.9, 0.85),
                      blurStyle: BlurStyle.normal),
                ],
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 50.r,
                backgroundImage: AssetImage(
                  'assets/images/p3.png',
                ),
              ),
            )),
        Positioned(
          top: 80,
          child: Text(
            "Gabriel Streich",
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              color: Color(Constants.darkGreen),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(left: 40.h, top: 120.h, right: 80.h),
            child: Column(children: [
              Row(
                children: [
                  Icon(
                    Icons.car_repair,
                    color: Color(Constants.darkGreen),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const FavoriteDriverPage()),
                      );
                    },
                    child: Text(
                      "Rides",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    color: Color(Constants.darkGreen),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const WalletPage()),
                      );
                    },
                    child: Text(
                      "wallet",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(Constants.darkGreen),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const FavoriteDriverPage()),
                      );
                    },
                    child: Text(
                      "favourite Drivers",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.mail_rounded,
                    color: Color(Constants.darkGreen),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const InboxPage()),
                      );
                    },
                    child: Text(
                      "Messages",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person_add_alt_rounded,
                    color: Color(Constants.darkGreen),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const MainHomePage()),
                      );
                    },
                    child: Text(
                      "Invite",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.help_outline_outlined,
                    color: Color(Constants.darkGreen),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);

                      showDialog(
                          context: context,
                          builder: (context) {
                            return HealthDialog(
                              date: "Google",
                              time: "Sign Up",
                            );
                          });
                    },
                    child: Text(
                      "Help",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Divider(
                thickness: 1.w,
                color: Color(Constants.greenDark),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(Constants.darkGreen),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const MainHomePage()),
                      );
                    },
                    child: Text(
                      "Settings",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Color(Constants.darkGreen),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      "Logout",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ],
    ),
  );
}
