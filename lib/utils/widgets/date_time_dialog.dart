import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';

import 'date_dialog.dart';

class DateTimeDialog extends StatefulWidget {
  const DateTimeDialog({
    Key? key,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String date;
  final String time;

  @override
  _DateTimeDialogState createState() => _DateTimeDialogState();
}

class _DateTimeDialogState extends State<DateTimeDialog> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        // initialEntryMode: TimePickerEntryMode.input,
        confirmText: "Confirm",
        cancelText: "Cancel");
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
            constraints: BoxConstraints.tightFor(height: 270.h, width: 310.w),
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
                        onTap: () {
                          _selectDate(context);
                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return DateDialog(
                          //         date: "Google",
                          //         time: "Sign Up",
                          //       );
                          //     });
                        },
                        child: Container(
                          width: 250.w,
                          height: 50.w,
                          padding: EdgeInsets.fromLTRB(16, 8, 6, 0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Date:",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Text(
                                "${selectedDate.toLocal()}".split(' ')[0],
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      InkWell(
                        onTap: () {
                          _selectTime(context);
                        },
                        child: Container(
                          width: 250.w,
                          height: 50.w,
                          padding: EdgeInsets.fromLTRB(16, 8, 6, 0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Time:",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Text(
                                "${selectedTime.hour.toString()} : ${selectedTime.minute.toString()} ${selectedTime.period.toString().split(".")[1]}",
                                //  "${selectedTime.format(context)}",
                                style: Theme.of(context).textTheme.headline4,
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
