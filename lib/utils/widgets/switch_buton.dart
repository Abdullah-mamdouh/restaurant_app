
import 'package:flutter/material.dart';
import 'package:resturant_app/const/colors.dart';

class SwitchButtonWidget extends StatelessWidget {
  SwitchButtonWidget({Key? key}) : super(key: key);
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,height: 45,
      child: Switch.adaptive(
          value: val,
          activeColor:AppColor.green,
          inactiveThumbColor: Colors.blueGrey,
          onChanged: (value) {

          },
        ),

    );
  }
}
