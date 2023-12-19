import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screens/authentication_sreen/singup_page.dart';
import 'package:resturant_app/screens/order_screen/order_page.dart';

import '../../const/colors.dart';
import '../../utils/widgets/main_button.dart';
import 'login_page.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.h, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 75.w,
                        height: 35.0.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            border: Border.all(
                              color: AppColor.orange,
                            )),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(const StadiumBorder()),
                              fixedSize: MaterialStateProperty.all(
                              Size(MediaQuery.of(context).size.width, 50)),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              shadowColor: MaterialStateProperty.all(Colors.black),
                              elevation: MaterialStateProperty.all(0),
                              side: MaterialStateProperty.all(BorderSide(
                                  color: AppColor.orange, width: 0.2))
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrdersPage()),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0.w),
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                  color: AppColor.orange,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          // child: MaterialButton(
                          //   height: 40.0.h,
                          //   onPressed: () {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(builder: (context) => HomePage()),
                          //     );
                          //   },
                          //
                          //   child: const Text(
                          //     'Skip',
                          //     style: TextStyle(color: AppColor.welcomeColor, fontSize: 20),
                          //   ),
                          //   color: Colors.white,
                          // ),
                          ///
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              Center(
                child: Container(
                  width: 180.w,
                  height: 150.h,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/real/res.png'),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Welcome to Restaurant Admin App",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColor.orange,
                            //Color(0xffe8073f),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Accept orders and manage your store products",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            //Color(0xffe8073f),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: MainButton(
                  text: 'Log In',
                  backgroundColor: AppColor.orange,
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: SizedBox(
                  height: 38.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                            side: BorderSide(
                              color: AppColor.orange,
                            )),),
                        fixedSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width, 50)),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(0),
                        side: MaterialStateProperty.all(BorderSide(
                            color: AppColor.orange, width: 0.2))
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.orange),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
