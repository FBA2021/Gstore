import 'package:flutter/material.dart';
import 'package:gstore/Inscription.dart';
import 'package:gstore/dmc5.dart';
import 'package:gstore/game_card.dart';
import 'package:gstore/login.dart';

import 'game.dart';

void main() {
  // runApp(Inscription());
  //runApp(Dmc5(Game("assets/dmc5.jpg", "Devil May Cry 5", 500, "Desc Desc Desc Desc Desc Desc", 100)));
  runApp(Login());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyListApp();
}

class _MyListApp extends State<MyApp> {
  List<Game> games = [];

  @override
  void initState() {
    games.add(Game("assets/dmc5.jpg", "Devil May Cry 5", 500, "Game1", 10));
    games.add(Game("assets/fifa.jpg", "FIFA 22", 280, "Game2", 20));
    games.add(Game("assets/minecraft.jpg", "Minecraft", 150, "Game3", 30));
    games.add(Game("assets/nfs.jpg", "Need For Speed", 1000, "Game4", 40));
    games.add(
        Game("assets/rdr2.jpg", "Red Dead Redemption 2", 300, "Game5", 50));
    games.add(Game("assets/re8.jpg", "Resident Evil 8", 400, "Game6", 60));
    games.add(Game("assets/dmc5.jpg", "Devil May Cry 5", 500, "Game1", 10));
    games.add(Game("assets/fifa.jpg", "FIFA 22", 280, "Game2", 20));
    games.add(Game("assets/minecraft.jpg", "Minecraft", 150, "Game3", 30));
    games.add(Game("assets/nfs.jpg", "Need For Speed", 1000, "Game4", 40));
    games.add(
        Game("assets/rdr2.jpg", "Red Dead Redemption 2", 300, "Game5", 50));
    games.add(Game("assets/re8.jpg", "Resident Evil 8", 400, "Game6", 60));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('G-Store ESPRIT'),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
            itemCount: games.length,
            itemBuilder: (BuildContext context, int index) {
              return GameCard(games[index]);
            }),
      ),
    );
  }
}
