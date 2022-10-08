import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  const CardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: _createCardShape(),
        child: child,
      ),
    );
  }

  BoxDecoration _createCardShape() =>
      BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 0,
          offset: Offset(0, 10),
        )
      ]);
}
