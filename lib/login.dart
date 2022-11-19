import 'package:flutter/material.dart';

import 'dmc5.dart';
import 'game.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("S'authentifier"),
        ),
        body: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Image.asset(
                  "assets/nfs.jpg",
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 60, 20, 5),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'UserName',
                    //hintText: 'Enter Your Name'
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 30),
                child: const TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mot de passe',
                    //hintText: 'Enter Your Name'
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.fromLTRB(20, 30, 20, 5),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      //runApp(Dmc5(Game("assets/dmc5.jpg", "Devil May Cry 5", 500, "Desc Desc Desc Desc Desc Desc", 100)));
                    });
                  },
                  color: Colors.blue,
                  highlightColor: Colors.amber,
                  textColor: Colors.white,
                  highlightElevation: 20,
                  child: const Text("S'authentifier"),
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      //runApp(Dmc5(Game("assets/dmc5.jpg", "Devil May Cry 5", 500, "Desc Desc Desc Desc Desc Desc", 100)));
                    });
                  },
                  color: Colors.red[900],
                  highlightColor: Colors.green,
                  hoverColor: Colors.amberAccent,
                  textColor: Colors.white,
                  highlightElevation: 20,
                  child: const Text("S'authentifier"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(70),
                child: Row(
                  children: const [
                    Text("Mot de passe oublié ?"),
                    Text(
                      "Cliquez ici",
                      style: TextStyle(
                        color: Colors.cyan,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
