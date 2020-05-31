import 'package:flutter/material.dart';
import 'package:game_app/src/widgets/dummy_data.dart';
import 'package:game_app/src/widgets/games_model.dart';
import 'package:game_app/src/widgets/listTileGamer.dart';

class NewComingList extends StatelessWidget {
  final List<NewGames> loadedGames = DUMMY_GAMES;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(5, 11, 24, 1),
      height: 400,
      child: ListView.builder(
          itemCount: loadedGames.length,
          itemBuilder: (ctx, idx) {
            return Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(8),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Image.network(loadedGames[idx].imageUrl , fit: BoxFit.cover,),

                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(loadedGames[idx].title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),),
                                Text(loadedGames[idx].description, style: TextStyle(fontSize: 14, color: Colors.grey),),
                                Container(
                                  width: 170,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        Icon(Icons.star, color: Colors.yellow,size: 20,),
                                        
                                        Text(loadedGames[idx].rating.toString(), style: TextStyle(color: Colors.yellow),),
                                        
                                        Icon(Icons.remove_circle, size: 5,color: Colors.grey,),
                                        
                                        Icon(Icons.file_download, color:Color(0xFF7B67E4) ,size: 20,),
                                        
                                        Icon(Icons.remove_circle, size: 5,color: Colors.grey,),
                                        
                                        Text('${loadedGames[idx].downloads.toStringAsFixed(0)}K', style: TextStyle(color: Colors.grey),),
                                        
                                        Icon(Icons.remove_circle, size: 5,color: Colors.grey,),
                                        
                                        Text(loadedGames[idx].type, style: TextStyle(color: Colors.grey),),
                                        
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                          
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
