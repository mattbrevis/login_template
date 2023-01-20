import 'package:flutter/material.dart';
import '../../models/usuario_model.dart';
import 'home_page.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  bool sending = false;
  bool isChecked = false;
  UsuarioModel userLogin = UsuarioModel();

  Widget _entryField(
      String title, bool isPassword, TextEditingController controller) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: controller,
              obscureText: isPassword,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.next,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.5, color: Colors.grey)),
              ))
        ],
      ),
    );
  }

  Widget createAccountButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(224, 3, 19, 14),
          elevation: 10,
          foregroundColor: Colors.grey[500],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'Create account',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () {
          Navigator.pushNamed(context, SignUpPage.routeName);
        },
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(225, 20, 200, 150),
          elevation: 10,
          foregroundColor: Colors.grey[500],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: sending
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white))
            : const Text(
                'LOGIN',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
        onPressed: () {
          Navigator.pushNamed(context, HomePage.routeName);
        },
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Usuário", false, usuarioController),
        _entryField("Senha", true, senhaController),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Checkbox(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.black;
                  }
                  return Colors.grey;
                }),
                checkColor: Colors.white,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Text('Remember me')),
              const Text('Forgot my password',
                  style: TextStyle(
                      fontStyle: FontStyle.normal, color: Colors.blue))
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SizedBox(
      height: height,
      width: width,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * .25),
              const Text(
                'Welcome to my project template :)',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 30),
              _emailPasswordWidget(),
              const SizedBox(height: 15),
              _loginButton(context),
              const SizedBox(height: 15),
              createAccountButton(context)
            ],
          ),
        ),
      ),
    ));
  }
}
