import 'package:dio/dio.dart';
import 'package:flutter_apps/models/registermodel.dart';

class RegisterService {
  static Dio dio = Dio();

  static Future<RegisterModel> signupservice({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    try {
      Response response = await dio.post(
          "https://elsewedyteam.runasp.net/api/Register/AddUser",
          data: {
            "Name": name,
            "Email": email,
            "Phone": phone,
            "Password": password,
          });
      if (response.statusCode == 200) {
        return RegisterModel.fromjson(response.data);
      }
      else {
        throw Exception("Error");
      }
    }
    catch (ex) {
      throw Exception(ex);
    }
  }

  static Future<RegisterModel> loginservice({
    required String email,
    required String password,
  }) async {
    try {
      Response response = await dio.post(
          "https://elsewedyteam.runasp.net/api/Login/CheckUser",
          data: {
            "Email": email,
            "Password": password
          });
      if (response.statusCode == 200) {
        return RegisterModel.fromjson(response.data);
      }
      else {
        throw Exception("Error");
      }
    }
    catch (ex) {
      throw Exception(ex);
    }
  }
}