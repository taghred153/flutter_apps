import 'package:dio/dio.dart';
import 'package:flutter_apps/models/randomusermodel.dart';

class RandomUserService
{
  static Dio dio = Dio();
  static Future<RandomUserModel> getdata() async
  {
    try
        {
          Response response = await dio.get("https://randomuser.me/api/?results=20");
          if (response.statusCode == 200)
            {
              return RandomUserModel.fromjson(response.data);
            }
          else
            {
              throw Exception("Error");
            }
        }
        catch(ex)
    {
      throw Exception(ex);
    }
  }
}