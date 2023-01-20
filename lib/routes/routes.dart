

import 'package:login_template/pages/intro/signup_page.dart';
import '../pages/intro/home_page.dart';
import '../pages/pages_menu/cadastros_page.dart';

final myRoutes ={ CadastrosPage.routeName.toString() : (context) => const CadastrosPage(),
HomePage.routeName.toString() : (context)=> const HomePage(),
SignUpPage.routeName.toString() : (context)=> const SignUpPage(),
};
