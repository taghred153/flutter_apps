import 'package:flutter/material.dart';
import 'package:flutter_apps/screens/detailsproductscreen.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String name;
  final dynamic price;
  final String description;

  ProductWidget({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen(image: image, name: name, description: description, price: price)));
      },
    child: Card(
      shadowColor: Colors.grey,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              child: Image.network(
                image,
              ),
            ),
            const SizedBox(height: 5),
            Text(name),
            const SizedBox(height: 5),
            Text(
              "$price LE",
            ),
          ],
        ),
    )
    );
  }
}
