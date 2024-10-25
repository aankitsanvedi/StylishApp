import 'package:app_first/View/Widgets/appBar_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  PreferredSize(preferredSize: Size.fromHeight(60.0), child: AppBarWidget()),
    );
  }
}