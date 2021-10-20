import 'package:flutter/material.dart';

import 'login_coletor.dart';


main () {
  runApp(ColetorApp());
}

class ColetorApp extends StatelessWidget {
  const ColetorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ColetorApp',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.grey,
      ),
      home: LoginApp(),
    );
  }
}



