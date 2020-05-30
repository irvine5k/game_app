import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CategoriesWidget(),
    ]);
  }
}

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
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.red,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.red,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.red,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.red,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                    if (expanded)
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            )
                          ],
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
}
