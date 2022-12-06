
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'request_card_widget.dart';

class RequestsListWidget extends StatefulWidget {
  const RequestsListWidget({Key? key}) : super(key: key);

  @override
  State<RequestsListWidget> createState() => _RequestsListWidgetState();
}

class _RequestsListWidgetState extends State<RequestsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:13.w, vertical: 13.h),
      child: Container(
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return RequestCardWidget();
          },
          separatorBuilder: (context, index) =>  SizedBox(
            height: 10.h,
          ),
        ),
      ),
    );
  }
}
