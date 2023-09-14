import 'package:flutter/material.dart';
import 'package:shop/Widget/CategoriesWidget.dart';
import 'package:shop/Widget/HomeAppBar.dart';
import 'package:shop/Widget/ItemsWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // temporary height
           // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [

                // search Widget
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search here...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),

                // Categories
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),

                // Categories Widget
                CategoriesWidget(),

                // Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text("Best Selling", style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                  ),
                ),

                // Items Widget             
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
  items: <Widget>[
    Icon(Icons.home, color: Colors.white),
    Icon(Icons.shopping_cart, color: Colors.white),
    Icon(Icons.list, color: Colors.white),
  ],
  index: 0,
  height: 60,
  color: Color(0xFF4C53A5),
  backgroundColor: Colors.transparent,
  buttonBackgroundColor: Color(0xFF4C53A5),
  animationCurve: Curves.easeInOut,
  animationDuration: Duration(milliseconds: 300),
  onTap: (index) {
    // Handle navigation item tap
  },
),

    );
  }
}
