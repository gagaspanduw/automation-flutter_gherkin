import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/login_page.dart';

// Membuat class untuk step click login yang akan dipanggil pada file bdd_test.dart
class ClickLogin extends AndWithWorld<FlutterWorld> {
  ClickLogin()
      : super(StepDefinitionConfiguration()
          ..timeout = Duration(seconds: 10)); //Timeout dari setiap aksi login

  @override
  Future<void> executeStep() async {
    // Deklarasi login page agar dapat memanggil aksi yang ada pada login page
    LoginPage loginPage = LoginPage(world.driver);
    await loginPage.clickLoginButton();
  }

  @override
  RegExp get pattern => RegExp(
      r"I click login"); //Step yang ada pada scenario dalam feature harus sesuai
}
