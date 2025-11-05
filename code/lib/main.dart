import 'package:flutter/material.dart';
import 'ui/features/splash/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookReader App',
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
