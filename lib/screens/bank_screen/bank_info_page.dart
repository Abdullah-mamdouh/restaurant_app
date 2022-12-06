
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screens/products_screen/widgets/app_drawer_widget.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';
import '../../utils/widgets/divider_widget.dart';
import '../requests_screen/widgets/request_card_widget.dart';

class BankInfoPage extends StatelessWidget {
  const BankInfoPage({Key? key}) : super(key: key);
  static const routeName = "/bankDetails";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Bank Info",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
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
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:20.w, vertical: 10.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 25.h),

              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.account_balance, size: 20,),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bank Name',
                            style:  TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.secondary),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Bank of America Corp ',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.account_balance_outlined, size: 20,),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Branch Name',
                            style:  TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.secondary),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Los Angolos',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.person, size: 20,),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Holder Name',
                            style:  TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.secondary),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Jonvekson Jeller',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.credit_card, size: 20,),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Account Number',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.secondary),),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '29945455382',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.info_outline_rounded, size: 20,),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Other Information',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.secondary),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'USBKUS44IMT',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 13.h),
                    onPressed: () {},
                    color: AppColor.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'EDIT BANK',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(color: Color(0xfff2f2f2), width: 0.1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius:4.0,
                    spreadRadius: 1, // Shadow position
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
