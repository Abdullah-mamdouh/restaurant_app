
import 'package:dotted_border/dotted_border.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:resturant_app/utils/widgets/divider_widget.dart';

import '../../const/colors.dart';
import '../../utils/widgets/dropdown_button.dart';
import '../../utils/widgets/switch_buton.dart';
import '../dine_in_screen/widgets/lable_widget.dart';
import '../dine_in_screen/widgets/textFeild_widget.dart';
import '../dine_in_screen/widgets/time_widget.dart';
import '../products_screen/widgets/app_drawer_widget.dart';
import 'package:multiselect/multiselect.dart';

class AddingRestaurant extends StatefulWidget {
  const AddingRestaurant({Key? key}) : super(key: key);
  static const routeName = "/addRest";
  @override
  State<AddingRestaurant> createState() => _AddingRestaurantState();
}

class _AddingRestaurantState extends State<AddingRestaurant> {

  final restNameController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();
  List<String> selected = [];
  List<Model?> selectedServices = [];
final services = [
  Model(id: "1", name: "Wifi"),
  Model(id: "2", name: "Tv"),
  Model(id: "3", name: "Tekway"),
];
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
          'Add Restaurant',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lable(lable: 'Restaurant Name'),
              //const SizedBox(height: 8,),
              TextFieldClass(controller: restNameController, hintText: 'Enter Price'),

              SizedBox(height: 20.h,),
              Lable(lable: 'Categories'),
              DropDownButtonWidget(items: ['Italian','Maxican']),

              SizedBox(height: 10.h,),
              Lable(lable: 'Services'),
              DropDownMultiSelect(


                /*icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColor.primary, //constantColors.whiteColor,
                ),*/
                onChanged: (List<String> x) {
                  setState(() {
                    selected =x;
                  });
                },
                decoration:  InputDecoration(
                  enabledBorder:InputBorder.none ,
                  border: InputBorder.none,

                  labelStyle: TextStyle(
                      color: AppColor.primary,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                  contentPadding: EdgeInsets.zero,
                  focusColor: AppColor.secondary,

                  hoverColor: AppColor.placeholderBg,

                ),

                options: const ['Free Wifi' , 'Outdoor Seating' , 'Live Music' , 'Good for Dinner'],
                selectedValues: selected,
                whenEmpty: 'Select Something',


              ),
            const Divider(
              color: AppColor.primary,
              height: 0,
              thickness: 0.2,
            ),
              //DropDownButtonWidget(items: ['Pizza','Desert','Beverages','Sandwich']),

              SizedBox(height: 17.h,),
              Lable(lable: 'Timing'),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TimeWidget( controller: startTimeController),
                  TimeWidget( controller: endTimeController),
                ],
              ),
              SizedBox(height: 15.h,),

              Lable(lable: 'Description'),
              TextFieldClass(controller: restNameController, hintText: 'Enter description'),

              SizedBox(height: 35.h,),
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

              SizedBox(height: 20.h,),
              // MaterialButton(
              //   minWidth: double.infinity,
              //   padding: EdgeInsets.symmetric(vertical: 14),
              //   onPressed: () {},
              //   color: AppColor.orange,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8)),
              //   child: Text(
              //     'CONTINUE',
              //     style: TextStyle(
              //         fontSize: 14,
              //         color: Colors.white,
              //         fontWeight: FontWeight.w500),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
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
class Model{
  final String id;
  final String name;

  Model({required this.id, required this.name});
}