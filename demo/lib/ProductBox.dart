import 'package:flutter/material.dart';
import 'package:demo/productsList.dart';

class ProductBox extends StatelessWidget {
  final String product_name;
  final String description;
  final int price;
  final String image;
  const ProductBox(
      {required this.product_name,
      required this.description,
      required this.price,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("images/" + image),
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    this.product_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.description),
                  Text("Price : " + this.price.toString()),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
