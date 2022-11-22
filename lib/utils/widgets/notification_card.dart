import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget getNotificationCard({
  required BuildContext context,
  String? url,
  String? name,
  String? description,
  String? time,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Theme.of(context).hoverColor,
    ),
    margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
    padding: const EdgeInsets.fromLTRB(10, 2, 6, 10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "1 min ago",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.grey),
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage(
                'assets/images/p3.png',
              ),

              //  radius: 25.r,
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "mark",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    "description description description description description description",
                    style: Theme.of(context).textTheme.bodyText1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                ],
              ),
            ),
          ],
        ),
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
