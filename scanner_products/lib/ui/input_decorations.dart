import 'package:flutter/material.dart';

// se cre la call para centralizar todo los inputs
class InputDecorations {
  static InputDecoration authInputDecoration({
    required String hinText,
    required String labelText,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(255, 242, 243, 245), width: 2)),
      hintText: hinText,
      labelText: labelText,
      labelStyle: const TextStyle(
          fontSize: 18, color: Color.fromARGB(255, 242, 243, 245)),
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: const Color.fromARGB(255, 242, 243, 245))
          : null,
    );
  }
}
