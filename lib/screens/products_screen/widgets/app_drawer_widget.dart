import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import '../../../utils/routes/routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
     //width: 250.w,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration:const BoxDecoration(
              // borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(10.0),
              //     bottomRight: Radius.circular(10.0)),
              color: AppColor.orange,
            ),
            child: GestureDetector(
              onTap: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) =>const ProfilePage()),
                // );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(Helper.getAssetName('user.jpg', 'real')),
                      radius: 30.h,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                        'Mohamed Ahmed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        'example@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///
          ///
          _createDrawerItem(icon: FontAwesomeIcons.bowlFood, text: 'Orders',onTap: () =>
              Navigator.pushNamed(context, Routes.order)),
          _createDrawerItem(icon: Icons.restaurant_menu_rounded, text: 'Dine-In Requests',onTap: () =>
              Navigator.pushNamed(context, Routes.requests),),
          _createDrawerItem(icon: FontAwesomeIcons.utensils, text: 'Add Restaurant', onTap: () =>
              Navigator.pushNamed(context, Routes.addRest),),
          _createDrawerItem(icon: FontAwesomeIcons.utensils, text: 'Dine In',onTap: () =>
              Navigator.pushNamed(context, Routes.dineIn),),
          _createDrawerItem(icon: FontAwesomeIcons.cheese, text: 'Manage Products', onTap: () =>
              Navigator.pushNamed(context, Routes.products),),
          _createDrawerItem(icon: Icons.discount_outlined, text: 'Offers',onTap: () =>
              Navigator.pushNamed(context, Routes.offers)),
          _createDrawerItem(icon: FontAwesomeIcons.user, text: 'Profile',onTap: () =>
              Navigator.pushNamed(context, Routes.profile),),
          // Divider(),
          _createDrawerItem(
              icon: Icons.account_balance_wallet_rounded, text: 'Wallet',onTap: () =>
              Navigator.pushNamed(context, Routes.wallet)),
          _createDrawerItem(icon:Icons.account_balance, text: ' Add Bank',onTap: () =>
              Navigator.pushNamed(context, Routes.addBank),),
          _createDrawerItem(icon:Icons.account_balance, text: 'Bank Details',onTap: () =>
              Navigator.pushNamed(context, Routes.bankDetails),),

          _createDrawerItem(icon: FontAwesomeIcons.globe, text: 'Language',onTap: (){}),
          _createDrawerItem(icon: FontAwesomeIcons.arrowRightFromBracket, text: 'Log out',onTap: (){}),
          // ListTile(
          //   title: Text('0.0.1'),
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  Helper.getAssetName("star_filled.png", "virtual"),))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Flutter Step-by-Step",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData? icon, String? text, Function()? onTap}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: ListTile(
        leading: FaIcon(icon!,size: 20,color: Color(0xFF898989)),
        title:Text(text!, style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500,color: Colors.black),),
        onTap: onTap!,
      ),
    );
  }
}