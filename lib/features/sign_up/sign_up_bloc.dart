import 'package:bloc/bloc.dart';
import 'package:financy_app/features/sign_up/sign_up_event.dart';
import 'package:financy_app/features/sign_up/sign_up_state.dart';

class SignUpClass extends Bloc<SignUpEvent, SignUpState> {
  SignUpClass() : super(SignUpStartedState()) {
    on(_mapEventState);
  }
  void _mapEventState(SignUpEvent event, Emitter emit) async {
    if (event is SignUpLoginEvent) {
    } else if (event is SignUpRegisterEvent) {}
  }
}
