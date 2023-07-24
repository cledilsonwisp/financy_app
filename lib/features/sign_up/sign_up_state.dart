sealed class SignUpState {}

final class SignUpStartedState extends SignUpState {}

final class SignUpSuccessState extends SignUpState {}

final class SignUpLoadingState extends SignUpState {}

final class SignUpErrorState extends SignUpState {}
