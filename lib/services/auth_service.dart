import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shamo/models/user_model.dart';

class AuthService {
  String baseUrl = "http://10.0.3.2:8000/api";

  Future<UserModel> register({
    required String name,
    required String username,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    Uri url = Uri.parse('$baseUrl/register');
    Map<String, String> header = {'Content-type': 'application/json'};

    var body = jsonEncode(<String, dynamic>{
      "name": name,
      "username": username,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirmation
    });

    var response = await http.post(
      url,
      headers: header,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var _data = jsonDecode(response.body)["data"];
      UserModel _user = UserModel.fromJson(_data["user"]);
      _user.token = 'Bearer ${_data["access_token"]}';

      return _user;
    } else {
      throw Exception("Registrasi Gagal");
    }
  }
}
