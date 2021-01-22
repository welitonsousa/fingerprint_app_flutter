import 'package:app_beacon/utils/constants.dart';
import 'package:app_beacon/widgets/buttons.dart';
import 'package:app_beacon/widgets/inputs.dart';
import 'package:app_beacon/widgets/text.dart';
import 'package:flutter/material.dart';

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMain,
      body: _body(context),
    );
  }
}

Widget _body(BuildContext context) {
  return ListView(
    children: [
      Container(height: 40),
      text(text: 'Minha conta', size: 25),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Inputs.textFormField(
              controller: _emailController,
              label: 'Email',
            ),
            Container(height: 40),
            Inputs.textFormField(
                controller: _passwordController,
                label: 'Senha',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done),
            text(
                text: 'Esqueceu a sua senha?',
                size: 15,
                color: colorSecondary,
                center: false),
            Container(height: 40),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Buttons.loginButton(onPressed: () {}, label: 'Acessar'),
              ),
            )
          ],
        ),
      ),
      Container(),
    ],
  );
}
