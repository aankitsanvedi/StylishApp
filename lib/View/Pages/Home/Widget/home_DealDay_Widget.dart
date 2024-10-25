import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDealWidget extends StatefulWidget {
  const HomeDealWidget({super.key});

  @override
  State<HomeDealWidget> createState() => _HomeDealWidgetState();
}

class _HomeDealWidgetState extends State<HomeDealWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue[400],
                child: ListTile(
                  title: const Text(
                    'Deal Of The Day',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '22h 55m 20s remaining',
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
     ), );
            
  }
}