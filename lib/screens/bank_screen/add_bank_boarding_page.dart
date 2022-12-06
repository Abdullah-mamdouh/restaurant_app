import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screens/products_screen/widgets/app_drawer_widget.dart';

import '../../const/colors.dart';
import 'add_bank_page.dart';


class AddBankBoardingPage extends StatelessWidget {
  static const routeName = "/addBank";

  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();

  AddBankBoardingPage({Key? key}) : super(key: key);

  // final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff6f6f6),
        centerTitle: true,
        title: Text(
          "Add Bank",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
             // fontWeight: FontWeight.w600
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(EvaIcons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 320.h,

                decoration: const BoxDecoration(
                  //color: AppColor.placeholder,
                  image: DecorationImage(
fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/real/bank3.png',
                    ),
                  ),
                  borderRadius: BorderRadius.vertical(bottom:Radius.circular(125),)
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'You have not added bank account',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.primary,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'please add your bank account',
                style: TextStyle(
                    fontSize: 14.sp,
                    color:AppColor.primary,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
                child: MaterialButton(
                  minWidth: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 13.h),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder) => AddBankPage()));
                  },
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
              ),
            ]
        ),
      ),
    );
  }
}