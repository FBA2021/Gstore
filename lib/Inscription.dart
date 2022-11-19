import 'package:flutter/material.dart';

import 'dmc5.dart';
import 'game.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);
  // Game game;
  // Inscription(this.game);
  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Inscription"),
        ),
        body: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/nfs.jpg",
              ),
              Container(
                margin: const EdgeInsets.all(30),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'UserName',
                    //hintText: 'Enter Your Name'
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    //hintText: 'Enter Your Name'
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
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
                margin: const EdgeInsets.all(30),
                child: const TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Année de naissance',
                    //hintText: 'Enter Your Name'
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
                child: const TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adresse de facturation',
                    //hintText: 'Enter Your Name'
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.all(30),
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      runApp(Dmc5(Game("assets/dmc5.jpg", "Devil May Cry 5", 500, "Desc Desc Desc Desc Desc Desc", 100)));
                    });
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('INSCRIPTION'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
