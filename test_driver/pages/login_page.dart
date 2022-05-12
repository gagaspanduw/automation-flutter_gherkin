import 'package:flutter_driver/flutter_driver.dart';

class LoginPage {
  final usernameTextField = find.byValueKey('inputEmail');
  final passwordTextField = find.byValueKey('inputPassword');
  final loginSubmitButton = find.byValueKey('loginButton');

  FlutterDriver _driver;

  //Constructor
  LoginPage(FlutterDriver driver) {
    this._driver = driver;
  }
  // Aksi untuk get text login
  Future<String> getLoginButtonText() async {
    return await _driver.getText(find.text('Log In'));
  }

  // Aksi untuk input username
  Future<void> inputUsername(username) async {
    await _driver.tap(usernameTextField);
    await _driver.enterText(username);
  }

  // Aksi untuk input password
  Future<void> inputPassword(password) async {
    await _driver.tap(passwordTextField);
    await _driver.enterText(password);
  }

  // Aksi untuk click login button
  Future<void> clickLoginButton() async {
    await _driver.tap(loginSubmitButton);
  }
}
