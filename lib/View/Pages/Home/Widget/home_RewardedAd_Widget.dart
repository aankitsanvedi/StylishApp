import 'package:app_first/Utils/constant_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRewardAdWidget extends StatefulWidget {
  const HomeRewardAdWidget({super.key});

  @override
  State<HomeRewardAdWidget> createState() => _HomeRewardAdWidgetState();
}

class _HomeRewardAdWidgetState extends State<HomeRewardAdWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Image.asset('assets/image/backgroundi.png'),
                  ),
                  Positioned(
                      child: Image.asset(
                    'assets/image/line.png',
                    height: 213,
                  )),
                  Positioned(
                      child: Image.asset(
                    'assets/image/star.png',
                    height: 213,
                    width: 135,
                  )),
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Image.asset('assets/image/shoes.png', height: 150),
                  )),
                  const Positioned(
                    top: 50,
                    left: 180,
                    child: Text(
                      'Flat and Heals',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                  const Positioned(
                    top: 90,
                    left: 140,
                    child: Text(
                      'Stand a chance to get rewarded',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 200,
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.primaryColor),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Shop',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
}