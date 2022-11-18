
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../utils/widgets/dropdown_button.dart';
import '../../utils/widgets/switch_buton.dart';
import '../dine_in_screen/widgets/lable_widget.dart';
import '../dine_in_screen/widgets/textFeild_widget.dart';
import '../dine_in_screen/widgets/time_widget.dart';

class AddingRestaurant extends StatefulWidget {
  const AddingRestaurant({Key? key}) : super(key: key);

  @override
  State<AddingRestaurant> createState() => _AddingRestaurantState();
}

class _AddingRestaurantState extends State<AddingRestaurant> {

  final restNameController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Add Restaurant',
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
              TextFieldClass(controller: restNameController, hintText: 'Enter Price'),

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
              const SizedBox(height: 15,),

              Lable(lable: 'Description'),
              TextFieldClass(controller: restNameController, hintText: 'Enter description'),

              const SizedBox(height: 20,),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
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
