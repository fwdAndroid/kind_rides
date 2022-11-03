import 'package:flutter/material.dart';

class Constants {
  /*BaseUrl*/
  static const String baseUrl = "https://admin.reelstar.app/public/api/";
  //don't remove "/public/api/"

  /*Advertisement*/
  ///admob
  static const String admobBannerAdUnitIdAndroid = 'bannerAdUnitIdAndroid';
  static const String admobBannerAdUnitIdiOS = 'bannerAdUnitIdiOS';

  static const String admobInterstitialAdUnitIdAndroid =
      'interstitialAdUnitIdAndroid';
  static const String admobInterstitialAdUnitIdiOS = 'interstitialAdUnitIdiOS';

  static const String admobNativeAdUnitIdAndroid = 'nativeAdUnitIdAndroid';
  static const String admobNativeAdUnitIdiOS = 'nativeAdUnitIdiOS';

  ///facebook
  static const String facebookInit = 'facebookInit';
  static const String facebookPlaceIdForBanner = 'facebookPlaceIdForBanner';

  static int bgblack = 0xFF030303;
  static int bgblack1 = 0xFF1d1d1d;
  static int buttonBg = 0xFFDF485E;
  static int pinkBg = 0xFFf4c6d1;
  static int pinkText = 0xFF7d0000;
  static int yellow = 0xFFffc107;
  static int pinkWidget = 0xFFeb96ab;
  static int greytext = 0xFF9E9E9E;
  static int hinttext = 0xFFc2c2c2;
  static int whitetext = 0xFFffffff;
  static int lightbluecolor = 0xFFFF4D67;
  static int greyText = 0xFF1d1d1d;
  static int darkGreen = 0xFF004a2b;
  static int redtext = 0xFFff4343;
  static int buttonGreen = 0xFF98d4bb;
  static int buttonGrey = 0xFFdfdfdf;
  static int greenLogo = 0xFF98D2BB;
  static int greenText = 0xFF247377;
  static int greenWidget = 0xFF247377;
  static int greenIcon = 0xFF247377;
  static int greenBg = 0xFF9bd8db;
  static int voiletFill = 0xFF6661ff;
  static int blueStroke = 0xFF100ab8;
  static int redBg = 0xFFff5b5b;
  static int redText = 0xFFd80000;
  static int greenDark = 0xFF004a2b;

  static int containerGrey = 0xFFd9d9d9;
  static Color? transparentGrey = const Color.fromRGBO(53, 56, 63, 0.6);
  static Color? textFiledDarkFillColor =
      const Color(0xFF1F222A).withOpacity(0.6);
  static Color? textFieldFillColor = const Color(0xFFF5F5F5);

  static int textFieldDefaultColor = 0xFF1F222A;

  /*User Data*/

  static const String isLoggedIn = "isLoggedIn";
  static const String isverified = "isverified";

  static const String deviceToken = "devicetoken";
  static const String headerToken = "headertoken";
  static const String id = "id";
  static const String serverUserId = "serverUserId";
  static const String name = "name";
  static const String userId = "user_id";
  static const String email = "email";
  static const String code = "code";
  static const String phone = "phone";
  static const String isVerify = "is_verify";
  static const String bio = "bio";
  static const String bDate = "bdate";
  static const String gender = "gender";
  static const String image = "image/profile.svg";

  /*Setting data*/

  static const String appName = "app_name";
  static const String appId = "app_id";
  static const String appVersion = "app_version";
  static const String appFooter = "app_footer";
  static const String termsOfUse = "terms_of_use";
  static const String privacyPolicy = "privacy_policy";
  static const String isWaterMark = "isWaterMark";
  static const String waterMarkPath = "waterMarkPath";
  static const String imagePath = "imagePath";
  static const String addMusicId = "addMusicId";
  static const String trendingVidPreviousIndex = "trendingVidPreviousIndex";

  /*search*/
  static const String recentSearch = "recentSearch";

  static const String isFirstOpenApp = "isFirstOpenApp";

  /*advertise setting*/
  static const String adLocation = "adLocation";
  static const String adNetwork = "adNetwork";
  static const String adType = "adType";
  static const String adInterval = "adInterval";
  static const String adStatus = "adStatus";
  static const String adAvailable = "adAvailable";
  static const String admobAvailable = "admobAvailable";

  /*fonts*/
  static String appFont = 'Urbanist';
  static String appFontBold = 'ProximaBold';

