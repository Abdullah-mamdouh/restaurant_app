import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/screens/wallet_screen/widget/option_withdraw_card_widget.dart';
import 'package:resturant_app/screens/wallet_screen/widget/wallet_card_widget.dart';
import 'package:resturant_app/screens/wallet_screen/widget/wallet_list_widget.dart';
import 'package:resturant_app/screens/wallet_screen/widget/withdraw_amount_card.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

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
      backgroundColor: AppColor.backgroundWhite,
      appBar: AppBar(
        backgroundColor: AppColor.orange,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 15,
          ),
        ),
        title: Text(
          'Wallet',
          style: TextStyle(
            fontSize: 18,
          ),
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
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    '\$631.00',
                    style: TextStyle(
                        fontSize: 16,
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
        padding: const EdgeInsets.only(top: 10,right: 20,left: 20),
        height: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Withdraw History',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColor.primary,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                //height: Helper.getScreenHeight(context)*0.59,
                child: WalletListWidget(),
              ),
            ),
            Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                MaterialButton(
                  height: 52,
                  minWidth: Helper.getScreenWidth(context)*0.42,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  onPressed: () {},
                  color: AppColor.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  height: 52,
                  width: Helper.getScreenWidth(context)*0.42,
                  child: OutlinedButton(
                    onPressed: () {
                      selectPaymentOption(context);
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      side: BorderSide(width: 1, color: AppColor.orange,),
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                    ),
                    child: Text(
                      'ACCEPT',
                      style: TextStyle(
                          color: AppColor.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
            ],
            ),
              ),)

          ],
        ),
      ),
    );
  }

  withdraw(){
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
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Withdraw',
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600, color: AppColor.primary),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bank of America Carp',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: AppColor.primary),
                          ),
                          Icon(Icons.home_filled,size: 30,color: AppColor.orange,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        '091000019',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600, color: AppColor.primary),
                      ),

                      const SizedBox(height: 30,),
                      Text(
                        'Jonvikson Geller',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400, color: AppColor.secondary),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('ACIOVPSGO45JRS',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600, color: AppColor.primary),
                          ),
                          Text(
                            'Los Angeles',
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400, color: AppColor.secondary),
                          ),
                        ],
                      ),

                      const SizedBox(height: 30,),
                      Text(
                        'Add Withdrawal Amount',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400, color: AppColor.secondary),
                      ),

                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 2,
                      color: Colors.deepOrange.shade700,
                    )
                  ),
                ),
              ],
            ),
          );
        }
    );
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
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                              fontSize: 14,
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
                              color: AppColor.secondary,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        WithdrawAmountCardWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Select Payment Option',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w600),
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
                    padding: EdgeInsets.symmetric(vertical: 10),
                    onPressed: () {},
                    color: AppColor.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
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
