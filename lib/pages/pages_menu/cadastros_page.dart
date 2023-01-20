import 'package:flutter/material.dart';


class CadastrosPage extends StatefulWidget {
  const CadastrosPage({Key? key}) : super(key: key);
  static const String routeName = '/cadastros';
  @override
  CadastrosPageState createState() => CadastrosPageState();
}

class CadastrosPageState extends State<CadastrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastros'),
      ),      
      body: Container(),
    );
  }
}
