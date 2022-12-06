import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Row(
          children: [
            Container(
              height: 90.h,width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                 image: AssetImage('assets/images/real/coffee.png'),
                  fit: BoxFit.fill,
                )
              ),
            ),
             SizedBox(width: 15.w,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  width:100,
                  height: 32.h,
                  child: DottedBorder(
                  borderType: BorderType.RRect,
                  dashPattern: [8, 4],
                  strokeWidth: 2,
                  color: AppColor.secondary,
                  radius: Radius.circular(2),
                  padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'TRYNEW',
                        style: TextStyle(
                            color: AppColor.orange,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
              ),
                ),
                  // Container(
                  //   width: 100,
                  //   child: OutlinedButton(
                  //     onPressed: () {},
                  //     style: OutlinedButton.styleFrom(
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(5)
                  //       ),
                  //       side: BorderSide(width: 1, color: AppColor.primary),
                  //       padding: EdgeInsets.symmetric(
                  //         vertical: 5,
                  //         horizontal: 15,
                  //       ),
                  //     ),
                  //     child: Text(
                  //       'TRYNEW',
                  //       style: TextStyle(
                  //           color: AppColor.orange,
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.w600),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 12.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/virtual/offer_icon_filled.png',height: 20.h,width: 20.w,),
                       SizedBox(width: 8.w,),
                      const Expanded(
                        child: Text(
                          'This offer is expire on 31 Jan, 2022',
                         // maxLines: 2,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.primary),
                        ),
                      ),
                    ],)
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: Color(0xffFFFFFF),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color.fromRGBO(0, 0, 0, 0.25),
          //     offset: Offset(2, 2),
          //     blurRadius: 8.0,
          //     spreadRadius: 4, // Shadow position
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
    ),);
  }
}
