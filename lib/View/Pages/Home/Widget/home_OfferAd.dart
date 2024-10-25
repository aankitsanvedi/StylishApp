import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeOfferAd extends StatefulWidget {
  const HomeOfferAd({super.key});

  @override
  State<HomeOfferAd> createState() => _HomeOfferAdState();
}

class _HomeOfferAdState extends State<HomeOfferAd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Image.asset(
                    'assets/image/offer.png',
                    width: 75,
                    height: 60,
                  ),
                  title: Row(
                    children: [
                      const Text('Special Offer'),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/image/emoji.png',
                        height: 20,
                        width: 20,
                      )
                    ],
                  ),
                  subtitle: const Text(
                    'We make sure you get the\noffer you need at best prices',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            );
  }
}