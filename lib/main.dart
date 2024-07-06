import 'package:carrental/application/presentation/screens/auth/splash/splash.dart';
import 'package:carrental/application/presentation/screens/auth/view/login_view.dart';
import 'package:carrental/application/presentation/screens/auth/view/onboarding.dart';
import 'package:carrental/application/presentation/screens/auth/view/register.dart';
import 'package:carrental/application/presentation/screens/usersscreen/carlist.dart';
import 'package:carrental/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:  const Color(0xfff263147),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Specify the initial route
      routes: {
        '/': (context) => const SplashPageWrapper(), // Define the default route
        '/login': (context) => const LoginViewWrapper(),
        '/home': (context) => const CarListScreen(),
        '/register': (context) => const RegisterPageWrapper(),
         '/onboarding': (context) => const OnboardingPage(),
      },
    );
  }
}
