import 'package:flutter_blog/domain/post/post_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:flutter_blog/util/convert_utf8.dart';
import 'package:flutter_blog/controller/dto/CMRespDto.dart';
import 'package:flutter_blog/domain/post/post.dart';
import 'package:flutter_blog/controller/dto/save_update_req_dto.dart';

//통신을 호출해서 응답되는 데이터를 예쁘게 가공
class PostRepository {
  final PostProvider _postProvider = PostProvider();

  Future<Post> save(String title, String content) async {
    SaveOrUpdateReqDto saveReqDto = SaveOrUpdateReqDto(title, content);
    Response response = await _postProvider.save(saveReqDto.toJson());
    dynamic body = response.body;
    dynamic convertBody = convertUtf8ToObject(body);
    CMRespDto cmRespDto = CMRespDto.fromJson(convertBody);
    if (cmRespDto.code == 1) {
      Post post = Post.fromJson(cmRespDto.data);
      return post;
    } else {
      return Post();
    }
  }

  Future<Post> updateById(int id, String title, String content) async {
    SaveOrUpdateReqDto updateReqDto = SaveOrUpdateReqDto(title, content);
    Response response = await _postProvider.updateById(id, updateReqDto.toJson());
    dynamic body = response.body;
    dynamic convertBody = convertUtf8ToObject(body);
    CMRespDto cmRespDto = CMRespDto.fromJson(convertBody);

    if (cmRespDto.code == 1) {
      Post post = Post.fromJson(cmRespDto.data);
      return post;
    } else {
      return Post();
    }
  }

  Future<int> deleteById(int id) async {
    Response response = await _postProvider.deleteById(id);
    dynamic body = response.body;
    dynamic convertBody = convertUtf8ToObject(body);
    CMRespDto cmRespDto = CMRespDto.fromJson(convertBody);

    return cmRespDto.code!;
  }

  Future<Post> findById(int id) async {
    Response response = await _postProvider.findById(id);
    dynamic body = response.body;
    dynamic convertBody = convertUtf8ToObject(body);
    CMRespDto cmRespDto = CMRespDto.fromJson(convertBody);

    if (cmRespDto.code == 1) {
      Post post = Post.fromJson(cmRespDto.data);
      return post;
    } else {
      return Post();
    }
  }

  Future<List<Post>> findAll() async {
    Response response = await _postProvider.findAll();
    dynamic body = await response.body;
    dynamic convertBody = convertUtf8ToObject(body);
    CMRespDto cmRespDto = CMRespDto.fromJson(convertBody);

    if (cmRespDto.code == 1) {
      List<dynamic> temp = cmRespDto.data;
      List<Post> posts = temp.map((post) => Post.fromJson(post)).toList();
      return posts;
    } else {
      return <Post>[];
    }
  }
}
