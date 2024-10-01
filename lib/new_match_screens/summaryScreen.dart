import 'package:easy_count/demo.dart';
import 'package:flutter/material.dart';
import 'secondInnings.dart';
import 'package:easy_count/new_match_screens/firstInnings.dart';

class Summaryscreen extends StatefulWidget{
  const Summaryscreen({super.key});

  @override
  AppState createState() => AppState();

}

class AppState extends State <Summaryscreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Match Summary '),
          bottom: TabBar(
            tabs: [
              Tab(child: Text('1st Innings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
              Tab(child: Text('2nd Innings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),

            ],
            labelColor: Colors.white,
          ),
        ),
      body: TabBarView(
        children: [
          FirstInnings(),
          SecondInnings(),
        ]


      ),
      ),
    );
  }

}