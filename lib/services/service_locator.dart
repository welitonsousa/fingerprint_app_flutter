import 'package:app_beacon/services/local_authentication_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => LocalAuthenticationService());
}