import 'package:flutter/material.dart';

class MyCustomButton {
  
  ButtonStyle myCustomButtonStyle() {
    return ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(224, 3, 19, 14),
        elevation: 10,
        foregroundColor: Colors.grey[500],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );
  }
}
