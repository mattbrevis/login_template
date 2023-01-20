import 'package:flutter/material.dart';


class CrudPage extends StatefulWidget {
  const CrudPage({Key? key}) : super(key: key);
  static const String routeName = '/crud';
  @override
  CrudPageState createState() => CrudPageState();
}

class CrudPageState extends State<CrudPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Page two'),);
  }
}
