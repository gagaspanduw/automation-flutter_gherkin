import 'package:flutter_driver/flutter_driver.dart';

class ProfilePage {
  FlutterDriver _driver;

  //Constructor
  ProfilePage(FlutterDriver driver) {
    this._driver = driver;
  }
  // Aksi untuk mendapatkan nama profile
  Future<String> getNameText() async {
    return await _driver.getText(find.byValueKey('namaField'));
  }

  // Aksi untuk mendapatkan email profile
  Future<String> getEmailText() async {
    return await _driver.getText(find.byValueKey('emailField'));
  }

  // Aksi untuk mendapatkan phone number profile
  Future<String> getPhoneNumberText() async {
    return await _driver.getText(find.byValueKey('phoneNumberField'));
  }

  // Aksi untuk mendapatkan address profile
  Future<String> getAddressText() async {
    return await _driver.getText(find.byValueKey('addressField'));
  }
}
