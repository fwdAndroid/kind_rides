import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

Widget getAppbar({
  required BuildContext context,
  Widget? leading,
  Widget? title,
  required bool centerTitle,
  List<Widget>? actions,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Theme.of(context).scaffoldBackgroundColor,
    ),
    padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
    margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    child: Row(
      children: [
        Icon(Icons.search, color: Colors.black, size: 20.h),
        SizedBox(width: 75.h),
        SvgPicture.asset(
          "assets/images/kind.svg",
          //   fit: BoxFit.contain,
        ),
        SizedBox(width: 75.h),
        Icon(Icons.notifications, color: Colors.black, size: 20.h),
      ],
    ),
  );
}

// Container(
//     padding: EdgeInsets.symmetric(
//         vertical: vertical ?? 10.h, horizontal: horizontal ?? 20.h),
//     width: width ?? double.infinity,
//     decoration: BoxDecoration(
//       boxShadow: const <BoxShadow>[
//         BoxShadow(
//             color: Color.fromARGB(133, 155, 163, 163),
//             blurRadius: 30.0,
//             offset: Offset(0.9, 0.85),
//             blurStyle: BlurStyle.normal),
//       ],
//       color: color ?? Color(Constants.whitetext),
//       // border: Border.all(
//       //  // width: 1.w,
//       // ),
//       borderRadius: BorderRadius.circular(radius ?? 10.r),
//     ),
//     child: Row(
//       mainAxisAlignment: alignment,
//       children: [
//         Text(
//           text ?? "",
//           style: Theme.of(context).textTheme.headline2,
//         ),
//         icon ?? Container(),
//       ],
//     ),
//   );
