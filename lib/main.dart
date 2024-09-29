import 'package:easy_count/contactUs.dart';
import 'package:easy_count/new_match.dart';
import 'package:easy_count/scorecard.dart';
import 'package:easy_count/splashScreen.dart';
import 'package:easy_count/states.dart';
import 'package:easy_count/summaryScreen.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'history.dart';
import 'demo.dart';
import 'aboutUs.dart';

void main(){
  runApp(const EasyCount());
}

class EasyCount extends StatelessWidget {
  const EasyCount({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,// to remove debug banner(icon)
      title: 'EasyCount',

      theme: ThemeData(

        primaryColor: Colors.teal, // don't know reason of using this line but appbar and major elements
        brightness: Brightness.light, //two options either dark or light(white)
        scaffoldBackgroundColor: Colors.teal[50], //scaffold color
        fontFamily: 'Roboto', //default font family

          //App Bar structure
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white, //for icons and text
          elevation: 0, //no idea of using this line
          centerTitle: true,

        ),

          // Elevated Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
            textStyle: TextStyle(
            //  fontWeight: FontWeight.w500,
            //  fontSize: 18,

            )
          ),
      ),

        //for textField
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.teal,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
              width: 2.0,
            ),
                borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.teal,
              width: 2.0,
            )
          ),
          labelStyle: TextStyle(
            color: Colors.teal,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )

        ),
        //text themes
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.teal),
            headlineMedium: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal),
            headlineSmall: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal),

          ),



        //for icons
        iconTheme: IconThemeData(
          color: Colors.teal,
          size: 24,

        )




      ),

      // initialRoute: '/',

      routes: {
      //  '/': (context) => SplashScreen(),
        '/home': (context) =>const  HomeScreen(),
        '/newMatch': (context) =>const NewMatch(),
        '/history' : (context) => const History(),
        '/scorecard': (context) => ScoreboardScreen(),
        '/stats': (context) => const StatsScreen(),
        '/summaryScreen': (context) => const  Summaryscreen(),
        '/contactus': (context) => const ContactUsScreen(),
        '/aboutus': (context) => const AboutUsScreen(),
      },

      home: SplashScreen(),

    );

  }
}