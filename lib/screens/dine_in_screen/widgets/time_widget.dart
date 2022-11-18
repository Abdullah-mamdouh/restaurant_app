
import 'package:flutter/material.dart';
import 'package:resturant_app/const/colors.dart';
import 'package:resturant_app/utils/widgets/divider_widget.dart';

import 'lable_widget.dart';

class TimeWidget extends StatefulWidget {
  TimeWidget({Key? key, required this.controller}) : super(key: key);
  TextEditingController? controller;
  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {

  TimeOfDay? time ;

  @override
  void initState() {
    time = TimeOfDay.now();
    widget.controller!.text = //DateFormat("HH:mm ").format(time).toString();//
     '${time!.hour}:${time!.minute} ${(time!.period.name).toUpperCase()}';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){
            getTime(context);
          },
          child: Container(
            //padding: EdgeInsets.all(16),
            width: w*0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${widget.controller!.text}',style: TextStyle(color: AppColor.primary),),
                    Icon(Icons.keyboard_arrow_down,color: AppColor.primary),
                  ],
                ),
                const SizedBox(height: 5,),
                Card(elevation:15,child: DividerWidget()),
              ],
            ),
          ),
        ),
      ],
    );
  }

  getTime(BuildContext context) async {

    TimeOfDay? timeOfDay = await showTimePicker(context: context, initialTime: TimeOfDay.now(),);
    print (timeOfDay);
    //if (timeOfDay != null && timeOfDay != this.time)
      setState(() {
        this.time = timeOfDay;
        widget.controller!.text = '${time!.hour}:${time!.minute} ${(time!.period.name).toUpperCase()}';
      });

  }
}
