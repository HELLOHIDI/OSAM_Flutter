import 'package:flutter_blog/domain/user/user_provider.dart';
import 'package:flutter_blog/controller/dto/login_req_dto.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:flutter_blog/util/convert_utf8.dart';
import 'package:flutter_blog/controller/dto/CMRespDto.dart';
import 'package:flutter_blog/domain/user/user.dart';
import 'package:flutter_blog/util/jwt.dart';

//통신을 호출해서 응답되는 데이터를 예쁘게 가공
class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<User> login(String username, String password) async {
    LoginReqDto loginReqDto = LoginReqDto(username, password);
    Response response = await _userProvider.login(loginReqDto.toJson());
    dynamic headers = response.headers;
    dynamic body = response.body;
    dynamic convertBody = convertUtf8ToObject(body);
    CMRespDto cmRespDto = CMRespDto.fromJson(convertBody);

    if (cmRespDto.code == 1) {
      User principal = User.fromJson(cmRespDto.data);
      String token = headers["authorization"];
      jwtToken = token;
      return principal;
    } else {
      return User();
    }

    //String token = headers["authorization"];
    // if (headers["authorization"] == null) {
    //   return "-1";
    // } else {
    //   return token;
    // }
  }
}
