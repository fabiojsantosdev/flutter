import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  int contator = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Icon(Icons.home, size: 50, color: Colors.deepPurple),
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.black,
        title: Text('PrimeiroApp'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 80,
                bottom: 20,
                left: 20,
                right: 30,
              ),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                  labelText: 'Usuário / Matricula',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 80,
                left: 20,
                right: 30,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.amberAccent,
                  ),
                  labelText: 'Informe a Senha',
                ),
              ),
            ),
            Text(
              'Clicou vezes: $contator',
              style: TextStyle(fontSize: 30, color: Colors.deepPurple),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contator++;
          });
        },
        child: Icon(Icons.add, color: Colors.black),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
