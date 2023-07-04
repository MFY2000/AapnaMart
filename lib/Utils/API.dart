import 'dart:convert';
import 'package:http/http.dart' as http;

class API {
  late String BASE_URL;
  late String File_URL;

  late String login;
  late String register;
  late String getEmail;
  late String registerWorker;
  late String getMart;
  late String getProduct;
  late String order;

  API() {
    BASE_URL = "https://apna-mart-server.herokuapp.com";
    // BASE_URL = "http://192.168.100.4:3000";
    File_URL = "$BASE_URL/uploads/images/";
    login = "$BASE_URL/auth/login";
    register = "$BASE_URL/user/";
    getEmail = "$BASE_URL/auth/getEmail";
    registerWorker = "$BASE_URL/auth/loginWorker";
    getProduct = "$BASE_URL/product/";
    getMart = "$BASE_URL/mart/";
    order = "$BASE_URL/order/";
  }

  Future<dynamic> post(path, body) async {
    //print(path);
    var response = await http.post(Uri.parse(path), body: body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return jsonDecode(response.body);
    }
  }

  Future<dynamic> get(path) async {
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
