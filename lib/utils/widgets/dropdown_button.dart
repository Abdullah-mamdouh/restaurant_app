
import 'package:flutter/material.dart';
import 'package:resturant_app/const/colors.dart';

class DropDownButtonWidget extends StatefulWidget {
  DropDownButtonWidget({Key? key, required this.items}) : super(key: key);
  List<String> items;
  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  late TextEditingController selectedValue = TextEditingController();
  @override
  void initState() {
    selectedValue.text = widget.items[0];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      alignedDropdown: true,
      //focusColor: constantColors.blackLight2,
      child: DropdownButton(

        borderRadius: BorderRadius.circular(20),
        value: selectedValue.text,
        dropdownColor: AppColor.orange,
        isExpanded: true,
        icon: Icon(Icons.keyboard_arrow_down,
          color: AppColor.primary,//constantColors.whiteColor,
        ),
        items: widget.items.map((items) {
          return DropdownMenuItem(
              value: items,
              child: Text(
                items,
                style: TextStyle(
                    color: AppColor.primary,fontSize: 16,fontWeight: FontWeight.w600
                ),
              ));
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            selectedValue.text = value!;
            print(selectedValue.text.toString());
          });
        },
      ),

    );;
  }
}
