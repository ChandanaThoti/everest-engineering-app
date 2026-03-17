import 'dart:io';

class ApiConfig {
  static String get baseUrl {
    if (Platform.isAndroid) {
      return 'http://192.168.1.4:3009/person';
    } else {
      return 'http://localhost:3009/person';
    }
  }
}
