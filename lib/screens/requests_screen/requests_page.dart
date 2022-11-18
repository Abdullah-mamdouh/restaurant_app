import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/screens/requests_screen/widgets/request_card_widget.dart';
import 'package:resturant_app/screens/requests_screen/widgets/requests_list_widget.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';
import '../../utils/widgets/divider_widget.dart';

class RequestsPage extends StatefulWidget {
  const RequestsPage({Key? key}) : super(key: key);

  @override
  State<RequestsPage> createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Dine-in Requests',
          style: TextStyle(fontSize: 18, color: AppColor.primary),
        ),
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: AppColor.secondary,
          labelColor: AppColor.orange,
          indicatorColor: AppColor.orange,
          isScrollable: false,
          tabs: [
            Tab(
              text: 'Upcoming',
            ),

            Tab(
              text: 'History',
            ),
          ],
          controller: _tabController,
          //indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: [
            RequestsListWidget(),
            Container(),
          ],
      ),
    );
  }
}
