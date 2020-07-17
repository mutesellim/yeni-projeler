import 'package:flutter/material.dart';
import 'package:flutter_projects/UI/digerformturleri.dart';
import 'package:flutter_projects/UI/fontlar.dart';
import 'package:flutter_projects/UI/saatvetarih.dart';
import 'package:flutter_projects/UI/stepper.dart';
import 'package:flutter_projects/UI/textfield.dart';
import 'package:flutter_projects/UI/textform.dart';
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
    return Theme(
        data: ThemeData(primarySwatch: Colors.yellow),
        child: Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.black,
                child: Text("Beni Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.yellow)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => fontKullanimi()));
                },
              )
            ],
          )),
        ));
  }
}
