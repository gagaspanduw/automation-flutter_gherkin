import 'package:flutter_driver/driver_extension.dart';
import 'package:facebook_clone/main.dart'
    as app; //package disesuaikan dengan nama app di pubspec

void main() {
  // Memanggil flutter driver extension
  enableFlutterDriverExtension();

  // Memanggil aplikasi agar dapat dijalankan untuk test
  app.main();
}
