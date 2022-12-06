
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class WithdrawAmountCardWidget extends StatelessWidget {
  const WithdrawAmountCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 10, vertical: 10),
        height: 55.h,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '\$ ',
                    style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' 50',
                    style: TextStyle(
                        color: AppColor.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //border: Border.all(color: AppColor.secondary),

          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 1.0),
              blurRadius: 2.0,
              spreadRadius: 1, // Shadow position
            ),
          ],
        ),
      ),
    );
  }
}
