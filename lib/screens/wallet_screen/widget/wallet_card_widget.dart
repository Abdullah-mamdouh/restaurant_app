
import 'package:flutter/material.dart';

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
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange[200],
                ),
                const SizedBox(width: 15,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Helper.getScreenWidth(context)*0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mar 28, 2022',
                            style: TextStyle(fontSize: 14,color: AppColor.primary,fontWeight: FontWeight.w600),),
                          Text('\$45.00',
                            style: TextStyle(fontSize: 14,color: AppColor.green,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Text('Success',
                      style: TextStyle(fontSize: 12,color: AppColor.green,fontWeight: FontWeight.w500),),

                  ],
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
