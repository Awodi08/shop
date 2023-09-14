import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GridView.count(
                // it disables the scroll functionality of the GridView
                // then it will scroll on the ListView of the home page
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 0.68,
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  _buildProductItem(
                    imageAsset: "assets/1.png",
                    productName: "Canvas",
                    productDescription: "Canvas called Shoe Gbengbe in high-class circles.",
                    price: "\$55",
                  ),
                  _buildProductItem(
                    imageAsset: "assets/2.png",
                    productName: "Female Hoodie",
                    productDescription: "Stylish and comfortable female hoodie.",
                    price: "\$65",
                  ),
                  _buildProductItem(
                    imageAsset: "assets/3.png",
                    productName: "Female Bag",
                    productDescription: "Chic and functional female bag.",
                    price: "\$45",
                  ),
                  _buildProductItem(
                    imageAsset: "assets/4.png",
                    productName: "Unisex Shoe",
                    productDescription: "Urban Wanderer: Versatile, gender-neutral canvas with urban flair.",
                    price: "\$75",
                  ),
                  _buildProductItem(
                    imageAsset: "assets/5.png",
                    productName: "Male Hoodie",
                    productDescription: "Rugged, refined male hoodie choice.",
                    price: "\$70",
                  ),
                  _buildProductItem(
                    imageAsset: "assets/6.png",
                    productName: "Female Bag 2",
                    productDescription: "Captivating and practical female bag.",
                    price: "\$50",
                  ),
                  _buildProductItem(
                    imageAsset: "assets/7.png",
                    productName: "Female Canvas",
                    productDescription: "Timeless craftsmanship for women.",
                    price: "\$60",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem({
    required String imageAsset,
    required String productName,
    required String productDescription,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFF4C53A5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "-50%",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
                imageAsset,
                height: 120,
                width: 120,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              productName,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF4C53A5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              productDescription,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
                Icon(
                  Icons.shopping_cart_checkout,
                  color: Color(0xFF4C53A5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
