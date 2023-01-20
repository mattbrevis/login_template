import 'package:flutter/material.dart';
import 'package:login_template/pages/pages_menu/cadastros_page.dart';
import 'package:login_template/pages/pages_menu/teste.dart';
    
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = '/home';
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  _changeScreen(int i){
      setState(() {
      _selectedIndex = i;        
      });
  }
  Widget bodyHomePage(BuildContext context){
    
    return _selectedIndex==0? const TestePage() : const CrudPage();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: bodyHomePage(context),
      bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
      ],
      currentIndex: _selectedIndex,
      onTap: ((value) {
        _changeScreen(value);
      }
    )),
    );
  }
}