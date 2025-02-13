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
      body: Center(
        child: IconButton(
            onPressed: () {
              print("You clicked me!");
            },
            icon: Icon(
              Icons.alternate_email,
              color: Colors.amber,
            )
        ),
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