import 'package:flutter/material.dart';
import 'package:yalla/models/user_model.dart';
import 'package:yalla/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;

      return true;
    } catch (e) {
      // ignore: avoid_print
      print(e);

      return false;
    }
  }
}
