import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kind_rides/user/screens/driver_pickup_screen.dart';
import 'package:kind_rides/utils/widgets/button.dart';

class ConfirmLocationDialog extends StatefulWidget {
  const ConfirmLocationDialog({
    Key? key,
  }) : super(key: key);

  @override
  _ConfirmLocationDialogState createState() => _ConfirmLocationDialogState();
}

class _ConfirmLocationDialogState extends State<ConfirmLocationDialog> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 260.h, width: 300.w),
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                width: 280.w,
                // height: 470.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.w),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                    top: 50.h,
                    bottom: 25.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "AWESOME!!!",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "YOU CONFIRMED YOUR LOCATION",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Text(
                        "Your driver is on way",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const DriverPickupPage()),
                          );
                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return ReachedDialog();
                          //     });
                          /////////////////////////////
                        },
                        child: getButton(
                            width: 150.w,
                            context: context,
                            alignment: MainAxisAlignment.center,
                            shadow: true,
                            text: "OKAY"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
