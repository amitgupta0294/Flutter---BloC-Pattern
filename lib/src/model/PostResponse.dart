import 'package:flutter_bloc_pattern/src/model/PostsModel.dart';

class PostResponse {
  int _status;
  List<PostsModel> _posts = [];
  List<String> _message = [];

  PostResponse.fromJson(Map<String, dynamic> json) {
    _status = json["status"];
    List<PostsModel> _tempList = [];

    for (int i = 0; i < json["data"].length; i++) {
      PostsModel postsModel = PostsModel(json["data"][i]);
      _tempList.add(postsModel);
    }

    _posts = _tempList;
  }

  int get status => _status;

  set status(int value) {
    _status = value;
  }

  List<PostsModel> get posts => _posts;

  set posts(List<PostsModel> value) {
    _posts = value;
  }

  List<String> get message => _message;

  set message(List<String> value) {
    _message = value;
  }
}