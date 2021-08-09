import 'package:get/get.dart';

const host = "http://172.28.125.14:8080";

//통신
class UserProvider extends GetConnect {
  // Promis(데이터 약속)
  Future<Response> login(Map data) => post("$host/login", data);
}
