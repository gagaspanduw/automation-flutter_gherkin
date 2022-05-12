import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/login_page.dart';

// Membuat class untuk step "I see login page of the app" yang akan dipanggil pada file bdd_test.dart
class LoginUnsuccessfull extends GivenWithWorld<FlutterWorld> {
  LoginUnsuccessfull()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // Deklarasi login page agar dapat memanggil aksi yang ada pada login page
    LoginPage loginPage = LoginPage(world.driver);
    expect(await loginPage.getLoginButtonText(), 'Log In');
  }

  @override
  RegExp get pattern => RegExp(
      r"Login unsuccessfull"); //Step yang ada pada scenario dalam feature harus sesuai
}
