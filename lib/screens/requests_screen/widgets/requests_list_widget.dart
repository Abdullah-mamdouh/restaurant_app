
import 'package:flutter/material.dart';

import 'request_card_widget.dart';

class RequestsListWidget extends StatefulWidget {
  const RequestsListWidget({Key? key}) : super(key: key);

  @override
  State<RequestsListWidget> createState() => _RequestsListWidgetState();
}

class _RequestsListWidgetState extends State<RequestsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return RequestCardWidget();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
      ),
    );
  }
}
