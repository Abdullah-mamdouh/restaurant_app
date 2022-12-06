
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/const/colors.dart';
import 'package:resturant_app/utils/helper.dart';
import 'package:resturant_app/utils/widgets/divider_widget.dart';

import '../products_screen/widgets/app_drawer_widget.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);
  static const routeName = "/order";

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
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
          'Orders',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
      ),
      body: Container(
        //margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
              child: Container(
                padding: EdgeInsets.only(top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70.h,
                            width: 75.w,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/images/real/pizza2.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pesto Basil Pizza',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.primary),
                              ),
                               SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on,color: AppColor.secondary,size: 15,),
                                   SizedBox(width: 3.w,),
                                  Text(
                                    'Deliver to :',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.secondary),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                '36 St martin Rd, Maxico',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.secondary),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    DividerWidget(),
                    const SizedBox(height: 15,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        'ORDER LIST',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.secondary),
                      ),
                    ),
                    //SizedBox(height: 5.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),
                      child: Column(
                        children: List.generate(2, (index) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 CircleAvatar(
                                  radius: 10,
                                  backgroundColor: AppColor.orange,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 15.w,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: Helper.getScreenWidth(context)*0.75,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Pesto Basil Pizza',
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColor.primary),
                                            ),
                                            Text(
                                              '\$39.00',
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColor.primary),
                                            ),

                                          ],
                                        ),
                                      ),
                                        SizedBox(height: 4.h,),
                                        Text(
                                        'Large (Serve 3.3.45 CM) Panner, Capsicum, Cheez',
                                         maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.secondary),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                      color: Color(0xFFf4f4f5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Total',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary),
                          ),
                          Text(
                            '\$99.00',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.orange),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Helper.getScreenWidth(context)*0.4,
                                child: OutlinedButton(
                                  onPressed: () {},
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Container(
                                width: Helper.getScreenWidth(context)*0.4,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    side: const BorderSide(width: 1, color: AppColor.primary),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: 15,
                                    ),
                                  ),
                                  child: Text(
                                    'REJECT',
                                    style: TextStyle(
                                        color: AppColor.primary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                    ),
                    SizedBox(height: 10.h,),

                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
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
            );
          },
          separatorBuilder: (context, index) =>  SizedBox(
            height: 10.h,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
