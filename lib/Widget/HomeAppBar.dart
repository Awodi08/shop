import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final Color badgeColor;
  final EdgeInsetsGeometry padding;
  final Widget badgeContent;

  const Badge({
    Key? key,
    required this.child,
    required this.badgeColor,
    required this.padding,
    required this.badgeContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              color: badgeColor,
              shape: BoxShape.circle,
            ),
            constraints: BoxConstraints(
              minWidth: 20,
              minHeight: 20,
            ),
            child: Center(
              child: badgeContent,
            ),
          ),
        ),
      ],
    );
  }
}

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Awodi",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(6),
            badgeContent: Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context,"CartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
