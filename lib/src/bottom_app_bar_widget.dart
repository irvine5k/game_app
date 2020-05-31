import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xffb050B18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(icon: Image.asset('images/icon1.png'),
              onPressed: (){}),
          IconButton(icon: Image.asset('images/icon2.png'),
              onPressed: (){}),
          IconButton(icon: Image.asset('images/icon3.png'),
              onPressed: (){}),
          IconButton(icon: Image.asset('images/icon4.png'),
              onPressed: (){}),
        ],
      ),
    );
  }
}