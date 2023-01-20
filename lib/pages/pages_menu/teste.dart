import 'package:flutter/widgets.dart';

class TestePage extends StatelessWidget {
  const TestePage({Key? key}) : super(key: key);
  static const String routeName = '/pageone';
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Page one'));
  }
}
