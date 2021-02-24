import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class VerifyLoginPage extends GivenWithWorld<FlutterWorld> {
  VerifyLoginPage()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 900));

  @override
  Future<void> executeStep() async {
    await FlutterDriverUtils.waitForFlutter(world.driver);
    await FlutterDriverUtils.isPresent(world.driver, find.byValueKey('inputEmail'));
    await FlutterDriverUtils.isPresent(world.driver, find.byValueKey('inputPassword'));
    await FlutterDriverUtils.isPresent(world.driver, find.byValueKey('loginButton'));

  }

  @override
  RegExp get pattern => RegExp(r"Verify first Login Page");

}

class InputEmail extends ThenWithWorld<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    String input1 = "zonen@getnada.com";
    await FlutterDriverUtils.tap(world.driver, find.byValueKey('inputEmail'));
    await FlutterDriverUtils.enterText(world.driver, find.byValueKey('inputEmail'), input1);
  }

  @override
  RegExp get pattern => RegExp(r"User input email");

}

class InputPassword extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    String password = "asdfghjkL1234567890!";

    await FlutterDriverUtils.tap(world.driver, find.byValueKey('inputPassword'));
    await FlutterDriverUtils.enterText(world.driver, find.byValueKey('inputPassword'), password);

  }

  @override
  RegExp get pattern => RegExp(r"User input password");

}

class LoginButton extends WhenWithWorld<FlutterWorld> {
  LoginButton()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 900));
  
  @override
  Future<void> executeStep() async {
    await FlutterDriverUtils.tap(world.driver, find.byValueKey('loginButton'));
  }

  @override
  RegExp get pattern => RegExp(r"Click the login button");

}

class ValidateSuccesLogin extends ThenWithWorld<FlutterWorld> {

  ValidateSuccesLogin()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 60));
  
  @override
  Future<void> executeStep() async {
    await FlutterDriverUtils.isPresent(world.driver, find.byValueKey('namaField'));
    final emailCustomer = await FlutterDriverUtils.getText(world.driver, find.byValueKey('emailField'));
    print(emailCustomer);
    expectMatch(emailCustomer, 'zonen@getnada.com');
  }

  @override
  RegExp get pattern => RegExp(r"Verify Success login");

}