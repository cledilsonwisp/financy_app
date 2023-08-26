import 'package:financy_app/src/features/auth/data/adapters/user_adapter.dart';
import 'package:financy_app/src/features/auth/interactor/services/auth_service.dart';
import 'package:financy_app/src/features/auth/interactor/states/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthSevice implements AuthService {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthSevice({required this.firebaseAuth});

  @override
  Future<AuthState> login(String email, String password) async {
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        final user = UserAdapter.fromFirebaseUser(result.user!);
        return LoggedAuthState(user);
      } else {
        return const LogoutedAuthState();
      }
    } catch (e) {
      return const LogoutedAuthState();
    }
  }

  @override
  Future<AuthState> logout() async {
    await firebaseAuth.signOut();
    return const LogoutedAuthState();
  }

  @override
  AuthState getUser() {
    final user = firebaseAuth.currentUser;
    if (user != null) {
      final userEntity = UserAdapter.fromFirebaseUser(user);
      return LoggedAuthState(userEntity);
    }
    return const LogoutedAuthState();
  }
}
