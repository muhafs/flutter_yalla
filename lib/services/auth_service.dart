import 'dart:convert';
import 'package:yalla/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  //! BASE URL
  // final String baseURL = 'https://yalla-backend.test/api'; // connect to Server Backend (not exist yet)
  final String baseURL =
      'http://192.168.1.103:8000/api'; // connect to Local Backend

  //! REGISTER
  Future<UserModel> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    var response = await http.post(
      Uri.parse('$baseURL/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'username': username,
        'email': email,
        'password': password,
      }),
    );

    // ignore: avoid_print
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];

      var userData = data['user'];
      userData['token'] = 'Bearer ${data["access_token"]}';

      UserModel user = UserModel.fromJson(userData);

      return user;
    } else {
      throw Exception('Register Faild');
    }
  }

  //! LOGIN
  Future<UserModel> login({
    String? email,
    String? password,
  }) async {
    var response = await http.post(
      Uri.parse('$baseURL/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    // ignore: avoid_print
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];

      var userData = data['user'];
      userData['token'] = 'Bearer ${data["access_token"]}';

      UserModel user = UserModel.fromJson(userData);

      return user;
    } else {
      throw Exception('Login Faild');
    }
  }

  //! LOGOUT
}
