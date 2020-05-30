import 'package:flutter/material.dart';

import 'custom_button.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050B18),
      body: Column(
        children: [
          Expanded(flex: 1, child: Container()),
          Divider(
            height: 2,
            endIndent: null,
            indent: 0,
            color: Colors.grey.withOpacity(0.8),
          ),
          CustomButton(
            title: "Install",
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
