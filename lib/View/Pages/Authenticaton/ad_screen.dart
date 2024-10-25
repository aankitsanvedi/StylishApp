import 'package:app_first/Utils/constant_color.dart';
import 'package:app_first/Utils/constant_text.dart';
import 'package:app_first/View/Pages/Home/home_screen.dart';
import 'package:app_first/View/bot_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdScreen extends StatefulWidget {
  const AdScreen({super.key});

  @override
  State<AdScreen> createState() => _AdScreenState();
}

class _AdScreenState extends State<AdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/image/shopping.png"), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            AppText.textAd,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 34, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Text(
            AppText.textsubAd,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 20.0),
            child: Container(
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                height: 60,
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNav()));
                    },
                    child: const Text(
                      AppText.getStarted,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))),
          ),
        ],
      ),
    ));
  }
}
