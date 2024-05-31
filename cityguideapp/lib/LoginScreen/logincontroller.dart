import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  // Static email and password for login
  static const String validEmail = 'demo@123';
  static const String validPassword = '123456';

  // Method to validate login credentials
  bool validateCredentials() {
    return email.value == validEmail && password.value == validPassword;
  }
}
