
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screens/offers_screen/widgets/offers_list_widget.dart';

import '../../const/colors.dart';
import '../products_screen/widgets/app_drawer_widget.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({Key? key}) : super(key: key);
  static const routeName = "/offers";

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
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
          'Offers',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
      ),

      body: OffersListWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add Offer',backgroundColor: AppColor.orange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
