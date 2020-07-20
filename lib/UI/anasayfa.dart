import 'package:flutter/material.dart';
import 'package:flutter_projects/models/Veri.dart';

class Anasayfa extends StatefulWidget {
  Anasayfa(Key k) : super(key: k);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List<Veri> tumVeriler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumVeriler = [
      Veri("Biz Kimiz", false, "Icerik"),
      Veri("Biz Kimiz2", false, "Icerik"),
      Veri("Biz Kimiz3", false, "Icerik"),
      Veri("Biz Kimiz4", false, "Icerik"),
      Veri("Biz Kimiz5", false, "Icerik"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          initiallyExpanded: tumVeriler[index].expanded,
          title: Text(tumVeriler[index].baslik),
          children: <Widget>[
            Container(
              color: index % 2 == 0 ? Colors.red : Colors.purple,
              height: 100,
              width: double.infinity,
              child: Text(tumVeriler[index].icerik),
            )
          ],
        );
      },
      itemCount: tumVeriler.length,
    );
  }
}
