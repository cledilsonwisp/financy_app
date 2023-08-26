import 'package:financy_app/src/features/auth/ui/login_page.dart';
import 'package:financy_app/src/features/auth/ui/sign_up_page.dart';
import 'package:financy_app/src/features/home/ui/home_page.dart';
import 'package:financy_app/src/features/onboarding/ui/onboarding_page.dart';
import 'package:financy_app/src/features/splash/ui/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const SplashPage()),
        ChildRoute('/onboarding', child: (_, __) => const OnboardingPage()),
        ChildRoute('/login', child: (_, __) => const LoginPage()),
        ChildRoute('/sign', child: (_, __) => const SignUpPage()),
        ChildRoute('/home', child: (_, __) => const HomePage())
      ];
}
