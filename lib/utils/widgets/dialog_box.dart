import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'text_field.dart';

class DialogData extends StatefulWidget {
  DialogData({
    Key? key,
    required this.child,
  }) : super(key: key);
  Widget child;

  @override
  _DialogDataState createState() => _DialogDataState();
}

class _DialogDataState extends State<DialogData> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: widget.child,
        ),
      ],
    );
  }
}
