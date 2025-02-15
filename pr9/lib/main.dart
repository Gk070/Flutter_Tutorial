import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello Ninjas',
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
            children: [
              Expanded(
                child: Image.network(
                  'https://images.unsplash.com/photo-1728044849248-e90f3ec6a889?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                ),
                flex: 3,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.cyan,
                  child: Text("1"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.pink,
                  child: Text("2"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.amber,
                  child: Text("3"),
                ),
              ),
            ],
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
            'Click'
        ),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}