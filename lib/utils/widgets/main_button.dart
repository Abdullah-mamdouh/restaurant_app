import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key,
    required this.text,
    this.backgroundColor,
    this.foregroundColor,
    this.horizontalPadding = 0,
    this.width = double.infinity,
    this.onPressed,
    this.style,
    this.borderColor
  }) : super(key: key);
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double horizontalPadding;
  final double? width;
  final void Function()? onPressed;
  final TextStyle? style;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all( RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            // side: BorderSide(color: color,)
            //
          ),),

          backgroundColor: MaterialStateProperty.all(backgroundColor),
         foregroundColor:  MaterialStateProperty.all(foregroundColor),
        ),
        child: Text(text, style:style),
      ),
    );
  }
}