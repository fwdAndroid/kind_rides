import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';

import '../../user/screens/driver_review_screen.dart';
import 'date_dialog.dart';

class ReachedDialog extends StatefulWidget {
  const ReachedDialog({
    Key? key,
  }) : super(key: key);

  @override
  _ReachedDialogState createState() => _ReachedDialogState();
}

class _ReachedDialogState extends State<ReachedDialog> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 260.h, width: 310.w),
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
                    top: 40.h,
                    bottom: 15.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "AWESOME!!!",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "YOU REACHED AT YOUR DESTINATION",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Container(
                        width: 200.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          color: Colors.red.shade100,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$  132",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    color: Colors.red.shade800,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const DriverReviewPage()),
                          );
                          /////////////////////////////
                        },
                        child: getButton(
                            width: 130.w,
                            vertical: 4.h,
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
