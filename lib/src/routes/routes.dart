import 'package:cells/src/screens/auth/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/splash_screen.dart';

GoRouter goRouter = GoRouter(
  initialLocation: "/splash",
  routes: [
    GoRoute(
      path: "/splash",
      pageBuilder: (context, pageBuilder) {
        return const MaterialPage(
          child: SplashScreen(),
        );
      },
    ),
    GoRoute(
      path: "/auth",
      pageBuilder: (context, pageBuilder) {
        return CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.ease;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return FadeTransition(
              opacity: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 750),
          child: const AuthScreen(),
        );
      },
    ),
    GoRoute(
      path: "/login",
      pageBuilder: (context, pageBuilder) {
        return CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 750),
          child: const LoginScreen(),
        );
      },
    ),
    GoRoute(
      path: "/signup",
      pageBuilder: (context, pageBuilder) {
        return CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 750),
          child: const SignupScreen(),
        );
      },
    )
  ],
);
