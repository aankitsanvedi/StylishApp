import 'package:app_first/Utils/constant_color.dart';
import 'package:app_first/Utils/constant_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAdDisSliderWidget extends StatefulWidget {
  const HomeAdDisSliderWidget({super.key});

  @override
  State<HomeAdDisSliderWidget> createState() => _HomeAdDisSliderWidgetState();
}

class _HomeAdDisSliderWidgetState extends State<HomeAdDisSliderWidget> {
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "assets/images/slider.png"
        "https://picsum.photos/id/240/200/300",
    "https://picsum.photos/id/241/200/300",
    "https://picsum.photos/id/241/200/300",
  ];
  @override
  Widget build(BuildContext context) {

    
    return Column(
      children: [
        SizedBox(
              height: 280,
              width: double.infinity,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index % images.length;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 350,
                          width: double.infinity,
                          child: Image.asset('assets/image/slider.png'),
                        ),
                        const Positioned(
                          top: 70,
                          left: 35,
                          child: Text(
                            AppText.textDiscountPerc,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          top: 105,
                          left: 35,
                          child: Text(
                            AppText.textColor,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Positioned(
                          top: 160,
                          left: 35,
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                AppText.textShopbtn,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i <= 2; i++) buildIndicator(currentIndex == i)
              ],
            ),
      ],
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