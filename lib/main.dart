import 'package:flutter/material.dart';
import 'package:flutter_projects/UI/digerformturleri.dart';
import 'package:flutter_projects/UI/drawer_layout.dart';
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
                child: Text("Beni Form Elemanları Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.yellow)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DigerFormElemanlari()));
                },
              ),
              RaisedButton(
                color: Colors.yellow,
                child: Text("Beni Font Kullanimi Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => fontKullanimi()));
                },
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text("Beni Grid View Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.yellow)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GridViewOrnek()));
                },
              ),
              RaisedButton(
                color: Colors.yellow,
                child: Text("Beni Tarih ve Saat Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TarihSaat()));
                },
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text("Beni Stepper Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.yellow)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StepperOrnek()));
                },
              ),
              RaisedButton(
                color: Colors.black,
                child: Text("Beni TextField Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.yellow)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TextFieldsIslemleri()));
                },
              ),
              RaisedButton(
                color: Colors.yellow,
                child: Text("Beni FormField Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FormFieldIslemleri()));
                },
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text("Beni DrawerMenu Uygulama Sayfasına Götür",
                    style: TextStyle(color: Colors.yellow)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrawerMenu()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
