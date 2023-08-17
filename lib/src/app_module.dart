import 'package:financy_app/src/features/auth/ui/login_page.dart';
import 'package:financy_app/src/features/auth/ui/sign_up_page.dart';
import 'package:financy_app/src/features/home/ui/home_page.dart';
import 'package:financy_app/src/features/onboarding/ui/onboarding_page.dart';
import 'package:financy_app/src/features/splash/ui/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    ChildRoute('/', child: (_) => const SplashPage());
    ChildRoute('/onboarding', child: (_) => const OnboardingPage());
    ChildRoute('/login', child: (_) => const LoginPage());
    ChildRoute('/sign', child: (_) => const SignUpPage());
    ChildRoute('/plash', child: (_) => const HomePage());
    super.routes(r);
  }
}
