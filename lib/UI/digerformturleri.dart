import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  @override
  _DigerFormElemanlariState createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxState = false;
  String sehir = "";
  bool switchState = false;
  double sliderDeger = 10;
  String secilenRenk="Kirmizi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle),
      ),
      appBar: AppBar(
        title: Text("Diğer Form Elemanlari"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi;
                });
              },
              activeColor: Colors.green,
              title: Text("Checkbox Title"),
              subtitle: Text("Checkbox Subtitle"),
              secondary: Icon(Icons.add),
              selected: true,
            ),
            RadioListTile<String>(
              value: "Hatay",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                });
              },
              title: Text("Hatay"),
              subtitle: Text("Altbaşlık"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile<String>(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                });
              },
              title: Text("Ankara"),
              subtitle: Text("Altbaşlık"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile<String>(
              value: "İstanbul",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                });
              },
              title: Text("İstanbul"),
              subtitle: Text("Altbaşlık"),
              secondary: Icon(Icons.map),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  switchState = deger;
                });
              },
              title: Text("Switch Tile"),
              subtitle: Text("Switch SubTile"),
              secondary: Icon(Icons.refresh),
            ),
            Slider(
              value: sliderDeger,
              onChanged: (yeniDeger) {
                setState(() {
                  sliderDeger = yeniDeger;
                });
              },
              max: 20,
              min: 10,
              divisions: 20,
              label: sliderDeger.toString(),
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.red,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Kırmızı"),
                    ],
                  ),
                  value: "Kirmizi",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.blue,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Mavi"),
                    ],
                  ),
                  value: "Mavi",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.green,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Yeşil"),
                    ],
                  ),
                  value: "Yesil",
                ),
              ],
              onChanged: (String secilen) {
                setState(() {
                  secilenRenk=secilen;
                });
              },
              hint: Text("Seciniz"),
              value: secilenRenk,
            ),
          ],
        ),
      ),
    );
  }
}
