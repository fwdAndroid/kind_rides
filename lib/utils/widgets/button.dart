import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

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
  required bool shadow,
  TextStyle? style,
}) {
  return Container(
    padding: EdgeInsets.symmetric(
        vertical: vertical ?? 10.h, horizontal: horizontal ?? 20.h),
    width: width ?? 200.w,
    decoration: BoxDecoration(
      boxShadow: shadow
          ? const <BoxShadow>[
              BoxShadow(
                  color: Color.fromARGB(133, 37, 175, 172),
                  blurRadius: 30.0,
                  offset: Offset(0.9, 0.85),
                  blurStyle: BlurStyle.normal),
            ]
          : const <BoxShadow>[],
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
          style: style ?? Theme.of(context).textTheme.headline2,
        ),
        icon ?? Container(),
      ],
    ),
  );
}
