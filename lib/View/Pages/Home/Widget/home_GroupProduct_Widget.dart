import 'package:app_first/Utils/constant_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HomeGroupProductWidget extends StatelessWidget {
  const HomeGroupProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        AppText.textAllFeature,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                                    AppText.textSort,
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
                                    AppText.textFilter,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset('assets/image/filter.svg')
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
              width: double.infinity,
              height: 100,
              child: Card(
                margin: const EdgeInsets.only(left: 10),
                surfaceTintColor: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/image/icon1.png',
                                height: 70,
                                width: 70,
                              ),
                              const Text('Beauty')
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/image/icon2.png',
                                height: 70,
                                width: 70,
                              ),
                              const Text('Beauty')
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/image/icon3.png',
                                height: 70,
                                width: 70,
                              ),
                              const Text('Beauty')
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/image/icon4.png',
                                height: 70,
                                width: 70,
                              ),
                              const Text('Beauty')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ],
    );
            
  }
}