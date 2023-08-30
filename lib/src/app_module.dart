import 'package:financy_app/src/features/auth/data/services/firebase_auth_service.dart';
import 'package:financy_app/src/features/auth/interactor/bloc/auth_bloc.dart';
import 'package:financy_app/src/features/auth/interactor/services/auth_service.dart';
import 'package:financy_app/src/features/auth/ui/login_page.dart';
import 'package:financy_app/src/features/auth/ui/sign_up_page.dart';
import 'package:financy_app/src/features/home/ui/home_page.dart';
import 'package:financy_app/src/features/onboarding/ui/onboarding_page.dart';
import 'package:financy_app/src/features/splash/ui/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.instance(FirebaseAuth.instance),
        Bind.factory<AuthService>((i) => FirebaseAuthSevice(firebaseAuth: i())),
        BlocBind.singleton((i) => AuthBloc(i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const SplashPage()),
        ChildRoute('/onboarding', child: (_, __) => const OnboardingPage()),
        ChildRoute('/login', child: (_, __) => const LoginPage()),
        ChildRoute('/sign', child: (_, __) => const SignUpPage()),
        ChildRoute('/home', child: (_, __) => const HomePage())
      ];
}
