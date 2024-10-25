import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
              child: Container(
                color: Colors.white,
                child: TextField(
                  // onChanged: onQueryChanged,
                  decoration: InputDecoration(
                    labelText: 'Search Any Product',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.mic)),
                  ),
                ),
              ),
            );
  }
}