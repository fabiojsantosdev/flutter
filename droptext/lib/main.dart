import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropTextField'),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const Text("DropDown & TextField",style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20.0,),

            DropDownField(
              controller: baseSelected,
              hintText: "Selecione a Base",
              enabled: true,
              itemsVisibleInDropdown: 5,
              items: base,
              onValueChanged: (value) {
                setState(() {
                  selectBase = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

final baseSelected = TextEditingController();

//Criar lista.

String selectBase = "";
List<String> base = [
  'EPOCA', "MIRN", "EPOCA.TST", "MINR.TST"
];