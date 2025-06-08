import 'package:flutter/cupertino.dart';
import 'package:flutter_apps/models/newsmodel.dart';
import 'package:flutter_apps/services/newsservice.dart';

class NewsProvider extends ChangeNotifier {
  NewsModel? newsModel;
  Future<void> fetchdata() async {
    newsModel= await NewsService.getdata();
    notifyListeners();
  }
}