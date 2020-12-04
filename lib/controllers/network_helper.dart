import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/post.dart';

const url = 'http://192.168.0.110:8000/teachers';

Future<List<Post> > fetchPost() async {
  print ("fetching post function 1111111111111");
  final response =
  await http.get(url);

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    List<dynamic> values=new List<dynamic>();
    values = json.decode(response.body);
    print (values);
    return values.map((posts) => new Post.fromJson(posts)).toList();
    //return _postList;

  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}// End function

  /*Future<List<Post>> getEmployees() async {
    final res = await http.get("http://192.168.0.106:8000/teachers");

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      print("hello ");
      print(res.body);
      List data = json['data'];

      return data.map((employees) => new Post.fromJson(employees)).toList();
    }

    else {
      throw Exception('Failed to fetch data');
    }
  }//End function*/
