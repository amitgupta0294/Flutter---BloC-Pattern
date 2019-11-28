class PostsModel {

  int _userId;
  int _id;
  String _title;
  String _body;

  int get userId => _userId;

  PostsModel(postModel) {
    _userId = postModel["userId"];
    _id = postModel["id"];
    _title = postModel["title"];
    _body = postModel["body"];
  }

  set userId(int value) {
    _userId = value;
  }

  int get id => _id;

  String get body => _body;

  set body(String value) {
    _body = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  set id(int value) {
    _id = value;
  }
}