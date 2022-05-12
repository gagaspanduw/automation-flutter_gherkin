import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/profile_page.dart';

// Membuat class untuk step "Login successfull" yang akan dipanggil pada file bdd_test.dart
class LoginSuccess extends GivenWithWorld<FlutterWorld> {
  FlutterDriver _driver;

  LoginSuccess()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    // Deklarasi profile page agar dapat memanggil aksi yang ada pada login page
    ProfilePage profilePage = ProfilePage(world.driver);

    expect(await profilePage.getNameText(), 'Zonen GAJAYANA');
    expect(await profilePage.getEmailText(), 'zonen@getnada.com');
    expect(await profilePage.getPhoneNumberText(), '+62 821 4360 8440');
    expect(await profilePage.getAddressText(), '192.168.21.43');
  }

  @override
  RegExp get pattern => RegExp(
      r"Login successfull"); //Step yang ada pada scenario dalam feature harus sesuai
}
