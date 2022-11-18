
import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class WithdrawAmountCardWidget extends StatelessWidget {
  const WithdrawAmountCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 10, vertical: 10),
        width: double.infinity,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '\$ ',
                style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' 50',
                style: TextStyle(
                    color: AppColor.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
