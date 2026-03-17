import 'dart:convert';
import 'package:everest_engineering/config/get_url.dart';
import 'package:everest_engineering/network/person.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<List<Person>> getPerson() async {
    final url = Uri.parse(ApiConfig.baseUrl);
    http.Response response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );
    final List email = jsonDecode(response.body);

    return email.map((e) => Person.fromJson(e)).toList();
  }

  static void addPerson(String name, String email) async {
    final validEmail = email.trim();
    final url = Uri.parse('http://localhost:3009/person');
    await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({'name': name, 'email': validEmail}),
    );
    await getPerson();
  }

  static void editPerson(int id, String name, String email) async {
    final url = Uri.parse('http://localhost:3009/person');
    await http.put(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({'id': id, 'name': name, 'email': email}),
    );
    await getPerson();
  }

  static void deletePerson(int id) async {
    final url = Uri.parse('http://localhost:3009/person/$id');
    await http.delete(url, headers: {'Accept': 'application/json'});
    await getPerson();
  }
}
