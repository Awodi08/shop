import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF4C53A5),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back when the icon is tapped
                  },
                ),
                SizedBox(width: 10),
                Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Your Cart Items'),
            ),
          ),
        ],
      ),
    );
  }
}
