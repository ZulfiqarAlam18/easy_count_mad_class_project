import 'package:easy_count/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget{
  Demo({super.key});

  AppState createState() => AppState();
}

class AppState extends State <Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I am Demo Screeen'),
        actions: [
          Icon(Icons.more_vert),
        ],


      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
          TextField(
            decoration: InputDecoration(
              label: Text('Text Field'),
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          Text('I am Text Field'),
          FloatingActionButton(onPressed: (){},child: Text('FAB'),),
          IconButton(onPressed: (){}, icon: Icon(Icons.sports_cricket)),
          TextField(

          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [

          ],
        ),
      ),
    );

  }
}