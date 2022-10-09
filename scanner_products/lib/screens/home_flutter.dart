import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scanner_products/screens/screens.dart';

class HomeFlutter extends StatefulWidget {
  const HomeFlutter({super.key});

  @override
  State<HomeFlutter> createState() => _HomeFlutterState();
}

class _HomeFlutterState extends State<HomeFlutter> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    Timer(const Duration(seconds: 3), openFlutter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(157, 154, 241, 1),
      // backgroundColor: const Color.fromRGBO(66, 135, 245, 1),

      body: Center(
          child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          'assets/flutter1.png',
        ))),
      )),
    );
  }

  void openFlutter() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
