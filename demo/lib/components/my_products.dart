import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final String product_name;
  final String description;
  final int price;
  final String image;
  const ProductContainer(
      {required this.product_name,
      required this.description,
      required this.price,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 140,
      child: Card(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("images/" + image),
          )),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  product_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(description),
                Text(price.toString()),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
