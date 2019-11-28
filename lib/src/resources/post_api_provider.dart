import 'dart:async';
import 'package:flutter_bloc_pattern/src/model/PostResponse.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class PostApiProvider {
  Client client = Client();

  Future<PostResponse> getPosts() async {

    final response = await client.get("http://www.mocky.io/v2/5ddf5bca3100005f733ae6c1");

    print(response.body.toString());

    if (response.statusCode == 200) {
      return PostResponse.fromJson(json.decode(response.body));
    } else {
      throw new Exception("Data not loaded");
    }
  }
}