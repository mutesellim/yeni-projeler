import 'package:flutter/material.dart';
import 'package:flutter_projects/UI/pageView.dart';
import 'package:flutter_projects/UI/tab_ornek.dart';

import 'anasayfa.dart';
import 'aramasayfasi.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int secilenMenuItem = 0;
  List<Widget> tumSayfalar;
  Anasayfa sayfaAna;
  AramaSayfasi sayfaArama;
  PageViewOrnek pageViewOrnek;

  var keyAnaSayfa = PageStorageKey("key_ana_sayfa");
  var keyAramaSayfasi = PageStorageKey("key_arama_sayfa");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaAna = Anasayfa(keyAnaSayfa);
    sayfaArama = AramaSayfasi(keyAramaSayfasi);
    pageViewOrnek = PageViewOrnek();
    tumSayfalar = [sayfaAna, sayfaArama, pageViewOrnek];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: tumSayfalar[secilenMenuItem],
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.yellow,
          primaryColor: Colors.red,
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Anasayfa"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text("Ekle"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text("Kullanici"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              title: Text("Tab Bar"),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: secilenMenuItem,
          onTap: (index) {
            setState(() {
              secilenMenuItem = index;
              if (index == 3) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TabOrnek()))
                    .then((bb) => secilenMenuItem = 0);
              }
            });
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("mehmetbasik"),
              accountEmail: Text("mbasik@gmail.com"),
              currentAccountPicture: Image.asset("assets/images/resim.png"),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Ara"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.amber,
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Ana Sayfa"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
