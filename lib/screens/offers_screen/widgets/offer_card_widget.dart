import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';

class OfferCardWidget extends StatefulWidget {
  const OfferCardWidget({Key? key}) : super(key: key);

  @override
  State<OfferCardWidget> createState() => _OfferCardWidgetState();
}

class _OfferCardWidgetState extends State<OfferCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Row(
          children: [
            Container(
              height: 100,width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                 image: AssetImage('assets/images/real/coffee.png'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      side: BorderSide(width: 1, color: AppColor.primary),
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                    ),
                    child: Text(
                      'TRYNEW',
                      style: TextStyle(
                          color: AppColor.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/virtual/offer_icon_filled.png',height: 25,width: 25,),
                    const SizedBox(width: 5,),
                    Text(
                      'This offer is expire on 31 Jan, 2022',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.secondary),
                    ),
                  ],)
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
    ),);
  }
}
