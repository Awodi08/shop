import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Provide a fixed height to constrain the ListView
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    // use i variable to change pictures in the loop
                    "assets/$i.png",
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 8), // Add some space between image and text
                  Text(
                    getCategoryName(i),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  String getCategoryName(int index) {
    switch (index) {
      case 1:
        return "Canvas";
      case 2:
        return "Female Hoodie";
      case 3:
        return "Female Bag";
      case 4:
        return "Unisex Shoe";
      case 5:
        return "Male Hoodie";
      case 6:
        return "Female Bag 2";
      case 7:
        return "Female Canvas";
      default:
        return "Unknown";
    }
  }
}
