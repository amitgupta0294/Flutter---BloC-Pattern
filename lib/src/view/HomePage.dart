import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/src/bloc/PostsBloc.dart';
import 'package:flutter_bloc_pattern/src/model/PostsModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    bloc.fetchAllPosts();

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Bloc"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: StreamBuilder(
          stream: bloc.allPosts,
          builder: (context, AsyncSnapshot<List<PostsModel>> posts) {

            if (posts.hasData) {
              return ListView.builder(
                  itemCount: posts.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 10.0,
                      margin: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(posts.data[index].title),
                      ),
                    );
                  });
            } else if (posts.hasError){
              return Center(child: Text("Something Went Wrong"),);
            }

            return Center(child: CircularProgressIndicator(

            ),);
          },
        )
    );
  }
}