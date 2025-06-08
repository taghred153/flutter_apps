import 'package:flutter/material.dart';
import 'package:flutter_apps/providers/productprovider.dart';
import 'package:flutter_apps/widgets/productwidget.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shop App",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: Consumer<ProductsProvider>(
        builder: (context, value, child) {
          var productsModel = value.productModel;
          if (productsModel == null) {
            value.fetchdata();
            return const Center(child: CircularProgressIndicator());
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 4,
              ),
              itemBuilder:(context, index) {
                var product = productsModel.products[index];
                return ProductWidget(
                    image:product['image']?? "Not Found Image",
                    name: product['title'],
                    price: product['price'],
                    description: product['description']
                );
              },
              itemCount: productsModel.products.length,
            );
          }
        },
      ),
    );
  }
}
