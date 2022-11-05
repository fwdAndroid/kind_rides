import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

// class GetButton {
//   BuildContext context;
//   String text;
//   Icon? icon;
//   GetButton({required this.context, required this.text, this.icon});
// }

Widget getButton({
  required BuildContext context,
  String? text,
  Widget? icon,
  required MainAxisAlignment alignment,
  double? width,
  double? radius,
  double? vertical,
  double? horizontal,
  Color? color,
}) {
  return Container(
    padding: EdgeInsets.symmetric(
        vertical: vertical ?? 10.h, horizontal: horizontal ?? 20.h),
    width: width ?? 200.w,
    decoration: BoxDecoration(
      color: color ?? Color(Constants.greenButtonBg),
      // border: Border.all(
      //  // width: 1.w,
      // ),
      borderRadius: BorderRadius.circular(radius ?? 20.r),
    ),
    child: Row(
      mainAxisAlignment: alignment,
      children: [
        Text(
          text ?? "",
          style: Theme.of(context).textTheme.headline2,
        ),
        icon ?? Container(),
      ],
    ),
  );
}
