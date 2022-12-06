import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturant_app/screens/dine_in_screen/widgets/textFeild_widget.dart';
import 'package:resturant_app/screens/wallet_screen/widget/option_withdraw_card_widget.dart';
import 'package:resturant_app/screens/wallet_screen/widget/wallet_card_widget.dart';
import 'package:resturant_app/screens/wallet_screen/widget/wallet_list_widget.dart';
import 'package:resturant_app/screens/wallet_screen/widget/withdraw_amount_card.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';
import '../products_screen/widgets/app_drawer_widget.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);
  static const routeName = "/wallet";

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  String _selectedOption = "PayPal";
  int indexOption = 0;
  List<String> paymentOptions = ['PayPal', 'Stripe'];
  TextEditingController paymentController = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Color(0xfffafafc),
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: AppColor.orange,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.menu,
        //     size: 15,
        //   ),
        // ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
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
        title: Text(
          'Wallet',
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'TOTAL BALANCE',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$631.00',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'Withdraw History',
            //   style: TextStyle(
            //       fontSize: 16.sp,
            //       color: AppColor.primary,
            //       fontWeight: FontWeight.w600),
            // ),

            const Expanded(
              child: WalletListWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        height: 52,
                        minWidth: Helper.getScreenWidth(context) * 0.44,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        onPressed: () {
                          withdraw();
                        },
                        color: AppColor.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          'WITHDRAW',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 52,
                        width: Helper.getScreenWidth(context) * 0.44,
                        child: OutlinedButton(
                          onPressed: () {
                            selectPaymentOption(context);
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            side: const BorderSide(
                              width: 1,
                              color: AppColor.orange,
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                          ),
                          child: const Text(
                            'ACCEPT',
                            style: TextStyle(
                                color: AppColor.orange,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  withdraw() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(
                    height: 5.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Withdraw',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primary),
                    ),
                  ),
                   SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bank of America Carp',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.orange),
                            ),
                            FaIcon(
                              FontAwesomeIcons.buildingColumns,
                              size: 25,
                              color: AppColor.orange,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '091000019',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.primary),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Jonvikson Geller',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.primary),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ACIOVPSGO45',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.primary),
                            ),
                            Text(
                              'Los Angeles',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.primary),
                            ),
                            //SizedBox(height: 10.h),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 2,
                          color: Colors.deepOrange.shade700,
                        )),
                  ),
                   SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Add Withdrawal Amount',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primary),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 45.h,
                      padding: EdgeInsets.only(left: 20.w,),
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: AppColor.secondary),
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 1),
                            blurRadius: 4.0,
                            spreadRadius: 1, // Shadow position
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          //contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                          icon: Text("\$" ,style: TextStyle(
                              color: AppColor.primary,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600
                          ), ),
                        ),
                        style: TextStyle(
                          color: AppColor.orange,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600
                        ),

                      )
                  ),
                  SizedBox(height: 20.h,),
                  MaterialButton(
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 13.h),
                    onPressed: () {},
                    color: AppColor.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'WITHDRAW',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  selectPaymentOption(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              //physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Topup Wallet',
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Add Topup Amount',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        WithdrawAmountCardWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Select Payment Option',
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        OptionWithdrawCardWidget(controller: paymentController),
                        // const SizedBox(
                        //   height: 15,
                        // ),
                        // OptionWithdrawCardWidget(controller: paymentController),
                        // const SizedBox(
                        //   height: 15,
                        // ),
                        // OptionWithdrawCardWidget(controller: paymentController),
                        // const SizedBox(
                        //   height: 15,
                        // ),
                        // OptionWithdrawCardWidget(controller: paymentController),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 13.h),
                    onPressed: () {},
                    color: AppColor.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  transactionDetails() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Transaction Details',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Transaction Details',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColor.primary,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '12448235a455523sa787',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColor.secondary,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.3,
                      color: AppColor.placeholder,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              WalletCardWidget(),
            ],
          ),
        );
      },
    );
  }

  _radio(int index) {
    return Transform.scale(
      scale: 1.1,
      child: Radio(
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        focusColor: AppColor.orange,
        activeColor: AppColor.orange,
        value: index,
        groupValue: indexOption,
        onChanged: (val) {
          setState(() {
            indexOption = index;
            _selectedOption = paymentOptions[indexOption];
          });
        },
      ),
    );
  }
}
