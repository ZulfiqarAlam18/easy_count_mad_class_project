import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  AppState createState() => AppState();
}

class AppState extends State<HomeScreen> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Score Counter'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[50], // Light teal background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // New Match Button
              SizedBox(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/newMatch');
                    },
                    icon: const Icon(Icons.sports_cricket),
                    label: const Text(
                      'New Match',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Resume Match Button
              SizedBox(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          backgroundColor: Colors.teal[50],
                          title: const Text('Wanna Resume Match?'),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: const Text('No')),
                            ElevatedButton(onPressed: (){
                              Navigator.pushNamed(context, '/scorecard');
                            }, child: const Text('Yes')),
                          ],
                        );
                      });



                    },
                    icon: const Icon(Icons.play_arrow),
                    label: const Text(
                      'Resume Match',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // History Button
              SizedBox(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/history');
                    },
                    icon: const Icon(Icons.history),
                    label: const Text(
                      'History',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Stats Button
              SizedBox(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/stats');
                    },
                    icon: const Icon(Icons.bar_chart),
                    label: const Text(
                      'Stats',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header with App Info
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.sports_cricket,
                    color: Colors.white,
                    size: 80,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Cricket App Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),

            // Drawer ListTiles for navigation
            ListTile(
              leading: const Icon(Icons.home, color: Colors.teal),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.teal),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.teal),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, '/contactus');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.teal),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, '/aboutus');
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip, color: Colors.teal),
              title: const Text('Terms & Conditions'),
              onTap: () {
                Navigator.pushNamed(context, '/terms');
              },
            ),
            ListTile(
              leading: const Icon(Icons.share, color: Colors.teal),
              title: const Text('Share'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.star, color: Colors.teal),
              title: const Text('Rate Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void myAlertDB_with_textFields(BuildContext context,String title){
  TextEditingController captain_Controller = TextEditingController();
  TextEditingController striker = TextEditingController();
  TextEditingController nonStricker = TextEditingController();
  TextEditingController bowler = TextEditingController();

  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title:  Text(title),

      content: Container(
        height: 250,
        width: 200,
        // padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: captain_Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      )
                  ),
                  label: const Text('Captain'),
                  labelStyle: const TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      )
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),

                ),


              ),
              const SizedBox(height: 8,),
              TextField(
                controller: striker,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      )
                  ),
                  label: const Text('Striker Name'),
                  labelStyle: const TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      )
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),

                ),


              ),
              const SizedBox(height: 8,),
              TextField(
                controller: nonStricker,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      )
                  ),
                  label: const Text('Non Striker Name'),
                  labelStyle: const TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      )
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),

                ),


              ),
              const SizedBox(height: 8,),
              TextField(
                controller: bowler,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      )
                  ),
                  label: const Text('Bowler Name'),
                  labelStyle: const TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      )
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),

                ),


              ),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: const Text('Go Back')),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/scorecard');
        }, child: const Text('Start Match')),
      ],
      backgroundColor: Colors.teal[50],
    );
  });
}

void myAlerDB_without_textFields(BuildContext context, String content, String title){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: const Text('Close')),
        ElevatedButton(onPressed: (){}, child: const Text('Go AHead')),
      ],
    );
  });
}

Widget showDataList({required String title ,String? des , required int length}){
  return Padding(
    padding:const EdgeInsets.all(4.0),
    child: ListView.builder(itemCount: length,
        itemBuilder: (context, index){
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                color: Colors.teal,
                width: 2.0,
              )
            ),
            elevation: 16,
            child: ListTile(
              title:  Text(title),
           //   titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
              subtitle: des != null && des.isNotEmpty
                        ? Text(des): null,
              leading: CircleAvatar(
                radius: 20,
                child: Text((index+1).toString()),
              ),
              trailing: IconButton(onPressed: (){

              },icon: const Icon(Icons.delete),),
            ),
          );
        }),
  );
}