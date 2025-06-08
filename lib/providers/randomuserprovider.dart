import 'package:flutter/cupertino.dart';
import 'package:flutter_apps/models/randomusermodel.dart';
import 'package:flutter_apps/services/randomuserservice.dart';

class RandomUserProvider extends ChangeNotifier
{
  RandomUserModel? randomUserModel;
  Future<void> fetchdata() async
  {
    randomUserModel = await RandomUserService.getdata();
    notifyListeners();
  }
}