  static var kAppLabelWidget = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14.0,
      color: Color(Constants.greytext),
      fontFamily: Constants.appFont);

  static var kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(Constants.textFieldDefaultColor),
    hintStyle: TextStyle(
      color: Color(Constants.hinttext),
      fontFamily: Constants.appFont,
      fontSize: 14,
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(Constants.greytext)),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  );

  static String? kvalidatedata(String? value) {
    if (value!.isEmpty) {
      return 'Data is Required';
    } else {
      return null;
    }
  }

  static String? kvalidateUserName(String? value) {
    value!.trim();
    Pattern pattern = r'[a-zA-Z0-9]+$';
    RegExp regex = RegExp(pattern as String);
    Pattern pattern2 = r'^\S*$';
    RegExp regex2 = RegExp(pattern2 as String);
    if (value.isEmpty) {
      return "Enter any character";
    } else if (value.length < 5 || value.length > 10) {
      return "UserName should be min. 5 letter and max. 10 letter";
    } else if (!regex.hasMatch(value)) {
      return 'Not Included any special characters(#, @, .)';
    } else if (!regex2.hasMatch(value)) {
      return 'Not Included a whitespace';
    } else {
      return null;
    }
  }

  static String? kvalidateotp(String? value) {
    Pattern pattern = r'(^(?:[+0]9)?[0-9]{4}$)';
    RegExp regex = RegExp(pattern as String);
    if (value!.isEmpty) {
      return 'OTP is Required';
    } else if (value.length > 4) {
      return 'Enter Valid OTP';
    } else if (!regex.hasMatch(value)) {
      return ' Enter Valid OTP';
    } else {
      return null;
    }
  }

  static String? kvalidateName(String? value) {
    if (value!.isEmpty) {
      return 'Name is Required';
    } else {
      return null;
    }
  }

  static String? kvalidateReason(String? value) {
    if (value!.trim().isEmpty) {
      return 'Reason is Required';
    } else {
      return null;
    }
  }

  static String? kvalidateIssue(String? value) {
    if (value!.trim().isEmpty) {
      return 'Issue is Required';
    } else {
      return null;
    }
  }

  static String? kvalidateCotactNum(String? value) {
    Pattern pattern = r'^[0-9]*$';
    RegExp regex = RegExp(pattern as String);
    if (value!.isEmpty) {
      return 'Contact Number is Required';
    } else if (value.length > 10) {
      return 'Contact Number should be 10 letter';
    } else if (!regex.hasMatch(value)) {
      return 'letter should be in numbers';
    } else {
      return null;
    }
  }

  static String? kvalidatePassword(String? value) {
    if (value!.isEmpty) {
      return "Password is Required";
    } else if (value.length < 6) {
      return "Password must be at least 6 characters";
    } else {
      return null;
    }
  }

  static String? kValidateConfPassword(
      String? value,
      TextEditingController textPassword,
      TextEditingController textConfPassword) {
    Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
    RegExp regex = RegExp(pattern as String);
    if (value!.isEmpty) {
      return "Password is Required";
    } else if (textPassword.text != textConfPassword.text) {
      return 'Password and Confirm Password does not match.';
    } else if (!regex.hasMatch(value)) {
      return 'Password required';
    } else {
      return null;
    }
  }

  static String? kvalidateEmail(String? value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    if (value!.isEmpty) {
      return "Email is Required";
    } else if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }

  static void createSnackBar(
      String message, BuildContext scaffoldContext, Color color) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(
            color: Color(whitetext), fontFamily: appFont, fontSize: 16),
      ),
      backgroundColor: color,
    );

    // Find the Scaffold in the Widget tree and use it to show a SnackBar!
    ScaffoldMessenger.of(scaffoldContext).showSnackBar(snackBar);
  }

  static Future<bool> checkNetwork() async {
    return true;
  }
}

class FirestoreConstants {
  static const pathUserCollection = "users";
  static const pathMessageCollection = "messages";
  static const nickname = "nickname";
  static const aboutMe = "aboutMe";
  static const photoUrl = "photoUrl";
  static const id = "id";
  static const chattingWith = "chattingWith";
  static const idFrom = "idFrom";
  static const idTo = "idTo";
  static const timestamp = "timestamp";
  static const content = "content";
  static const type = "type";
  static const shopId = "shopId";
  static const userId = "userId";
  static const userType = "userType";
  static const signInFirebaseUser = "signInFirebaseUser";
}
