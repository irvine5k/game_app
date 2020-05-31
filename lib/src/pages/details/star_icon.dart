import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  final bool isGrey;
  const StarIcon({
    Key key,
    this.isGrey = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
          height: 20,
          width: 20,
          child: isGrey
              ? Image.asset("assets/star.png",
                  color: Colors.grey.withOpacity(0.4))
              : Image.asset(
                  "assets/star.png",
                )),
    );
  }
}
