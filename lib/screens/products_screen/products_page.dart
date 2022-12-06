import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screens/products_screen/widgets/app_drawer_widget.dart';
import 'package:resturant_app/screens/products_screen/widgets/radio_button_widget.dart';
import 'package:resturant_app/utils/widgets/switch_buton.dart';
import 'package:resturant_app/utils/widgets/divider_widget.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';
enum BestTutorSite { nches , w3schools, tutorialandexample }

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);
  static const routeName = "/products";

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int? _groupValue = 1;

  // ValueChanged<String?> _valueChangedHandler() {
  //   return (value) => setState(() => _groupValue = value!);
  // }
  //BestTutorSite _site = BestTutorSite.javatpoint;
  bool isOnion = false;
  bool isTomato = false;
  bool isCapsicum = false;
  bool isJalapano = false;
  // bool isWifi = false;
  // bool isGarden = false;
  // bool isParking = false;
  // int parkingID = 5;
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
          'Your Products',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 75.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/real/pizza2.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
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
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Atlantic salman served',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.secondary),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$30.00',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.orange),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '\$40.00',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.lineThrough,
                                        color: AppColor.primary),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    useRootNavigator: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    context: context,
                                    builder: (BuildContext bc) {
                                      return ConstrainedBox(
                                        constraints: BoxConstraints(
                                            maxHeight: MediaQuery.of(context)
                                                    .size.height * 0.85),
                                        child: SingleChildScrollView(
                                          child: SizedBox(

                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(20.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.centerRight,
                                                        height: 150,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Color(0xFF333333),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(15),
                                                            image: DecorationImage(
                                                              image: AssetImage(
                                                                Helper.getAssetName(
                                                                    "coffee.jpg",
                                                                    "real"),
                                                              ),
                                                              fit: BoxFit.fill,
                                                            )),
                                                      ),
                                                      SizedBox(
                                                        height: 15.h,
                                                      ),
                                                      Text(
                                                        "Farm Fresh Pizza",
                                                        maxLines: 1,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16.sp,
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.start,
                                                        children: [
                                                          Text('\$29.00',
                                                              style: TextStyle(
                                                                  fontSize: 16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: AppColor
                                                                      .orange)),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            '\$40.00',
                                                            style: TextStyle(
                                                                fontSize: 16.sp,
                                                                fontWeight:
                                                                    FontWeight.w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                                color: AppColor
                                                                    .secondary),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text(
                                                        'Atlantic Salmon served pinat nair & orgnaic vegtables Atlantaic salmon served',
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: AppColor.secondary,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 15.h,
                                                      ),
                                                      Text('Customisation',
                                                          style: TextStyle(
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight.w600,
                                                              color:Colors.black)),
                                                      SizedBox(
                                                        height: 2.h,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                         Text('6 Inches (Serves 4)',style: TextStyle(
                                                             color: AppColor.secondary,
                                                           fontWeight: FontWeight.w500,
                                                           fontSize: 15.sp
                                                         ),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Text('\$33.00',style: TextStyle(
                                                                color: AppColor.orange,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 15.sp
                                                              ),),
                                                              SizedBox(width: 5,),
                                                              Radio(
                                                                value: 1,

                                                                hoverColor: AppColor.orange,
                                                                activeColor: AppColor.orange,
                                                                groupValue: _groupValue,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _groupValue = value as int?;
                                                                  });
                                                                },
                                                              ),

                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                         Text('8 Inches (Serves 4)',style: TextStyle(
                                                             color: AppColor.secondary,
                                                           fontWeight: FontWeight.w500,
                                                           fontSize: 15.sp
                                                         ),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Text('\$33.00',style: TextStyle(
                                                                color: AppColor.orange,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 15.sp
                                                              ),),
                                                              SizedBox(width: 5,),
                                                              Radio(
                                                                value: 2,
                                                                hoverColor: AppColor.orange,
                                                                activeColor: AppColor.orange,
                                                                groupValue: _groupValue,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _groupValue = value as int?;
                                                                  });
                                                                },
                                                              ),

                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                         Text('10 Inches (Serves 5)',style: TextStyle(
                                                             color: AppColor.secondary,
                                                           fontWeight: FontWeight.w500,
                                                           fontSize: 15.sp
                                                         ),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Text('\$33.00',style: TextStyle(
                                                                color: AppColor.orange,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 15.sp
                                                              ),),
                                                              SizedBox(width: 5,),
                                                              Radio(
                                                                value: 3,
                                                                hoverColor: AppColor.orange,
                                                                activeColor: AppColor.orange,
                                                                groupValue: _groupValue,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _groupValue = value as int?;
                                                                  });
                                                                },
                                                              ),

                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text('Addons',
                                                          style: TextStyle(
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                              FontWeight.w600,
                                                              color:Colors.black)),
                                                      SizedBox(
                                                        height: 2.h,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('Onion)',style: TextStyle(
                                                              color: AppColor.secondary,
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 15.sp
                                                          ),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Text('\$33.00',style: TextStyle(
                                                                  color: AppColor.orange,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 15.sp
                                                              ),),
                                                              SizedBox(width: 5,),
                                                              Checkbox(
                                                                checkColor: AppColor.orange,
                                                                fillColor:
                                                                MaterialStateProperty.all(
                                                                    AppColor.primary),
                                                                activeColor: AppColor.orange,
                                                                value: isOnion,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    isOnion = value!;
                                                                  });
                                                                },
                                                              ),

                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('Tomatos)',style: TextStyle(
                                                              color: AppColor.secondary,
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 15.sp
                                                          ),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Text('\$33.00',style: TextStyle(
                                                                  color: AppColor.orange,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 15.sp
                                                              ),),
                                                              SizedBox(width: 5,),
                                                              Checkbox(
                                                                checkColor: AppColor.orange,
                                                                fillColor:
                                                                MaterialStateProperty.all(
                                                                    AppColor.primary),
                                                                activeColor: AppColor.orange,
                                                                value: isTomato,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    isTomato = value!;
                                                                  });
                                                                },
                                                              ),
                                                          ]),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('Capsicum)',style: TextStyle(
                                                              color: AppColor.secondary,
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 15.sp
                                                          ),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Text('\$33.00',style: TextStyle(
                                                                  color: AppColor.orange,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 15.sp
                                                              ),),
                                                              SizedBox(width: 5,),
                                                              Checkbox(
                                                                checkColor: AppColor.orange,
                                                                fillColor:
                                                                MaterialStateProperty.all(
                                                                    AppColor.primary),
                                                                activeColor: AppColor.orange,
                                                                value: isCapsicum,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    isCapsicum = value!;
                                                                  });
                                                                },
                                                              ),

                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('Japalano)',style: TextStyle(
                                                              color: AppColor.secondary,
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 15.sp
                                                          ),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Text('\$33.00',style: TextStyle(
                                                                  color: AppColor.orange,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 15.sp
                                                              ),),
                                                              SizedBox(width: 5,),
                                                              Checkbox(
                                                                checkColor: AppColor.orange,
                                                                fillColor: MaterialStateProperty.all(AppColor.primary),
                                                                // side: MaterialStateBorderSide.resolveWith(
                                                                //       (states) => BorderSide( color: Colors.red),
                                                                // ),
                                                                activeColor: AppColor.primary,
                                                                hoverColor: AppColor.primary,
                                                                value: isJalapano,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    isJalapano = value!;
                                                                  });
                                                                },
                                                              ),

                                                            ],
                                                          )
                                                        ],
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  'View Sized and Addons',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.orange),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    DividerWidget(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.delete_outline_outlined,
                                  size: 20,
                                  color: AppColor.orange,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Delete',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.secondary),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.secondary),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Publish',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.secondary),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SwitchButtonWidget(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
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
          separatorBuilder: (context, index) => const SizedBox(
            height: 15,
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 50.h,
        width: 50.w,
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add Order',

          backgroundColor: AppColor.orange,
          child: const Icon(Icons.add,size: 30),
        ),
      ),
    );
  }
}
