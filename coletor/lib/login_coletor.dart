import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);


  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  var isVisibility = true;
  var selectBase = 'EPOCA';

  Widget _body(){
    return SingleChildScrollView(
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
                style: TextStyle(fontSize: 18,fontFamily: 'Roboto',color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.perm_identity,color: Colors.black),
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

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 55,
              width: 390,
              decoration:  BoxDecoration(
                border: Border.all(width: 0.2),),
              child: DropdownButton(
                value: selectBase,
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 20,
                isExpanded: true,
                underline: const SizedBox.shrink(),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                onChanged: (value) {
                  setState(() {
                    selectBase = selectBase;
                  });
                },
                items: const [
                  DropdownMenuItem(child: Text('EPOCA'), value: 'EPOCA',),
                  DropdownMenuItem(child: Text('MINR'), value: 'MINR',),
                  DropdownMenuItem(child: Text('EPOCA.TST'), value: 'EPOCA.TST',),
                  DropdownMenuItem(child: Text('MINR.TST'), value: 'MINR.TST',),
                ],),
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/images/img_background1.png',fit: BoxFit.fill)),
          _body()
        ],
      )
    );
  }
}

