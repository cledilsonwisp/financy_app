import 'package:financy_app/src/core/themes/app_themes.dart';
import 'package:financy_app/src/features/auth/ui/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812), // Tamanho base do design
      scaleByHeight: true,
    );
    return MaterialApp(
      theme: AppTheme.defaultTheme(),
      debugShowCheckedModeBanner: false,
      home: const SignUpPage(),
    );
  }
}
