import 'package:app_first/Utils/constant_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTreadingWidget extends StatefulWidget {
  const HomeTreadingWidget({super.key});

  @override
  State<HomeTreadingWidget> createState() => _HomeTreadingWidgetState();
}

class _HomeTreadingWidgetState extends State<HomeTreadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Card(
                color: AppColor.indecatorcolorbg,
                child: ListTile(
                  title: const Text(
                    'Treading Product',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Last Date 29/02/24',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            );
  }
}