import 'package:flutter/material.dart';

import 'star_icon.dart';

class DescriptionDetails extends StatelessWidget {
  final imagesUrls = [
    "detail_1.png",
    "detail_2.png",
    "detail_3.png",
    "detail_4.png",
    "detail_5.png",
    "detail_6.png",
    "detail_7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: SizedBox(
            height: 140,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(right: 20, left: index == 0 ? 20 : 0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:
                            Image.asset("assets/details/${imagesUrls[index]}")),
                  );
                }),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: new TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Based on unreal Egine 4, Dragon Raja SEA is an open world game with the extraordinary and immersive graphics.',
                      style: TextStyle(
                        color: Colors.white70,
                        letterSpacing: 1.2,
                        height: 1.7,
                      ),
                    ),
                    TextSpan(
                      text: '   Read more...',
                      style: TextStyle(
                        color: Color(0xff51469B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Reviews & Ratings",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Color(0xff51469B),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "4.5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          StarIcon(),
                          StarIcon(),
                          StarIcon(),
                          StarIcon(),
                          StarIcon(
                            isGrey: true,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "256 revires",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
