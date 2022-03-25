import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.pink,
        primaryColor: Colors.black,
        ),
        home: Home()
      ,
    );
  }
}