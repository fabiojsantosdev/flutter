import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: true,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var selectBase = 'EPOCA';

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
          children: [
            const Text(
              "DropDown & TextField",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 50,
              decoration: BoxDecoration(
                //border: Border.all(width: 0.2),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[200],
              ),
              child: DropdownButton<String>(
                  value: selectBase,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 20,
                  isExpanded: true,
                  underline: const SizedBox.shrink(),
                  borderRadius: BorderRadius.circular(10),
                  style: TextStyle(color: Colors.grey.shade700),
                  onChanged: (value) {
                    setState(() {
                      selectBase = value!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      child: Text('EPOCA'),
                      value: 'EPOCA',
                    ),
                    DropdownMenuItem(
                      child: Text('MRURAL'),
                      value: 'MRURAL',
                    ),
                    DropdownMenuItem(
                      child: Text('FUTURA'),
                      value: 'FUTURA',
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
