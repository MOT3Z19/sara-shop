import 'dart:convert';
import 'dart:io';
import 'package:hayaa_shop/controller/api/api_setting.dart';
import 'package:hayaa_shop/controller/api/helperapi.dart';
import 'package:hayaa_shop/controller/shared_pref/shared_pref.dart';
import 'package:hayaa_shop/model/user.dart';
import 'package:hayaa_shop/utils/apiresponse.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ApiAuthController with ApiHelper {
  Future<ApiResponse> login(
      {required String email, required String password}) async {
    Uri uri = Uri.parse(ApiSetting.login);
    var response = await http.post(uri, body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200 || response.statusCode == 400) {
      var jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        User user = User.fromJson(jsonResponse['object']);
        SharedPrefController().save(user: user);
      }
      return ApiResponse(jsonResponse['message'], jsonResponse['status']);
    }
    return ApiResponse('Something went wrong, Try Again', false);
  }

  Future<ApiResponse> register(User user) async{
    Uri uri = Uri.parse(ApiSetting.register);
    var response = await http.post(uri, body: {
      'full_name' : user.fullName,
      'email' : user.email,
      'password' : user.password,
      'gender': user.gender,
    });
    if (response.statusCode == 201 || response.statusCode == 400){
      var jsonResponse = jsonDecode(response.body);
      return ApiResponse(jsonResponse['message'], jsonResponse['status']);
    }
    return ApiResponse('Something went wrong, Try Again', false);
  }

  Future<ApiResponse> logout() async {
    String token =
        SharedPrefController().getValueFor<String>(key: PrefKeys.token.name) ??
            '';
    Uri uri = Uri.parse(ApiSetting.logout);
    var response = await http.get(uri, headers: {
      HttpHeaders.authorizationHeader: token,
      HttpHeaders.acceptHeader: 'application/json'
    });
    if (response.statusCode == 200 || response.statusCode == 401) {
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        return ApiResponse(jsonResponse['message'], jsonResponse['status']);
      }
      return ApiResponse('Logged out successfully', true);
    }
    return ApiResponse('Something went wrong, Try Again', false);
  }


}

class LoginController extends GetxController {
  Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('https://fakestoreapi.com/auth/login'),
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final user = User1.fromJson(responseBody);
      // Do something with the user data
      print(user.username);
      return true; // Login success

    } else {
      // Handle login error
      print('Login failed');
      return false; // Login failed

    }
  }
}
