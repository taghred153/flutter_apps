import 'package:flutter/material.dart';
import 'package:flutter_apps/models/productmodel.dart';
import 'package:flutter_apps/services/productservice.dart';

class ProductsProvider extends ChangeNotifier {
  ProductModel? productModel;
  Future<void> fetchdata() async {
    productModel = await ProductService.getdata();
    notifyListeners();
  }
}
