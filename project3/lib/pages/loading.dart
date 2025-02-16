import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget{
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading>{

  void getTime() async {
    //Make the request
    var url = Uri.parse('');
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    print(data);
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Text(
          "Loading Screen"
      ),
    );
  }
}