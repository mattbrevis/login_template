import 'package:flutter/material.dart';

import '../../widget/custom_button.dart';
import '../../widget/custom_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, this.title}) : super(key: key);
  static String routeName = '/signup';

  final String? title;

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: const Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            const Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        MyCustomInput(
            title: 'Name', isPassword: false, controller: nameTextController),
        MyCustomInput(
            title: 'E-mail',
            isPassword: false,
            controller: emailTextController),
        MyCustomInput(
            title: 'Password',
            isPassword: true,
            controller: passwordTextController),
        MyCustomInput(
            title: 'Confirm your password',
            isPassword: true,
            controller: passwordTextController),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Sign in :)',
                      style: TextStyle(fontSize: 35),
                      textAlign: TextAlign.right,
                    ),
                    _emailPasswordWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: MyCustomButton.myCustomButtonStyle(),
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.0),
                          )),
                    ),
                    SizedBox(height: height * .14),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
