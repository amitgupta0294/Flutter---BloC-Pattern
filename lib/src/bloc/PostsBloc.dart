import 'package:flutter_bloc_pattern/src/model/PostResponse.dart';
import 'package:flutter_bloc_pattern/src/model/PostsModel.dart';
import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class PostsBloc {
  var repo = Repository();
  var _postFetcher = PublishSubject<List<PostsModel>>();

  Observable<List<PostsModel>> get allPosts => _postFetcher.stream;

  fetchAllPosts() async {
    PostResponse postResponse = await repo.getPosts();
    print("post_response ==> "+postResponse.toString());
    _postFetcher.sink.add(postResponse.posts);
  }

  dispose() {
    _postFetcher.close();
  }
}

final bloc = PostsBloc();