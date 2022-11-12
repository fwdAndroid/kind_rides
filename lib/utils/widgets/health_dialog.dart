import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';

class HealthDialog extends StatefulWidget {
  const HealthDialog({
    Key? key,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String date;
  final String time;

  @override
  _HealthDialogState createState() => _HealthDialogState();
}

class _HealthDialogState extends State<HealthDialog> {
  Widget titleWidget(BuildContext context) {
    return Text(
      "success",
      style: Theme.of(context).textTheme.headline3,
      textAlign: TextAlign.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 500.h, width: 330.w),
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                width: 330.w,
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
                        "HEALTH SERVICES",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        "Avail services only if you are asymptomatic.",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Text(
                        "Avail services only if you are asymptomatic. Avail services only if you are asymptomatic. Avail services only if you are asymptomatic",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Container(
                        width: 300.w,
                        padding: EdgeInsets.fromLTRB(15, 13, 10, 13),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 10.r,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                Expanded(
                                  child: Text(
                                    "Avail services only if you are asymptomatic. Avail services only if you are asymptomatic. Avail services only if you are asymptomatic",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 10.r,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                Expanded(
                                  child: Text(
                                    "Avail services only if you are asymptomatic. Avail services only if you are asymptomatic. Avail services only if you are asymptomatic",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 10.r,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                Expanded(
                                  child: Text(
                                    "Avail services only if you are asymptomatic. Avail services only if you are asymptomatic. Avail services only if you are asymptomatic",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: getButton(
                              width: 120.w,
                              color: Colors.red.shade200,
                              context: context,
                              alignment: MainAxisAlignment.center,
                              shadow: true,
                              text: "CANCEL",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Colors.red.shade700),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: getButton(
                              width: 120.w,
                              context: context,
                              alignment: MainAxisAlignment.center,
                              shadow: true,
                              text: "PROCEED",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Colors.green.shade700),
                            ),
                          ),
                        ],
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
