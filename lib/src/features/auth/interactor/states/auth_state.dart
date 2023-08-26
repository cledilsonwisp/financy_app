import 'package:financy_app/src/features/auth/interactor/entity/user_entity.dart';

sealed class AuthState {
  const AuthState();
}

final class LoggedAuthState extends AuthState {
  final UserEntity user;

  const LoggedAuthState(this.user);
}

final class LogoutedAuthState extends AuthState {
  const LogoutedAuthState();
}

final class LoadingAuthState extends AuthState {
  const LoadingAuthState();
}
