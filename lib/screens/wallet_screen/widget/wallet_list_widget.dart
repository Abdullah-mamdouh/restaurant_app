

import 'package:flutter/material.dart';

import '../../../const/colors.dart';
import '../../../utils/helper.dart';
import 'wallet_card_widget.dart';

class WalletListWidget extends StatefulWidget {
  const WalletListWidget({Key? key}) : super(key: key);

  @override
  State<WalletListWidget> createState() => _WalletListWidgetState();
}

class _WalletListWidgetState extends State<WalletListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        //physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          //final hotel = hotelsList[index];
          return WalletCardWidget();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 5,
        ),
        itemCount: 10);
  }
}
