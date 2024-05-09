import 'package:flutter/material.dart';

// features
import 'package:apps_user/src/features/login/email/login_email_screen.dart';
import 'package:apps_user/src/features/login/social/login_social_screen.dart';

// router
import 'package:apps_user/src/router/app_router.dart';

void main() {
  runApp(
    const _App(),
    /*
      MaterialApp(
        // home 화면
        // home: HomeScreen(),
        // 찜 화면
        home: FavoriteScreen(),
      )

     */
  );
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'nanum',
      ),
      debugShowCheckedModeBanner: false,
      home: _buildHomeScreen(),
      // home: HomeScreen(),
      // home: FavoriteScreen(),
      // home: LoginScreen(),
    );
  }
}

Widget _buildHomeScreen() {
  // 화면 이동
  String moveScreen = 'so';

  switch (moveScreen) {
    case 'soc':
      return const LoginSocialScreen();
    // case 'e':
    //   return const LoginEmailScreen();
    default:
      return const AppRouter();
  }
}


