import 'dart:ui';

import 'package:easy_count/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewMatch extends StatefulWidget{
  const NewMatch({super.key});
  @override
  AppState createState() => AppState();
}
class AppState extends State <NewMatch>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('New Match Screen'),
      ),
      backgroundColor: Colors.teal[50],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: const Text('1st Team Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),),

                  ),
                ),
              ),),
              SizedBox(height: 10,),
              SizedBox(width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text('2nd Team Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),),

                    ),
                  ),
                ),),
              SizedBox(height: 10,),
              SizedBox(width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text('Number of Players(1 to 12)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),),

                    ),
                  ),
                ),),
              SizedBox(height: 10,),
              SizedBox(width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text('Number of Overs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),),

                    ),
                  ),
                ),),
              SizedBox(height: 10,),
              SizedBox(width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text('1st Team Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),),

                    ),
                  ),
                ),),
              SizedBox(height: 10,),
              SizedBox(width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: const Text('1st Team Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),),

                    ),
                  ),
                ),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: const Text('Start Match')),
            ],
          ),
        ),
      ),
    );
  }
}
