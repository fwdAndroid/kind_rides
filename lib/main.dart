import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kind_rides/user/screens/chat_screen.dart';
import 'package:kind_rides/user/screens/driver_review_screen.dart';
import 'package:kind_rides/user/screens/favorite_drivers_screen.dart';
import 'package:kind_rides/user/screens/inbox_screen.dart';
import 'package:kind_rides/user/screens/notification_screen.dart';
import 'package:kind_rides/user/screens/splash_screen.dart';
import 'utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            title: 'Kind Rides',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: Mytheme.lightthem,
            darkTheme: Mytheme.darkthem,
            home: const ChatPage(),
          );
        });
  }
}
