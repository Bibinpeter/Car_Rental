import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:carrental/application/presentation/screens/auth/auth_bloc/bloc/auth_bloc.dart';
import 'package:carrental/application/presentation/screens/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPageWrapper extends StatelessWidget {
  const SplashPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(CheckLoginStatusEvent()),
      child: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (state is Unauthenticated) {
            Navigator.pushReplacementNamed(context, '/onboarding');
          }
        },
        child: AnimatedSplashScreen(
          splash: Image.asset('assets/images/splashcar.png'),
          splashIconSize: 350,
          nextScreen: LoginPage(),
          splashTransition: SplashTransition.scaleTransition,
          duration: 2000,
        ));
  }
}
