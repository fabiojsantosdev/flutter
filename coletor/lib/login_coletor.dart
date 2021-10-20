import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  var isVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Image.asset('assets/images/account_icon.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.perm_identity,color: Colors.deepPurple),
                    labelText: 'Usuário',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                child: TextField(
                  obscureText: isVisibility,
                  decoration: InputDecoration(
                    suffixIcon: isVisibility
                        ? IconButton(
                            icon: const Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                isVisibility = !isVisibility;
                              });
                            },
                          )
                        : IconButton(
                            icon: const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                isVisibility = !isVisibility;
                              });
                            },
                          ),
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.vpn_key_sharp,color: Colors.amber),
                    labelText: 'Senha',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
