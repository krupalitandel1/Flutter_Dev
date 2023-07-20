import 'package:flutter/material.dart';
import 'package:demo/components/my_products.dart';
import 'package:demo/ProductBox.dart';

//making the class from that we can create the to store different
class Product {
  final String product_name;
  final String description;
  final int price;
  final String image;

  //making the constructor for the following class
  Product(this.product_name, this.description, this.price, this.image);

  static List<Product> getProducts() {
//list to store the result
    List<Product> items = <Product>[];
    items.add(Product(
        "Pixel Art",
        "Pixel art is a form of digital art that utilizes small, square-shaped pixels as the building blocks for creating images.",
        3000,
        "image1.png"));
    items.add(Product(
        "Night Sky",
        "Night sky art refers to artistic representations of the nighttime sky, typically depicting celestial objects such as stars, the moon, etc  ",
        4000,
        "image2.png"));
    items.add(Product(
        "Mountains",
        "The mountains, majestic and grand, stand as timeless sentinels reaching for the heavens.",
        5000,
        "image3.png"));
    items.add(Product(
        "Snowy Mountains",
        "In the realm of the snowy mountains, nature paints a pristine masterpiece of ethereal beauty. ",
        6000,
        "image4.png"));
    items.add(Product(
        "Bridge Art",
        "Bridge art weaves a captivating tapestry that connects the tangible and the intangible, the earthly and the ethereal.",
        2000,
        "image5.png"));
    items.add(Product(
        "Factory Art",
        "Factory art transforms the industrial landscape into a mesmerizing symphony of creativity and imagination.",
        5000,
        "image6.png"));
    items.add(Product(
        "Camp Art",
        "Camp art embraces the whimsical, the extravagant, and the delightfully exaggerated. ",
        5000,
        "image7.png"));
    return items;
  }
}

class ProductList extends StatelessWidget {
  //getting the list of the products
  final items = Product.getProducts();
  ProductList({Key? key}) : super(key: key);
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductContainer(
                  product_name: items[index].product_name,
                  description: items[index].description,
                  price: items[index].price,
                  image: items[index].image),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductBox(
                            product_name: items[index].product_name,
                            description: items[index].description,
                            price: items[index].price,
                            image: items[index].image,
                          )),
                );
              },
            );
          }),
    );
  }
}
