import 'package:app_first/View/Widgets/appBar_Widget.dart';
import 'package:app_first/View/Pages/Home/Widget/searchBar_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({super.key});

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(60.0), child: AppBarWidget()),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBarWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '52,082+ Iteams',
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MasonryGridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                itemCount: 100,
                itemBuilder: (context, index) {
                  double ht = ((index % 4) + 4) * 80;
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/image/watch.png',
                        height: ht,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
