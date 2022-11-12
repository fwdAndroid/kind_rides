import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CTextField extends StatefulWidget {
  CTextField({
    super.key,
    required this.hintText,
    required this.isPasswordField,
    required this.controller,
    required this.validator,
    required this.autovalidateMode,
    this.initialValue,
    this.readOnly,
    this.prefixIcon,
    this.suffixIcon,
    this.color,
    this.style,
    this.maxlines,
    this.minlines,
    this.radius,
  });
  final String hintText;
  final bool isPasswordField;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final AutovalidateMode autovalidateMode;
  final String? initialValue;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  bool? readOnly = false;
  Color? color;
  TextStyle? style;
  int? minlines;
  int? maxlines;
  double? radius;

  @override
  State<CTextField> createState() => _CTextFieldState(controller);
}

class _CTextFieldState extends State<CTextField> {
  bool hidePassword = false;
  final TextEditingController controller;
  //  final FormFieldValidator validator;
  //  final String? initialValue;
  _CTextFieldState(this.controller);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: widget.minlines,
      maxLines: widget.maxlines,
      // expands: true,
      style: GoogleFonts.dmSans(
        fontSize: 12.sp,
        color: Colors.black,
      ),
      initialValue: widget.initialValue,
      controller: controller,
      //enabled: widget.readOnly,
      obscureText: hidePassword,
      validator: widget.validator,
      cursorColor: const Color.fromARGB(255, 183, 184, 205),
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.only(top: 15.h, bottom: 15.h, left: 15.w, right: 15.w),
        hintText: widget.hintText,
        hintStyle: widget.style ??
            GoogleFonts.dmSans(
              fontSize: 12.sp,
              color: Colors.grey,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 10.r),
          borderSide:
              BorderSide(color: Theme.of(context).indicatorColor, width: 0),
        ),
        filled: true,

        fillColor: widget.color ?? Colors.white,
        prefixIcon: widget.prefixIcon,
        // suffixIconColor: Theme.of(context).indicatorColor,
        suffixIcon: widget.isPasswordField
            ? IconButton(
                icon: Icon(
                  hidePassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  if (hidePassword) {
                    hidePassword = false;
                  } else {
                    hidePassword = true;
                  }
                  setState(() {});
                },
              )
            : widget.suffixIcon,
      ),
    );
  }
}
