import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';


class HomeItemListWidget extends StatefulWidget {
  const HomeItemListWidget({super.key});

  @override
  State<HomeItemListWidget> createState() => _HomeItemListWidgetState();
}

class _HomeItemListWidgetState extends State<HomeItemListWidget> {
  @override
  Widget build(BuildContext context) {
        double value = 3.5;

    return Container(
              color: Colors.white,
              height: 250,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 124,
                              width: 170,
                              child: Image.asset(
                                'assets/image/mask_groupp.png',
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 5.0, top: 5),
                              child: Text(
                                'Women Printed Kurta',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                'Neque porro quisquam est\nqui olorem ipsum quia',
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
                            RatingStars(
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
                              valueLabelMargin: const EdgeInsets.only(right: 8),
                              starOffColor: const Color(0xffe7e8ea),
                              starColor: Colors.yellow,
                              angle: 12,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            );
  }
}