import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginOrSignupWith extends StatelessWidget {
  const LoginOrSignupWith(
      {Key? key,
      required this.tittle,
      this.backgroundColor,
      required this.icon,
      this.onPressed,
      this.style,
      this.iconColor})
      : super(key: key);
  final String tittle;
  final Color? backgroundColor;
  final Color? iconColor;
  final IconData icon;
  final TextStyle? style;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(const StadiumBorder(),),
          fixedSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width, 45.h)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.black),
          elevation: MaterialStateProperty.all(0),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor),
            SizedBox(
              width: 50.w,
            ),
            Center(
              child: Text(
                tittle,
                textAlign: TextAlign.center,
                style: style,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
