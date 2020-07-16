import 'package:flutter/material.dart';

class FormFieldIslemleri extends StatefulWidget {
  @override
  _FormFieldIslemleriState createState() => _FormFieldIslemleriState();
}

class _FormFieldIslemleriState extends State<FormFieldIslemleri> {
  String _adSoyad, _sifre, _mail;

  bool otomatikKontrol = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          accentColor: Colors.green,
        ),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.save),
          ),
          appBar: AppBar(
            title: Text("TextFormField"),
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: formKey,
              autovalidate: otomatikKontrol,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle),
                        hintText: "Ad Soyad Giriniz",
                        labelText: "Ad Soyad",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 4))),
                    validator: _isimKontrol,
                    onSaved: (deger) => _adSoyad = deger,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email Giriniz",
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 4))),
                    validator: _emailKontrol,
                    onSaved: (deger) => _mail = deger,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Şifre Giriniz",
                        labelText: "Şifre",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 4))),
                    validator: (String girilenVeri) {
                      if (girilenVeri.length < 8)
                        return "En az 8 karakter giriniz";
                      else
                        return null;
                    },
                    onSaved: (deger) => _sifre = deger,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton.icon(
                    icon: Icon(Icons.save),
                    label: Text("KAYDET"),
                    color: Colors.yellow,
                    onPressed: _girisBilgileriniOnayla,
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void _girisBilgileriniOnayla() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    } else {
      setState(() {
        otomatikKontrol = true;
      });
    }
  }

  String _emailKontrol(String mail) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mail))
      return 'Geçersiz mail';
    else
      return null;
  }

  String _isimKontrol(String isim) {
    RegExp regex = RegExp("^[a-zA-Z]+\$");
    if (!regex.hasMatch(isim))
      return 'Isim numara içermemeli';
    else
      return null;
  }
}
