import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.light;

  void toggleThem(bool isLightTheme) {
    themeMode = isLightTheme ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Mytheme {
  static final darkthem = ThemeData(
    scaffoldBackgroundColor: const Color(0xff002A3C),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff3450A1)),
    primaryColor: Colors.white,
    dividerColor: Colors.black,
    selectedRowColor: Color.fromARGB(255, 27, 186, 133),
    cardColor: const Color.fromARGB(255, 170, 173, 175),
    indicatorColor: const Color(0xff1BBA85),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFFF00FF),
    ),
    textTheme: TextTheme(
      headline3: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 20.sp,
      ),
      bodyText2: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 16.sp,
      ),
      bodyText1: TextStyle(
        fontWeight: FontWeight.w500,
        color: const Color(0xff1BBA85),
        fontSize: 16.sp,
      ),
      headline4: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
        color: Colors.grey,
      ),
      headline5: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: Colors.grey,
      ),
      button: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
        backgroundColor: const Color.fromARGB(255, 170, 173, 175),
      ),
    ),
  );

  static final lightthem = ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w800,
        color: Colors.black,
        fontSize: 22.sp,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: 20.sp,
      ),
      headline3: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: 16.sp,
      ),
      headline4: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontWeight: FontWeight.w500,
        color: const Color(0xff1BBA85),
        fontSize: 16.sp,
      ),
      bodyText1: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.grey,
        fontSize: 14.sp,
      ),
      button: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
    scaffoldBackgroundColor: //Colors.red,
        const Color(0xFFF3F5F6),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          // If the button is pressed, return green, otherwise blue
          if (states.contains(MaterialState.pressed)) {
            return Color(0xff1BBA85);
          }
          return Colors.grey;
        }),

        padding: MaterialStateProperty.resolveWith((states) {
          // If the button is pressed, return size 40, otherwise 20
          if (states.contains(MaterialState.pressed)) {
            return EdgeInsets.symmetric(vertical: 15.h);
          }
          return EdgeInsets.symmetric(vertical: 15.h);
        }),
        shape: MaterialStateProperty.resolveWith((states) {
          // If the button is pressed, return size 40, otherwise 20
          if (states.contains(MaterialState.pressed)) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0));
          }
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0));
        }),
        // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),

      //ElevatedButton.styleFrom(

      //  // backgroundColor: const Color.fromARGB(255, 170, 173, 175),
      //   shape:
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      //   padding: EdgeInsets.symmetric(vertical: 15.h),
      //   textStyle: const TextStyle(
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),
    ),
    primaryColor: Colors.black,
    dividerColor: Colors.white,
    indicatorColor: const Color(0xff1BBA85),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Color(0xFF002FFF)),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF4F6FD)),
  );
}
