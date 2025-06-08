import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget{
  final String image;
  final String name;
  final String description;
  final dynamic price;

  ProductDetailsScreen({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(image),
            SizedBox(height: 10,),
            Text(name,
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10,),
            Text('$price LE',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10,),
            Text(description),
          ],
        ),
      ),
    );
  }
}