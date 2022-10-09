import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(66, 135, 245, 1),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [_PurpleBox(), _HeaderIcon(), this.child],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  SafeArea _HeaderIcon() {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

// Se crea la clase para el _PurpleBox
class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height * 0.40;
    return Container(
      width: double.infinity,
      height: size,
      color: const Color.fromRGBO(66, 135, 245, 1),
      // color: const Color.fromRGBO(157, 154, 241, 1),
    );
  }
}
