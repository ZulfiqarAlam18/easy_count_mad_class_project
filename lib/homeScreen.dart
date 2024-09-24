import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State <HomeScreen>{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, '/');
            }, icon: Icon(Icons.sports_cricket)),
            IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Clicked')));
            }, icon: Icon(Icons.more_vert)),

          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.search),text: 'Search',),
              Tab(icon: Icon(Icons.home),text: 'Home',),
              Tab(icon: Icon(Icons.person),text: 'Profile',)
            ],
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [
            Text('Search Screen'),
            Text('Home Screen'),
            Text('Profile'),
          ],


        ),
        drawer: Drawer(
          child: Column(
            children: [
              const DrawerHeader(child: const Text('Drawer'),decoration: BoxDecoration(color: Colors.teal),),
              ListTile(title: Text('Home'),leading: IconButton(icon: Icon(Icons.home),onPressed: (){
                Navigator.pop(context);
              },),),
              ListTile(title: Text('Settings'),leading: IconButton(icon: Icon(Icons.settings),onPressed: (){
                Navigator.pop(context);
              },),),
              ListTile(title: Text('Contact Us'),leading: IconButton(icon: Icon(Icons.contact_mail),onPressed: (){
                Navigator.pop(context);
              },),),
              ListTile(title: Text('About Us'),leading: IconButton(icon: Icon(Icons.person),onPressed: (){
                Navigator.pop(context);
              },),),
              ListTile(title: Text('Terms & Conditons'),leading: IconButton(icon: Icon(Icons.privacy_tip),onPressed: (){
                Navigator.pop(context);
              },),),
              ListTile(title: Text('Share'),leading: IconButton(icon: Icon(Icons.share),onPressed: (){
                Navigator.pop(context);
              },),),
              ListTile(title: Text('Rate Us'),leading: IconButton(icon: Icon(Icons.star),onPressed: (){
                Navigator.pop(context);
              },),),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){

        },child: const Icon(Icons.add),),
        bottomNavigationBar: BottomNavigationBar(

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ],
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }

}