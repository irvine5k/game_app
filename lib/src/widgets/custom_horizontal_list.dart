import 'package:division/division.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  final List<GameCard> gameCardList;

  const HorizontalList({Key key, @required this.gameCardList})
      : super(key: key);

  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 20),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: widget.gameCardList.length,
      itemBuilder: (context, index) => widget.gameCardList[index],
    );
  }
}

class GameCard extends StatelessWidget {
  final String gameIconUrl;
  final String gameCoverUrl;
  final String gameName;
  final double stars;
  final String gameCategory;

  const GameCard({
    Key key,
    @required this.gameName,
    @required this.stars,
    @required this.gameCategory,
    @required this.gameIconUrl,
    @required this.gameCoverUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xff030913),
        borderRadius: BorderRadius.circular(13),
      ),
      width: size.width,
      child: Column(
        children: <Widget>[
          //Top Card
          Container(
            height: size.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
              image: DecorationImage(
                image: NetworkImage(
                  gameCoverUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          //Footer Card
          Row(
            children: <Widget>[
              // GameIcon
              SizedBox(
                width: 10,
              ),
              Image.network(
                gameIconUrl,
                width: 60,
                height: 60,
              ),
              //Game Name, Stars and category
              SizedBox(
                width: 10,
              ),
              Column(
                children: <Widget>[
                  Text(
                    gameName,
                    style: gameCardTextStyle(),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        stars.toString(),
                        style: TextStyle(color: Colors.amber),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(gameCategory, style: gameCardTextStyle()),
                    ],
                  ),
                ],
              ),
              Spacer(),
              // Button
              RaisedButton(
                color: Color(0xff564DDB),
                onPressed: () {},
                child: Text(
                  "Install",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

TextStyle gameCardTextStyle() => TextStyle(color: Colors.white);
