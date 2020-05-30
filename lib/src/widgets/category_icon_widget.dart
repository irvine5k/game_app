import 'package:flutter/material.dart';

class CategoryIconWidget extends StatelessWidget {
  const CategoryIconWidget({
    Key key,
    this.iconAsset,
    this.label,
  }) : super(key: key);

  final String iconAsset;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 50,
        width: 50,
        child: Column(
          children: <Widget>[
            Expanded(child: Image.asset(iconAsset)),
            const SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
