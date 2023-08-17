import 'package:financy_app/src/features/auth/interactor/entity/user_model.dart';

abstract interface class AuthService {
  Future<UserModel> signUp(
      {String? name, required String email, required String password});
  Future signIn();
}
