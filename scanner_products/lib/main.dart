import 'package:flutter/material.dart';
import 'package:scanner_products/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Productos app',
      initialRoute: 'home',
      routes: {
        'flutter': (_) => const HomeFlutter(),
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen(),
      },
    );
  }
}
