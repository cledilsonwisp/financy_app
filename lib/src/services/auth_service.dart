import 'package:financy_app/src/models/user_model.dart';

abstract interface class AuthService {
  Future<UserModel> signUp(
      {String? name, required String email, required String password});
  Future signIn();
}
