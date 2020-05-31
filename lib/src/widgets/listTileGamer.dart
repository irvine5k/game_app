import 'package:flutter/material.dart';
import 'package:game_app/src/widgets/games_model.dart';

class ListTileGamer extends StatelessWidget {

  final NewGames gamer;

  const ListTileGamer({Key key, this.gamer}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(gamer.title),
    );
  }
}