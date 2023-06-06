import 'dart:convert';
import 'package:http/http.dart' as http;

class API {
  late String BASE_URL;

  late String login;
  late String register;
  late String getEmail;
  late String registerWorker;

  API() {
    BASE_URL = "http://192.168.100.5:3000";
    login = "$BASE_URL/auth/login";
    register = "$BASE_URL/user/";
    getEmail = "$BASE_URL/auth/getEmail";
    registerWorker = "$BASE_URL/auth/loginWorker";
    
  }

  Future<dynamic> post(path, body) async {
    var response = await http.post(Uri.parse(path), body: body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return jsonDecode(response.body);
    }
  }

  Future<dynamic> get(path, body) async {
    var response = await http.get(Uri.parse(path));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return jsonDecode(response.body);
    }
  }

  Future<dynamic> put(path, body) async {
    var response = await http.put(Uri.parse(path), body: body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return jsonDecode(response.body);
    }
  }
}
