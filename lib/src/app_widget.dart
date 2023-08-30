import 'dart:async';

import 'package:financy_app/src/core/themes/app_themes.dart';
import 'package:financy_app/src/features/auth/interactor/bloc/auth_bloc.dart';
import 'package:financy_app/src/features/auth/interactor/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = context.read<AuthBloc>().stream.listen((state) {
      if (state is LoggedAuthState) {
        Modular.to.navigate('/home');
      } else if (state is LogoutedAuthState) {
        Modular.to.navigate('/login');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812), // Tamanho base do design
      scaleByHeight: true,
    );
    return MaterialApp.router(
      theme: AppTheme.defaultTheme(),
      debugShowCheckedModeBanner: false,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
