
import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class RadioWidget extends StatefulWidget {
  RadioWidget({Key? key, required paymentOptionController, required this.index}) : super(key: key);
  TextEditingController? paymentOptionController;
  int index;
  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String _selectedOption = "PayPal";
  int indexOption = 0;
  List<String> paymentOptions = ['PayPal', 'Stripe'];

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: Radio(
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        focusColor: AppColor.orange,
        activeColor: AppColor.orange,
        value: widget.index,//int.parse(widget.paymentOptionController!.text),
        groupValue: indexOption,//int.parse(widget.paymentOptionController!.text),
        onChanged: (val) {
          setState(() {
            print(val.toString());
            indexOption = widget.index;
            widget.paymentOptionController!.text = val.toString();
            // indexOption = index;
            // _selectedOption = paymentOptions[indexOption];
          });
        },
      ),
    );
  }
}
