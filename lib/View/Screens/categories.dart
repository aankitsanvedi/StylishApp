import 'package:app_first/Model/categaries.dart';
import 'package:app_first/Utils/constant_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key,     required this.currentCat,
});
  final String currentCat;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          catgories.length,
          (index) => Container(
            decoration: BoxDecoration(
              color:
                  currentCat == catgories[index] ? AppColor.primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(25),
              
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.only(right: 20),
            child: 
            Text(
              
              catgories[index],
              style: TextStyle(
                color: currentCat == catgories[index]
                    ? Colors.white
                    : Colors.grey.shade600,
              ),
            ),

            
          ),
        ),
      ),
    );
  }
}