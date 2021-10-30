import 'package:flutter/material.dart';

import 'app/home_page.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora ST',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

