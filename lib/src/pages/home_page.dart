import 'package:flutter/material.dart';

import 'details/details_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
              child: Text("Página detalhes"),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => DetailsPage())))
        ],
      ),
    );
  }
}
