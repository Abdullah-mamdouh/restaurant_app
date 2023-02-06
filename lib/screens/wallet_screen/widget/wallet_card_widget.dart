
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
class WalletCardWidget extends StatefulWidget {
  const WalletCardWidget({Key? key}) : super(key: key);

  @override
  State<WalletCardWidget> createState() => _WalletCardWidgetState();
}

class _WalletCardWidgetState extends State<WalletCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange[100],//Color(0xFFfff0eb),
                    child: Icon(
                      Icons.account_balance_wallet_rounded,
                      color: AppColor.orange,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 15,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: Helper.getScreenWidth(context)*0.65,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Mar 28, 2022',
                              style: TextStyle(fontSize: 16,color: AppColor.primary,fontWeight: FontWeight.w600),),
                            Text('\$45.00',
                              style: TextStyle(fontSize: 16.sp,color: AppColor.green,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Container(
                        width: Helper.getScreenWidth(context)*0.65,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Text('Success',
                              style: TextStyle(fontSize: 16.sp,color: AppColor.green,fontWeight: FontWeight.w500),),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColor.primary,
                              size: 15,
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Color(0xffFFFFFF),
            // boxShadow: [
            //   BoxShadow(
            //     color: Color.fromRGBO(0, 0, 0, 0.25),
            //     offset: Offset(0, 2),
            //     blurRadius: 2.0,
            //     spreadRadius: 1, // Shadow position
            //   ),
            // ],
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 1.0),
                blurRadius: 4.0,
                spreadRadius: 1, // Shadow position
              ),
            ],
          ),
        ),
      ),
    );
  }
}
