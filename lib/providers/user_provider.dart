import 'dart:async';
import 'package:idq_app/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserProvider {
  final String _url = 'https://c229-200-188-14-2.ngrok-free.app/api';

  //late User _user;

  FutureOr<User> getUser(User userOrigin, User userDestiny) async {
    // Creamos la URL de la peticion
    final url = Uri.https(_url, '/user/getUser/${userDestiny.idq}');

    // Obtenemos la resp
    final resp = await http.post(url, 
      headers: <String, String>{
        'Content-Type': 'x-www-form-urlencoded; charset=UTF-8',
      },
      body: {
        'idq': userOrigin.idq,
        'password': userOrigin.password
      }
    );
    final decodedData = json.decode(resp.body);
    print(User.fromJsonMap(decodedData));
    return User.fromJsonMap(decodedData);
  }
}