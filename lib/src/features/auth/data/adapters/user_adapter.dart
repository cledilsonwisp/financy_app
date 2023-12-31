import 'package:financy_app/src/features/auth/interactor/entity/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserAdapter {
  static UserEntity fromFirebaseUser(User user) {
    return UserEntity(
      id: user.uid,
      email: user.email ?? '',
      name: user.displayName ?? '',
      token: '',
    );
  }
}
