import 'package:flutter/material.dart';
import 'package:gstore/game.dart';

class Dmc5 extends StatefulWidget {
  Game game;

  Dmc5(this.game);

  @override
  State<Dmc5> createState() => _Dmc5State();
}

class _Dmc5State extends State<Dmc5> {
  int quantite = 0;
  @override
  void initState() {
    // TODO: implement initState
    quantite = widget.game.tqe;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Devil May Cry 5'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.game.path,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 30, 20, 50),
              child: Text(
                "${widget.game.description} \n"
                "$quantite",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                "${widget.game.price}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 60,
              width: 150,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    quantite--;
                  });
                },
                icon: Icon(Icons.icecream_sharp),
                label: Text('Acheter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
