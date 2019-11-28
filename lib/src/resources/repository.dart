import 'package:flutter_bloc_pattern/src/model/PostResponse.dart';
import '../resources/post_api_provider.dart';

class Repository {
  final postApiProvider = PostApiProvider();

  Future<PostResponse> getPosts() => postApiProvider.getPosts();
}