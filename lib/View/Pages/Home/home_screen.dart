import 'package:app_first/View/Widgets/appBar_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/home_DealDay_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/home_GroupProduct_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/home_OfferAd.dart';
import 'package:app_first/View/Pages/Home/Widget/home_RewardedAd_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/home_TreadingProduct_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/home_Treading_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/home_adDisSlider_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/home_itemList_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/searchBar_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: Colors.white,
      appBar:  PreferredSize(
          preferredSize: Size.fromHeight(60.0), child: AppBarWidget()),
      body: SingleChildScrollView(
        child: Column(
          children: [
             SearchBarWidget(),
             HomeGroupProductWidget(),
             SizedBox(
              height: 10,
            ),
             HomeAdDisSliderWidget(),
             HomeDealWidget(),
             HomeItemListWidget(),
             HomeOfferAd(),
             HomeRewardAdWidget(),
             HomeTreadingWidget(),
             HomeTreadingProductWidget(), 
          ],
        ),
      ),
    );
  }
}
