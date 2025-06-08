import 'package:dio/dio.dart';
import 'package:flutter_apps/models/productmodel.dart';

class ProductService {
  static Dio dio = Dio();

  static Future<ProductModel> getdata() async {
    try {
      Response response = await dio.get(
          "https://dummyjson.com/products"
      );
      if (response.statusCode == 200) {
        return ProductModel.fromJson(response.data);
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception("Error :$e");
    }
  }
}