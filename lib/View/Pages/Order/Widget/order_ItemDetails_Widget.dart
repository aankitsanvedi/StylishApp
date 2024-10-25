import 'package:app_first/Utils/constant_color.dart';
import 'package:app_first/Utils/constant_text.dart';
import 'package:app_first/View/Screens/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderItemDetailsWidget extends StatefulWidget {
  const OrderItemDetailsWidget({super.key});

  @override
  State<OrderItemDetailsWidget> createState() => _OrderItemDetailsWidgetState();
}

class _OrderItemDetailsWidgetState extends State<OrderItemDetailsWidget> {
  String shoesSize = '';
  String currentCat = "All";
  bool size7UK = true, size8UK = false, size9UK = false, size10UK = true;

  @override
  Widget build(BuildContext context) {
    double value = 3.5;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Size: ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      '7UK',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ChoiceChip(
                        label: const Text('6UK'),
                        selected: (shoesSize == '6UK') ? true : false,
                        selectedColor: AppColor.primaryColor,
                        onSelected: (bool value) {
                          setState(() {
                            shoesSize = '6UK';
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ChoiceChip(
                        label: const Text('7UK'),
                        selected: (shoesSize == '7UK') ? true : false,
                        selectedColor: AppColor.primaryColor,
                        onSelected: (bool value) {
                          setState(() {
                            shoesSize = '7UK';
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ChoiceChip(
                        label: const Text('8UK'),
                        selected: (shoesSize == '8UK') ? true : false,
                        selectedColor: AppColor.primaryColor,
                        onSelected: (bool value) {
                          setState(() {
                            shoesSize = '8UK';
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ChoiceChip(
                        label: const Text('9UK'),
                        selected: (shoesSize == '9UK') ? true : false,
                        selectedColor: AppColor.primaryColor,
                        onSelected: (bool value) {
                          setState(() {
                            shoesSize = '9UK';
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ChoiceChip(
                        label: const Text('10UK'),
                        selected: (shoesSize == '10UK') ? true : false,
                        selectedColor: AppColor.primaryColor,
                        onSelected: (bool value) {
                          setState(() {
                            shoesSize = '10UK';
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'NIke Sneakers',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text('Vision Alta Men’s Shoes Size (All Colours)'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: FivePointedStar(
                            selectedColor: Colors.yellow,
                            count: 5,
                            onChange: (count) {},
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '56890',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        Text(
                          '2999',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('1,500'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '50% Off',
                          style: TextStyle(
                              color: AppColor.primaryColor, fontSize: 14),
                        )
                      ],
                    ),
                    const Text(
                      'Product Details',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 15,
                              ),
                              label: const Text(
                                'Nearest Store',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.lock,
                                color: Colors.grey,
                                size: 15,
                              ),
                              label: const Text(
                                'VIP',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.loop,
                                color: Colors.grey,
                                size: 15,
                              ),
                              label: const Text(
                                'Return Policy',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              AppText.textGoToCard,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              AppText.textBuyNow,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Card(
                      color: AppColor.cardColor,
                      child: ListTile(
                        title: Text(
                          AppText.textDelivery,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              '1 With In Hour',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 21),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.visibility,
                                color: Colors.black,
                                size: 15,
                              ),
                              label: const Text(
                                'View Similer',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              )),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.compare,
                                color: Colors.black,
                                size: 15,
                              ),
                              label: const Text(
                                'Add To Compare',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        'Similar To',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '282+ Iteams',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Row(
                            children: [
                              Card(
                                surfaceTintColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Sort',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SvgPicture.asset('assets/image/sort.svg')
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                surfaceTintColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Filter',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SvgPicture.asset(
                                          'assets/image/filter.svg')
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 124,
                                width: 190,
                                child: Image.asset(
                                  'assets/image/ad_slide.png',
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5.0, top: 5),
                                child: Text(
                                  'NIke Sneakers',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  'Nike Air Jordan Retro 1 Low\nMystic Black',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  '1500',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: RatingStars(
                                  axis: Axis.horizontal,
                                  value: value,
                                  onValueChanged: (v) {
                                    //
                                    setState(() {
                                      value = v;
                                    });
                                  },
                                  starCount: 5,
                                  starSize: 20,
                                  valueLabelColor: const Color(0xff9b9b9b),
                                  valueLabelTextStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                  valueLabelRadius: 10,
                                  maxValue: 5,
                                  starSpacing: 2,
                                  maxValueVisibility: true,
                                  valueLabelVisibility: true,
                                  animationDuration:
                                      const Duration(milliseconds: 1000),
                                  valueLabelPadding: const EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 8),
                                  valueLabelMargin:
                                      const EdgeInsets.only(right: 8),
                                  starOffColor: const Color(0xffe7e8ea),
                                  starColor: Colors.yellow,
                                  angle: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
