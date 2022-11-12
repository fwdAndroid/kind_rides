import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kind_rides/user/screens/main_home.dart';
import 'package:kind_rides/user/screens/signup_screen.dart';
import 'package:kind_rides/utils/widgets/appbar.dart';
import 'package:kind_rides/utils/widgets/button.dart';
import 'package:kind_rides/utils/widgets/notification_card.dart';
import 'package:kind_rides/utils/widgets/text_field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../utils/constants.dart';
import '../../utils/widgets/bottom_menu_bar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController tipController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget buildInput() {
      return Padding(
        padding:
            EdgeInsets.only(left: 10.h, right: 10.h, bottom: 10.h, top: 10.h),
        child: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  child: IconButton(
                    icon: const Icon(Icons.emoji_emotions),
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                height: 50.h,
                width: 250.w,
                decoration: BoxDecoration(
                  // border: Border(top: BorderSide(color: Colors.black, width: 0.5)),
                  borderRadius: BorderRadius.circular(10.r),
                  color: Theme.of(context).cardColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: TextField(
                        onSubmitted: (value) {},
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15),
                        controller: passwordController,
                        decoration: const InputDecoration.collapsed(
                          hintText: '  Message',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        //    focusNode: focusNode,
                      ),
                    ),

                    // Button send message

                    IconButton(
                      icon: const Icon(Icons.attach_file),
                      onPressed: () {},
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 45.h,
                  height: 45.h,
                  child: Icon(
                    Icons.mic,
                    color: Theme.of(context).hintColor,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget getRecieve(String text) {
      return Container(
        // width: 200.w,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).cardColor,
        ),
        //Theme.of(context).hoverColor),
        padding: EdgeInsets.all(6),
        margin: EdgeInsets.only(right: 150.h, bottom: 5.h),
        child: Text(
          text,
          maxLines: 4,
          overflow: TextOverflow.clip,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.justify,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.black87),
        ),
      );
    }

    Widget getSend(String text) {
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(6),
          color: Color(Constants.greenDark),
        ),
        //Theme.of(context).hoverColor),
        padding: EdgeInsets.all(6),
        margin: EdgeInsets.only(left: 150, bottom: 5.h),
        child: Text(
          maxLines: 4,
          overflow: TextOverflow.clip,
          textDirection: TextDirection.ltr,
          //  textAlign: TextAlign.justify,
          text,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.white),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.h),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Theme.of(context).cardColor,
                ),
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(40.r),
                              ),
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return bottomMenuBar(context);
                            });
                      },
                      child: SvgPicture.asset(
                        "assets/images/more_icon.svg",
                        width: 13.h,
                        height: 13.h,
                      ),
                    ),
                    // SvgPicture.asset(
                    //   "assets/images/kind.svg",
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Malik",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          "Away 10 min ago",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    //SizedBox(width: 75.h),
                    InkWell(
                      child: Icon(Icons.home, color: Colors.black, size: 20.h),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const MainHomePage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                //  physics: BouncingScrollPhysics(),
                child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "yesteday",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: getSend("gg ygy ygyy yggugug"),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: getRecieve("gg ygy ygyy yggugug"),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: getSend(
                          "gg ygy hjgj hghg ghgh ghgh fhfhg fyfyf  ygyy yggugug"),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "today",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: getRecieve(
                          "gg ygy hjgj hghg ghgh ghgh fhfhg fyfyf  ygyy yggugug"),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child:
                          getSend("gg ygy ygyy yg hh gug yyf yfytfy fyfygugug"),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: getRecieve(
                          "gg ygy ygyy yg hh gug yyf yfytfy fyfygugug"),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: getSend("gg ygy ygyy yggugug"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //    Positioned(left: 0, right: 0, bottom: 0, child: buildInput()),
      bottomNavigationBar: buildInput(),
    );
  }
}
