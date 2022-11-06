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
    splashColor: Color.fromARGB(255, 160, 222, 225),
    scaffoldBackgroundColor: const Color(0xff002A3C),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff3450A1)),
    primaryColor: const Color(0xff1BBA85),
    dividerColor: Colors.black,
    selectedRowColor: Color.fromARGB(255, 27, 186, 133),
    cardColor: const Color.fromARGB(255, 170, 173, 175),
    indicatorColor: const Color(0xff1BBA85),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFFF00FF),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 30.sp, color: Colors.black, fontWeight: FontWeight.bold),
      headline2: TextStyle(
          fontSize: 30.sp, color: Colors.black, fontWeight: FontWeight.bold),
      headline3: TextStyle(
          fontSize: 30.sp, color: Colors.black, fontWeight: FontWeight.bold),
      headline4: TextStyle(
          fontSize: 30.sp, color: Colors.black, fontWeight: FontWeight.bold),

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
      // headline4: TextStyle(
      //   fontWeight: FontWeight.w400,
      //   fontSize: 16.sp,
      //   color: Colors.grey,
      // ),
      headline5: TextStyle(
        fontWeight: FontWeight.w900,
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
    cardColor: Color.fromARGB(255, 245, 249, 249),
    hintColor: Color.fromARGB(255, 24, 25, 25),
    splashColor: Color.fromARGB(255, 212, 249, 251),
    selectedRowColor: Color.fromARGB(255, 240, 241, 241),
    textTheme: TextTheme(
      headline1: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.black,
          fontSize: 30.sp,
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
          fontWeight: FontWeight.w600,
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
      bodyText2: GoogleFonts.crimsonPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 14, 133, 84),
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
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
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
            return Color(0xff1BBA85);
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
