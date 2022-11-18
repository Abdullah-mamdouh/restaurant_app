
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/utils/widgets/switch_buton.dart';
import 'package:resturant_app/utils/widgets/divider_widget.dart';

import '../../const/colors.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 15,color: AppColor.primary
          ),
        ),
        title: Text(
          'Your Products',
          style: TextStyle(
            fontSize: 18,color: AppColor.primary
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/real/pizza2.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pesto Basil Pizza',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.primary),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Atlantic salman served',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.secondary),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$30.00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.orange),
                                  ),
                                  const SizedBox(
                                    width: 20,

                                  ),
                                  Text(
                                    '\$40.00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.lineThrough,
                                        color: AppColor.primary),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'View Sized and Addons',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.orange),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    DividerWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            onPressed: (){},
                            child: Row(
                              children: [
                                Icon(Icons.delete_outline_outlined, size: 20,color: AppColor.orange,),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Delete',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.secondary),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.secondary),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Publish',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.secondary),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SwitchButtonWidget(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add Order',backgroundColor: AppColor.orange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
