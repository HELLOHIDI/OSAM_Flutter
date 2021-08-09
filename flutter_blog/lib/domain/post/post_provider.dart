import 'package:get/get.dart';
import 'package:flutter_blog/util/jwt.dart';

const host = "http://172.28.125.14:8080";

//통신
class PostProvider extends GetConnect {
  // Promis(데이터 약속)
  Future<Response> findAll() => get("$host/post", headers: {
        "Authorization": jwtToken ?? ""
      });
  Future<Response> findById(int id) => get("$host/post/$id", headers: {
        "Authorization": jwtToken ?? ""
      });
  Future<Response> deleteById(int id) => delete("$host/post/$id", headers: {
        "Authorization": jwtToken ?? ""
      });

  Future<Response> updateById(int id, Map data) => put("$host/post/$id", data, headers: {
        "Authorization": jwtToken ?? ""
      });

  Future<Response> save(Map data) => put("$host/post", data, headers: {
        "Authorization": jwtToken ?? ""
      });
}
