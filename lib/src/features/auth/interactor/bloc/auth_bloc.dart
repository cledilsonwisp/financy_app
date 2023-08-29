import 'package:financy_app/src/features/auth/interactor/events/auth_event.dart';
import 'package:financy_app/src/features/auth/interactor/services/auth_service.dart';
import 'package:financy_app/src/features/auth/interactor/states/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService service;
  AuthBloc(this.service) : super(const LogoutedAuthState()) {
    on<LoginAuthEvent>((event, emit) => _loginAuthEvent);
    on<LogoutAuthEvent>((event, emit) => _logoutAuthEvent);
  }

  void _loginAuthEvent(LoginAuthEvent event, emit) async {
    emit(const LoadingAuthState());
    final newState = await service.login(
      event.email,
      event.password,
    );
    emit(newState);
  }

  void _logoutAuthEvent(LogoutAuthEvent event, emit) async {
    emit(const LoadingAuthState());
    await service.logout();
  }
}
