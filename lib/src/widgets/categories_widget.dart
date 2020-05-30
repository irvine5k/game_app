import 'package:flutter/material.dart';
import 'package:game_app/src/widgets/category_icon_widget.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  bool expanded = false;

  void toggleExpanded() => setState(() {
        expanded = !expanded;
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleExpanded,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: expanded ? 200 : 100,
        decoration: BoxDecoration(
          color: Color(0xff1F2430),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: AnimatedPadding(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(vertical: expanded ? 20 : 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _getIcons(),
                      ),
                    ),
                    if (expanded)
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: _getIcons(),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              height: 5,
              width: 25,
              decoration: BoxDecoration(
                color: Color(0xff4C5059),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  List<CategoryIconWidget> _getIcons() => [
        CategoryIconWidget(
          iconAsset: "assets/ball.png",
          label: "Sports",
        ),
        CategoryIconWidget(iconAsset: "assets/cards.png", label: "Card"),
        CategoryIconWidget(
          iconAsset: "assets/potion.png",
          label: "RPG",
        ),
        CategoryIconWidget(
          iconAsset: "assets/swords.png",
          label: "Action",
        ),
        CategoryIconWidget(
          iconAsset: "assets/user.png",
          label: "Arcade",
        ),
      ];
}
