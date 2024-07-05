import 'package:carrental/application/presentation/screens/auth/splash/splash.dart';
import 'package:carrental/application/presentation/screens/auth/view/login_view.dart';
import 'package:carrental/application/presentation/screens/auth/view/register.dart';
import 'package:carrental/application/presentation/screens/usersscreen/home.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Specify the initial route
      routes: {
        '/': (context) => SplashPageWrapper(), // Define the default route
        '/login': (context) => LoginViewWrapper(),
        '/home': (context) => homepage(),
        '/register': (context) => RegisterPageWrapper(),
      },
    );
  }
}
