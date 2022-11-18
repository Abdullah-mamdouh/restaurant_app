
import 'package:flutter/material.dart';
import 'package:resturant_app/const/colors.dart';

class Lable extends StatelessWidget {
  Lable({Key? key, required this.lable}) : super(key: key);

  String lable;

  @override
  Widget build(BuildContext context) {
    return Text('${lable}',style: TextStyle(fontSize: 16,color: AppColor.secondary,fontWeight: FontWeight.w500),);
  }
}
