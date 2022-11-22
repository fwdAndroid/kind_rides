import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';

class DateDialog extends StatefulWidget {
  const DateDialog({
    Key? key,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String date;
  final String time;

  @override
  _DateDialogState createState() => _DateDialogState();
}

class _DateDialogState extends State<DateDialog> {
  Widget titleWidget(BuildContext context) {
    return Text(
      "success",
      style: Theme.of(context).textTheme.headline3,
      textAlign: TextAlign.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 300.h, width: 310.w),
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                width: 310.w,
                // height: 470.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.w),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.w,
                    vertical: 15.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "SELECT DATE & TIME",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 250.w,
                          height: 50.w,
                          padding: const EdgeInsets.fromLTRB(16, 8, 6, 0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "date",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Text(
                                "25 dec",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: getButton(
                            width: 150.w,
                            context: context,
                            alignment: MainAxisAlignment.center,
                            shadow: true,
                            text: "CONFIRM"),
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
