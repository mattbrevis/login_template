import 'package:login_template/pages/intro/signup_page.dart';
import 'package:login_template/pages/pages_menu/teste.dart';
import '../pages/intro/home_page.dart';
import '../pages/pages_menu/cadastros_page.dart';

final myRoutes = {
  CrudPage.routeName.toString(): (context) => const CrudPage(),
  HomePage.routeName.toString(): (context) => const HomePage(),
  SignUpPage.routeName.toString(): (context) => const SignUpPage(),
  TestePage.routeName.toString(): (context) => const TestePage(),
};
