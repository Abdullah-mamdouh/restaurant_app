import 'package:flutter/material.dart';
import 'package:resturant_app/screens/offers_screen/widgets/offer_card_widget.dart';

class OffersListWidget extends StatefulWidget {
  const OffersListWidget({Key? key}) : super(key: key);

  @override
  State<OffersListWidget> createState() => _OffersListWidgetState();
}

class _OffersListWidgetState extends State<OffersListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return OfferCardWidget();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
      ),
    );
  }
}
