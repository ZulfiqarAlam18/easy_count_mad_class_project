import 'package:easy_count/first_screen.dart';
import 'package:easy_count/new_match.dart';
import 'package:easy_count/splashScreen.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
void main(){
  runApp(const EasyCount());
}
class EasyCount extends StatelessWidget {
  const EasyCount({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'EasyCount',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
          iconTheme: IconThemeData(
            color: Colors.white,
          )
        )
      ),
     // initialRoute: '/',
      routes: {
      //  '/': (context) => SplashScreen(),
        '/f_screen': (context) => FirstScreen(),
        '/home': (context) => HomeScreen(),
        '/newMatch': (context) => NewMatch(),
      },
      home: SplashScreen(),
    );
  }
}