import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kind_rides/utils/constants.dart';

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
    cardColor: const Color(0xFFd9d9d9).withOpacity(0.2),
    hintColor: const Color.fromARGB(255, 24, 25, 25),
    splashColor: const Color(0xFF9bd8db).withOpacity(0.5),
    selectedRowColor: const Color.fromARGB(255, 240, 241, 241),
    textTheme: TextTheme(
      headline1: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.black,
          fontSize: 34.sp,
        ),
      ),
      headline2: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 24.sp,
        ),
      ),
      headline3: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.black,
          fontSize: 18.sp,
        ),
      ),
      headline4: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
      headline5: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          color: Colors.grey.shade500,
        ),
      ),
      bodyText2: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 14, 133, 84),
          fontSize: 14.sp,
        ),
      ),
      bodyText1: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 14.sp,
        ),
      ),
      button: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    scaffoldBackgroundColor: //Colors.red,
        Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          // If the button is pressed, return green, otherwise blue
          if (states.contains(MaterialState.pressed)) {
            return const Color(0xff1BBA85);
          }
          return Color(Constants.buttonGrey);
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
    ),
    primaryColor: const Color(0xff1BBA85),
    dividerColor: Colors.white,
    indicatorColor: const Color(0xff1BBA85),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Color(0xFF002FFF)),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF4F6FD)),
  );

  static final lightthem = ThemeData(
    cardColor: const Color(0xFFd9d9d9).withOpacity(0.2),
    hintColor: const Color.fromARGB(255, 24, 25, 25),
    splashColor: const Color(0xFF9bd8db).withOpacity(0.5),
    selectedRowColor: const Color.fromARGB(255, 240, 241, 241),
    textTheme: TextTheme(
      headline1: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.black,
          fontSize: 34.sp,
        ),
      ),
      headline2: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 24.sp,
        ),
      ),
      headline3: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.black,
          fontSize: 18.sp,
        ),
      ),
      headline4: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
      headline5: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          color: Colors.grey.shade500,
        ),
      ),
      bodyText2: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 14, 133, 84),
          fontSize: 14.sp,
        ),
      ),
      bodyText1: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 14.sp,
        ),
      ),
      button: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    scaffoldBackgroundColor: //Colors.red,
        Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          // If the button is pressed, return green, otherwise blue
          if (states.contains(MaterialState.pressed)) {
            return const Color(0xff1BBA85);
          }
          return Color(Constants.buttonGrey);
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
    primaryColor: const Color(0xff1BBA85),
    dividerColor: Colors.white,
    indicatorColor: const Color(0xff1BBA85),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Color(0xFF002FFF)),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF4F6FD)),
  );
}
