import 'package:flutter/material.dart';
import 'Home.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PrimeiroApp',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: Myhome(),
    );

  }
}

