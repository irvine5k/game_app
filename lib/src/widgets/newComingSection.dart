import 'package:flutter/material.dart';
import 'package:game_app/src/widgets/newComingList.dart';

class NewComingSection extends StatelessWidget {
  const NewComingSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
        padding: EdgeInsets.all(16),
        color: Color.fromRGBO(5, 11, 24, 1),
        child: Column(          
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Newcoming games', style: TextStyle(color: Colors.white, fontSize: 20),),
                Text('View All', style: TextStyle(color: Color(0xFF7B67E4)),)
              ],
            ),
            NewComingList()
          ],
        )
      );
  }
}