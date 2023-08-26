sealed class AuthEvent {}

class LoginAuthEvent implements AuthEvent {
  final String email;
  final String password;

  LoginAuthEvent({required this.email, required this.password});
}

class Logout implements AuthEvent{
  
}
