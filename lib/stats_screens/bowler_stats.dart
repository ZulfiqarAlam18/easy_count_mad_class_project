
import 'package:flutter/material.dart';
import 'package:easy_count/home_screens/home_screen.dart';

class BowlerStats extends StatefulWidget{

  const BowlerStats({super.key});

  @override
 AppState createState() => AppState();

}

class AppState extends State <BowlerStats>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        //title: const Text('Bowler Stats'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.teal),
                  hintText: 'Search by name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.teal),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
            ),
          ),
        ],
      ),

      body: showDataList(title: 'Ahmed', length: 5)

    );
  }
}
