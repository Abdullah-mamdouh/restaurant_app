import 'package:flutter/material.dart';
import 'package:resturant_app/const/colors.dart';

class TextFieldClass extends StatelessWidget {
  TextFieldClass({
    Key? key,
    @required this.controller,
    @required this.hintText,
  }) : super(key: key);
  final TextEditingController? controller;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextFormField(
        textDirection: TextDirection.ltr,
        controller: controller,
        style: TextStyle(
          fontSize: 15.0,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter Task Name';
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.placeholder,width: 0.4), //<-- SEE HERE
          ),
          //fillColor: Colors.red,filled: true,
          //contentPadding: EdgeInsets.symmetric(horizontal: 18),
          hintText: '${hintText}',
          hintStyle: TextStyle(color: AppColor.primary, fontSize: 16,),
          border:  UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.placeholder,width: 0.4), //<-- SEE HERE
          ),
        ),
      ),
    );
  }
}
