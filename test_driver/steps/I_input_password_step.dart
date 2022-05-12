import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/login_page.dart';

// Membuat class untuk step "I input valid password" yang akan dipanggil pada file bdd_test.dart
class InputValidPassword extends AndWithWorld<FlutterWorld> {
  InputValidPassword()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    LoginPage loginPage = LoginPage(world.driver);
    await loginPage.inputPassword('validpassword');
  }

  @override
  RegExp get pattern => RegExp(
      r"I input valid password"); //Step yang ada pada scenario dalam feature harus sesuai
}

// Membuat class untuk step "I input invalid password" yang akan dipanggil pada file bdd_test.dart
class InputInvalidPassword extends AndWithWorld<FlutterWorld> {
  InputInvalidPassword()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // Deklarasi login page agar dapat memanggil aksi yang ada pada login page
    LoginPage loginPage = LoginPage(world.driver);
    await loginPage.inputPassword('invalidpassword');
  }

  @override
  RegExp get pattern => RegExp(
      r"I input invalid password"); //Step yang ada pada scenario dalam feature harus sesuai
}

// Membuat class untuk step "I input empty password" yang akan dipanggil pada file bdd_test.dart
class InputEmptyPassword extends AndWithWorld<FlutterWorld> {
  InputEmptyPassword()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // Deklarasi login page agar dapat memanggil aksi yang ada pada login page
    LoginPage loginPage = LoginPage(world.driver);
    await loginPage.inputPassword('');
  }

  @override
  RegExp get pattern => RegExp(
      r"I input empty password"); //Step yang ada pada scenario dalam feature harus sesuai
}
