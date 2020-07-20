import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatayEksen = true;
  bool pageSnapping = true;
  bool reverseSira = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: reverseSira,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("page changeden gelen veri $index");
            },
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo,
                child: Center(
                  child: Text("Sayfa 1"),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.red,
                child: Center(
                  child: Text("Sayfa 2"),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.yellow,
                child: Center(
                  child: Text("Sayfa 3"),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text("Yatay Eksende Çalış"),
                      Checkbox(
                        value: yatayEksen,
                        onChanged: (b) {
                          setState(() {
                            yatayEksen = b;
                          });
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text("Page Snapping"),
                      Checkbox(
                        value: pageSnapping,
                        onChanged: (b) {
                          setState(() {
                            pageSnapping = b;
                          });
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text("Ters Sira"),
                      Checkbox(
                        value: reverseSira,
                        onChanged: (b) {
                          setState(() {
                            reverseSira = b;
                          });
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
