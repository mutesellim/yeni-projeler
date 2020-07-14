import 'package:toast/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Ana Uygulama"),),
        body: GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        index += 1;
        return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.blue],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  image: DecorationImage(
                      image: AssetImage("assets/images/resim.png"),
                      alignment: Alignment.topCenter)),
              margin: EdgeInsets.all(20),
              child: Text(
                "Sağlık Çalışanları Sağolsun",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () => Toast.show(
                "$index. Sıradaki  Eleman Tıklandı", context,
                duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM));
      },
    ));
  }
}
/*
* GridView.count(
      crossAxisCount: 3,
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
    * */
