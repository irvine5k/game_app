import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  Column buildIcon(String asset, String info, {Color color}) {
    return Column(
      children: <Widget>[
        Container(
          height: 20,
          width: 20,
          child: Image.asset(asset),
        ),
        const SizedBox(height: 5),
        Text(
          info,
          style: TextStyle(
            color: color ?? Color(0xff595D66),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://lh3.googleusercontent.com/SNw1mXFG8skVc1GNrnIQ2ytALJXPNBc8DFeDeMTOF8IisfhhtEgAPuUMki0ZgeyAP9c',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/dragonRaja.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Dragon Raja',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Archosaur Games',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildIcon('assets/star.png', '4.5+',
                      color: Color(0xffFAC672)),
                  buildIcon('assets/download.png', '435,123+'),
                  buildIcon('assets/memoryCard.png', '265 mb'),
                  buildIcon('assets/user.png', 'Arcade'),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 30,
              width: 30,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                iconSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
