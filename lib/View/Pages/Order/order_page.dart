import 'package:app_first/View/Pages/Order/Widget/order_ItemDetails_Widget.dart';
import 'package:app_first/View/Pages/Order/Widget/order_Slider_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String currentCat = "All";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
              onTap: () {},
              child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.shopping_cart_outlined))),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [OrderSliderWidget(), OrderItemDetailsWidget()],
        ),
      ),
    );
  }
}
