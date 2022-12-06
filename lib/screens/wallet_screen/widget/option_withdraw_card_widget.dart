
import 'package:flutter/material.dart';
import 'package:resturant_app/screens/wallet_screen/widget/radio_widget.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';

class OptionWithdrawCardWidget extends StatefulWidget {
  OptionWithdrawCardWidget({Key? key, required this.controller}) : super(key: key);
  TextEditingController? controller;

  @override
  State<OptionWithdrawCardWidget> createState() => _OptionWithdrawCardWidgetState();
}

class _OptionWithdrawCardWidgetState extends State<OptionWithdrawCardWidget> {
  String gender = 'PayPal';
  List<String> paymentOptions = ['PayPal', 'Stripe','PayPal', 'Stripe','PayPal', 'Stripe'];
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: List.generate(2, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 90,
                  child: Center(
                    child: Image.asset(
                      'assets/images/real/paypal.png',
                      height: 35,
                      width: 35,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEFF4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child:  RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      activeColor: AppColor.orange,
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: Text(paymentOptions[index]),
                      value: paymentOptions[index],
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    //width: Helper.getScreenWidth(context) * 0.5,
                    /*child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        /*Text(
                          'PayPal',
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColor.placeholder,
                              fontWeight: FontWeight.w400),
                        ),
                        */
                        RadioListTile(
                          title: Text("PayPal"),
                          value: "PayPal",
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                        //RadioWidget(paymentOptionController: controller,index: index,)
                        //_radio(0)
                      ],
                    ),
                    */
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColor.orange,
                width: 1,
              ),
            ),
          ),
        );
      }),
    );
  }
}
