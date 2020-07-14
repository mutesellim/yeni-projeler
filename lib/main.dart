import 'package:flutter/material.dart';

import 'UI/gridview.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Projeleri",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: SayfaDegistir(),
    ),
  ));
}

class SayfaDegistir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            color: Colors.black,
            child: Text("Beni Uygulama Sayfasına Götür",style: TextStyle(color: Colors.yellow)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GridViewOrnek()));
            },
          )
        ],
      )),
    );
  }
}