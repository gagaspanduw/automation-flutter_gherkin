import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/I_click_login_step.dart';
import 'steps/I_input_password_step.dart';
import 'steps/I_input_username_step.dart';
import 'steps/login_page_of_the_app.dart';
import 'steps/login_success_step.dart';
import 'steps/login_unsuccessfull.dart';

// runner config
Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ] // you can include the "StdoutReporter()" without the message level parameter for verbose log information
    ..stepDefinitions = [
      LoginPageOfApp(),
      InputValidUsername(),
      InputInvalidUsername(),
      InputEmptyUsername(),
      InputValidPassword(),
      InputInvalidPassword(),
      InputEmptyPassword(),
      ClickLogin(),
      LoginSuccess(),
      LoginUnsuccessfull()
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/bdd.dart"
    // ..tagExpression = "@smoke" // uncomment to see an example of running scenarios based on tag expressions
    ..exitAfterTestRun = true; // set to false if debugging to exit cleanly
  return GherkinRunner().execute(config);
}
