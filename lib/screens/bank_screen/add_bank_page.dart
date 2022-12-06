import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/colors.dart';


class AddBankPage extends StatelessWidget {
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();

  AddBankPage({Key? key}) : super(key: key);

  // final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Add Bank",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
          //    fontWeight: FontWeight.w500
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded,size: 22,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank Name",
                style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 8.h,),
              CustomTextInput(
               // hintText: "dddd",
              ),
              SizedBox(height: 15.h,),
              Text(
                "Branch Name",
                style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 8.h,),
              CustomTextInput(
                // hintText: "dddd",
              ),
              SizedBox(height: 15.h,),
              Text(
                "Holder Name",
                style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 8.h,),
              CustomTextInput(
                // hintText: "dddd",
              ),
              SizedBox(height: 15.h,),
              Text(
                "Account Number",
                style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 8.h,),
              CustomTextInput(
                // hintText: "dddd",
              ),
              SizedBox(height: 15.h,),
              Text(
                "Other Information",
                style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 8.h,),
              CustomTextInput(
                // hintText: "dddd",
              ),
              SizedBox(height: 15.h,),

              MaterialButton(
            minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 13.h),
            onPressed: () {},
            color: AppColor.orange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              'ADD BANK',
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ]
          ),
        ),
      ),
    );
  }
}
class CustomInputField extends StatelessWidget {
  final TextEditingController inputController;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.formKey,
    required this.inputController,
    this.obscureText = false,
    this.onTap,
    this.onSubmitted,
  }) : super(key: key);
  final String? hintText;
  final Widget? prefixIcon;
  final Key? formKey;
  final bool obscureText;
  final Function()? onTap;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 48,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: const Offset(12, 26),
                    blurRadius: 50,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.1)),
              ],
            ),
            child: TextField(
              onTap: onTap,
              onSubmitted: onSubmitted,
              obscureText: obscureText,
              key: formKey,
              controller: inputController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                hintText: hintText,
                hintStyle: TextStyle(color: Color(0xff646464), fontSize: 13.sp),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xfff0f0f0), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide:
                  BorderSide(color: AppColor.orange, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffefefef), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    @required String? hintText,
    EdgeInsets padding = const EdgeInsets.only(left: 15),
    Key? key,
  })  : _hintText = hintText,
        _padding = padding,
        super(key: key);

  final String? _hintText;
  final EdgeInsets? _padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xfff5f5f6),
       borderRadius: BorderRadius.circular(5)
       // shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          //hintText: _hintText,
          hintStyle: TextStyle(
            color: AppColor.placeholder,
          ),
          contentPadding: _padding,
        ),
      ),
    );
  }
}
