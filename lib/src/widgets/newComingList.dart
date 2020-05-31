import 'package:flutter/material.dart';
import 'package:game_app/src/pages/details/details_page.dart';
import 'package:game_app/src/widgets/dummy_data.dart';
import 'package:game_app/src/widgets/games_model.dart';

class NewComingList extends StatelessWidget {
  final List<NewGames> loadedGames = DUMMY_GAMES;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(5, 11, 24, 1),
      child: Column(
        children: <Widget>[
          ...List.of(
            loadedGames.map(
              (i) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => DetailsPage(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: <Widget>[
                      Image.network(
                        i.imageUrl,
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    i.title,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    i.description,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Text(
                                          i.rating.toString(),
                                          style:
                                              TextStyle(color: Colors.yellow),
                                        ),
                                        Icon(
                                          Icons.remove_circle,
                                          size: 5,
                                          color: Colors.grey,
                                        ),
                                        Icon(
                                          Icons.file_download,
                                          color: Color(0xFF7B67E4),
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.remove_circle,
                                          size: 5,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          '${i.downloads.toStringAsFixed(0)}K',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Icon(
                                          Icons.remove_circle,
                                          size: 5,
                                          color: Colors.grey,
                                        ),
                                        Expanded(
                                          child: Text(
                                            i.type,
                                            style:
                                                TextStyle(color: Colors.grey),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
