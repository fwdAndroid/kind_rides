import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kind_rides/user/screens/splash_screen.dart';
import 'firebase_options.dart';
import 'utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
            home: const SplashScreen(),
          );
        });
  }
}
