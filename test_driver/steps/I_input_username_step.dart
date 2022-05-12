import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/login_page.dart';

// Membuat class untuk step "I input valid username" yang akan dipanggil pada file bdd_test.dart
class InputValidUsername extends AndWithWorld<FlutterWorld> {
  InputValidUsername()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    LoginPage loginPage = LoginPage(world.driver);
    await loginPage.inputUsername('validUsername');
  }

  @override
  RegExp get pattern => RegExp(
      r"I input valid username"); //Step yang ada pada scenario dalam feature harus sesuai
}

// Membuat class untuk step "I input invalid username" yang akan dipanggil pada file bdd_test.dart
class InputInvalidUsername extends AndWithWorld<FlutterWorld> {
  InputInvalidUsername()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // Deklarasi login page agar dapat memanggil aksi yang ada pada login page
    LoginPage loginPage = LoginPage(world.driver);
    await loginPage.inputUsername('invalidUsername');
  }

  @override
  RegExp get pattern => RegExp(
      r"I input invalid username"); //Step yang ada pada scenario dalam feature harus sesuai
}

// Membuat class untuk step "I input empty username" yang akan dipanggil pada file bdd_test.dart
class InputEmptyUsername extends AndWithWorld<FlutterWorld> {
  InputEmptyUsername()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // Deklarasi login page agar dapat memanggil aksi yang ada pada login page
    LoginPage loginPage = LoginPage(world.driver);
    await loginPage.inputUsername('');
  }

  @override
  RegExp get pattern => RegExp(
      r"I input empty username"); //Step yang ada pada scenario dalam feature harus sesuai
}
