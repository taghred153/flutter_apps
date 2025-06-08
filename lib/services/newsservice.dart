import 'package:dio/dio.dart';
import 'package:flutter_apps/models/newsmodel.dart';

class NewsService {
  static Dio dio = Dio();

  static Future<NewsModel> getdata() async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=f099defd78a04eaf9e02e55e44f6e179"
      );
      if (response.statusCode == 200) {
        return NewsModel.fromjson(response.data);
      } else {
        throw Exception("Code not 200");
      }
    } catch (e) {
      throw Exception("Error :$e");
    }
  }
}