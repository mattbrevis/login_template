import 'package:flutter/material.dart';

class MyCustomButton {
  MyCustomButton._();

  static final MyCustomButton _instance = MyCustomButton._();

  static MyCustomButton get instance => _instance;


  static ButtonStyle myCustomButtonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(224, 3, 19, 14),
      elevation: 10,
      foregroundColor: Colors.grey[500],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget myCustomButton(String title, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        onPressed: () {},
        style: myCustomButtonStyle(),
        child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 18.0),)
      ),
    );
  }
}
