
import 'package:flutter/material.dart';
import 'package:resturant_app/screens/dine_in_screen/widgets/lable_widget.dart';
import 'package:resturant_app/screens/dine_in_screen/widgets/textFeild_widget.dart';
import 'package:resturant_app/screens/dine_in_screen/widgets/time_widget.dart';
import 'package:resturant_app/utils/widgets/divider_widget.dart';
import 'package:resturant_app/utils/widgets/dropdown_button.dart';
import 'package:resturant_app/utils/widgets/switch_buton.dart';

import '../../const/colors.dart';

class DineInPage extends StatefulWidget {
  const DineInPage({Key? key}) : super(key: key);

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

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Dine-in',
          style: TextStyle(fontSize: 18, color: AppColor.primary),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lable(lable: 'Price (approx for tow'),
              //const SizedBox(height: 8,),
              TextFieldClass(controller: priceController, hintText: 'Enter Price'),

              const SizedBox(height: 15,),
              Lable(lable: 'Categories'),
              DropDownButtonWidget(items: ['Italian','Maxican']),

              const SizedBox(height: 10,),
              Lable(lable: 'Services'),
              DropDownButtonWidget(items: ['Pizza','Desert','Beverages','Sandwich']),

              const SizedBox(height: 15,),
              Lable(lable: 'Timing'),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TimeWidget( controller: startTimeController),
                  TimeWidget( controller: endTimeController),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Activate',
                        style: TextStyle(
                            fontSize: 16,color: AppColor.primary
                        ),
                      ),
                      SwitchButtonWidget(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              MaterialButton(
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 14),
                onPressed: () {},
                color: AppColor.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
