
import 'package:flutter/material.dart';
import 'package:resturant_app/screens/offers_screen/widgets/offers_list_widget.dart';

import '../../const/colors.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Offers',
          style: TextStyle(fontSize: 18, color: AppColor.primary),
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
