import 'dart:async';

import 'package:tailor_app/models/user.dart';
import 'package:tailor_app/utils/network_util.dart';

class RestData {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://localhost:8082";
  static final LOGIN_URL = BASE_URL + "/contacts/login-data/";
//  static final _API_KEY = "somerandomkey";

  Future<User> login(String username, String password) {
    return _netUtil.getlogin(username).then((dynamic res) {
      print(res.toString());
      if(res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res["user"]);
    });
  }
}
