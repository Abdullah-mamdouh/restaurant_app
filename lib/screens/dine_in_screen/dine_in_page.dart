import 'package:dotted_border/dotted_border.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screens/dine_in_screen/widgets/lable_widget.dart';
import 'package:resturant_app/screens/dine_in_screen/widgets/textFeild_widget.dart';
import 'package:resturant_app/screens/dine_in_screen/widgets/time_widget.dart';
import 'package:resturant_app/utils/widgets/divider_widget.dart';
import 'package:resturant_app/utils/widgets/dropdown_button.dart';
import 'package:resturant_app/utils/widgets/switch_buton.dart';

import '../../const/colors.dart';
import '../products_screen/widgets/app_drawer_widget.dart';

class DineInPage extends StatefulWidget {
  const DineInPage({Key? key}) : super(key: key);
  static const routeName = "/dineIn";

  @override
  State<DineInPage> createState() => _DineInPageState();
}

class _DineInPageState extends State<DineInPage> {
  final priceController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Dine-in',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,vertical: 5.h
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lable(lable: 'Price (approx for two)'),
              //const SizedBox(height: 8,),
              TextFieldClass(
                  controller: priceController, hintText: 'Enter Price'),
               SizedBox(
                height: 15.h,
              ),
              Lable(lable: 'Categories'),
              DropDownButtonWidget(items: ['Italian', 'Maxican']),
               SizedBox(
                height: 15.h,
              ),
              Lable(lable: 'Services'),
              DropDownButtonWidget(
                  items: ['Pizza', 'Desert', 'Beverages', 'Sandwich']),

              SizedBox(
                height: 15.h,
              ),
              Lable(lable: 'Timing'),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TimeWidget(controller: startTimeController),
                  TimeWidget(controller: endTimeController),
                ],
              ),
              SizedBox(height: 25.h),
              DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [8, 4],
                strokeWidth: 2,
                color: AppColor.secondary,
                radius: Radius.circular(8),
                padding: EdgeInsets.all(6),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: Container(
                    //height: 180.h,
                    width: double.infinity,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                    child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 85.h,
                            width: 95.w,
                            child: Stack(
                              clipBehavior: Clip.none,
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  height: 85.h,
                                  width: 95.w,
                                  color: Colors.blueGrey,
                                  child: const Icon(
                                    Icons.image_rounded,
                                    color: AppColor.orange,
                                    size: 70,
                                  ),
                                ),
                                Positioned(
                                  top: -20,
                                  right: -45,
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 2.0,
                                    fillColor: AppColor.orange,
                                    padding: EdgeInsets.all(5.0),
                                    shape: CircleBorder(),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 25,
                                    ),),),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Center(
                            child: Text(
                              "This will be menu images, foodio users ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                color: AppColor.secondary,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "will see for your Restaurant",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                color: AppColor.secondary,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

               SizedBox(
                height: 25.h,
              ),
              Container(
                //elevation: 5,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(2, 2),
                      blurRadius: 4.0,
                      spreadRadius: 2, // Shadow position
                    ),
                  ],
                ),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(8),
                // ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Activate',
                        style:
                            TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500,color: AppColor.primary),
                      ),
                      SwitchButtonWidget(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar:
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
        child: MaterialButton(
          minWidth: double.infinity,height: 45,
          padding: EdgeInsets.symmetric(vertical: 13.h),
          onPressed: () {},
          color: AppColor.orange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            'CONTINUE',
            style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),

    );

  }
}
