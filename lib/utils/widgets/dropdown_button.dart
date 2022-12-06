import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      alignedDropdown: false,
      //focusColor: constantColors.blackLight2,
      child: DropdownButton(
        //borderRadius: BorderRadius.circular(20),
        value: selectedValue.text,
        //dropdownColor: AppColor.orange,
        isExpanded: true,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: AppColor.primary, //constantColors.whiteColor,
        ),
        items: widget.items.map((items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            selectedValue.text = value!;
            print(selectedValue.text.toString());
          });
        },
      ),
    );

  }
}
