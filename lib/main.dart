import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'screens/onboarding/components/body_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      // iniciar ruta
      initialRoute: '/',
      routes: {
        '/': (context) => const BodyBoarding(),
        // '/second': (context) => const Login(),
      },
    );
  }
}
