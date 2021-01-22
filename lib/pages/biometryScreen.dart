import 'package:app_beacon/pages/loginScreen.dart';
import 'package:app_beacon/services/local_authentication_service.dart';
import 'package:app_beacon/services/service_locator.dart';
import 'package:app_beacon/utils/constants.dart';
import 'package:app_beacon/utils/pushScreen.dart';
import 'package:app_beacon/widgets/text.dart';
import 'package:flutter/material.dart';

class BiometryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMain,
      body: _body(context),
    );
  }
}

Widget _body(BuildContext context) {
  final LocalAuthenticationService _localAuth = locator<LocalAuthenticationService>();
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
          child: ListTile(
            title: Icon(Icons.fingerprint, size: 150, color: colorSecondary),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: text(
                  text: 'Toque no ícone para\nativar o leitor biométrico',
                  color: colorSecondary),
            ),
          ),
          onTap: () async {
            bool result = await _localAuth.authenticate();
            if (result) push(context: context, screen: LoginScreen());
          }),
    ],
  );
}
