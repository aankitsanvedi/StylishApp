import 'package:app_first/Utils/constant_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderSliderWidget extends StatefulWidget {
  const OrderSliderWidget({super.key});

  @override
  State<OrderSliderWidget> createState() => _OrderSliderWidgetState();
}

class _OrderSliderWidgetState extends State<OrderSliderWidget> {
  int currentIndex = 0;
  final PageController controller = PageController();
  String currentCat = "All";

  List<String> images = [
    "assets/images/slider.png"
        "https://picsum.photos/id/240/200/300",
    "https://picsum.photos/id/241/200/300",
    "https://picsum.photos/id/241/200/300",
    "https://picsum.photos/id/241/200/300",
    "https://picsum.photos/id/241/200/300",
    "https://picsum.photos/id/241/200/300",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: SizedBox(
                height: 220,
                width: double.infinity,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index % images.length;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(
                      'assets/image/ad_slide.png',
                    );
                  },
                ),
              ),
            );
  }

   Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColor.indecatorcolorbg : Colors.grey,
        ),
      ),
    );
  }
}