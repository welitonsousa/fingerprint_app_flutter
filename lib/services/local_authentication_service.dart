import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthenticationService {
  final _auth = LocalAuthentication();

  bool isAuthenticated = false;

  Future<bool> authenticate() async {
    try {
      isAuthenticated = await _auth.authenticateWithBiometrics(
        localizedReason: 'Autentique para prosseguir',
        useErrorDialogs: true,
        stickyAuth: true,
      );
      return isAuthenticated;
    } on PlatformException catch (e) {
      return isAuthenticated;
    }
  }
}