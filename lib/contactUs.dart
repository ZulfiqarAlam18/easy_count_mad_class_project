import 'package:easy_count/demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactUsScreen extends StatefulWidget{
  const ContactUsScreen({super.key});

  AppState createState() => AppState();

}

class AppState extends State <ContactUsScreen>{
  final String num1 = '03149807774';
  final String num2 = '03053079686';
  final String mail = 'zulfiqaralam651@gmail.com';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: Colors.teal,
                width: 2.0,
            )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: 400,
                child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 10,),
                          Text(num1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(width: 10,),
                          IconButton(onPressed: (){
                            Clipboard.setData(ClipboardData(text: num1));
                            ScaffoldMessenger.of(context).showSnackBar(
                               const SnackBar(content:  Text('Data Copied Successfully')));
                          }, icon: Icon(Icons.copy)),
                        ],
                      ),
                    SizedBox(height: 10,),
                    Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 10,),
                          Text(num2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(width: 10,),
                          IconButton(onPressed: (){
                            Clipboard.setData(ClipboardData(text: num2));
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: const Text('Data Copied Successfully')));
                          }, icon: Icon(Icons.copy)),
                        ],
                      ),
                    SizedBox(height: 10,),
                    Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(width: 10,),
                          Text(mail,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(width: 10,),
                          IconButton(onPressed: (){

                            Clipboard.setData(ClipboardData(text: mail));
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: const Text('Data Copied Successfully')));

                          }, icon: Icon(Icons.copy)),
                        ],
                      ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}