import 'package:flutter/material.dart';
import 'package:game_app/src/bottom_app_bar_widget.dart';
import 'package:game_app/src/widgets/categories_widget.dart';
import 'package:game_app/src/widgets/custom_app_bar_widget.dart';
import 'package:game_app/src/widgets/custom_horizontal_list.dart';
import 'package:game_app/src/widgets/newComingSection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF040B17),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            CustomAppBar(
              height: MediaQuery.of(context).size.height * 0.3,
              title: 'Flutterando',
              textField: Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF1E2430),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Search the games...",
                    hintStyle: TextStyle(
                      color: Color(0xFF9B9DA3),
                      fontSize: 14,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF9B9DA3),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CategoriesWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Games you must try',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.32,
              child: HorizontalList(
                gameCardList: _getCardList(),
              ),
            ),
            NewComingSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }

  List<GameCard> _getCardList() => List.generate(
        5,
        (index) => GameCard(
          gameIconUrl: "https://i.imgur.com/1rCD5ly.png",
          gameCategory: "MMORPG",
          gameName: "Spin Arena $index",
          stars: 4.5,
          gameCoverUrl:
              "https://cdn-www.bluestacks.com/bs-images/54a5d819c7ea410c5863f3ee24c8c805-298x184.png",
        ),
      );
}
