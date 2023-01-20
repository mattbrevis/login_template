
import '../routes/routes.dart';
import '../widget/theme.dart';
import 'package:flutter/material.dart';


import 'pages/intro/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyProject',
      theme: ThemeData(
        primarySwatch: CustomsColors.customBlack,
        
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: myRoutes,
    );
  }
}
