import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTreadingProductWidget extends StatefulWidget {
  const HomeTreadingProductWidget({super.key});

  @override
  State<HomeTreadingProductWidget> createState() => _HomeTreadingProductWidgetState();
}

class _HomeTreadingProductWidgetState extends State<HomeTreadingProductWidget> {
  @override
  Widget build(BuildContext context) {
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
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 124,
                              width: 170,
                              child: Image.asset(
                                'assets/image/watch.png',
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 5.0, top: 5),
                              child: Text(
                                'IWC Schaffhausen\n 2021 Pilot\'s Watch\n"SIHH 2019" 44mm',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                '1500',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            );
  }
}