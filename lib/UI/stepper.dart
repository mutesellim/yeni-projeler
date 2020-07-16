import 'package:flutter/material.dart';

class StepperOrnek extends StatefulWidget {
  @override
  _StepperOrnekState createState() => _StepperOrnekState();
}

class _StepperOrnekState extends State<StepperOrnek> {
  int _aktifStep = 0;
  String isim, mail, sifre;
  List<Step> tumStepler;
  bool hata = false;

  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Örneği"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: _tumStepler(),
          currentStep: _aktifStep,
          onStepContinue: () {
            setState(() {
              ileriButonKontrol();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              } else {
                _aktifStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text("Kullanıcı adı giriniz"),
        subtitle: Text("Kullanıcı adı Altbaşlık"),
        state: _stateleriAyarla(0),
        isActive: true,
        content: TextFormField(
          key: key0,
          decoration: InputDecoration(
              labelText: "UsernameLabel",
              hintText: "UsernameHint",
              border: OutlineInputBorder()),
          validator: _isimKontrol,
          onSaved: (girilenDeger) {
            isim = girilenDeger;
          },
        ),
      ),
      Step(
        title: Text("Mail giriniz"),
        subtitle: Text("Mail Altbaşlık"),
        state: _stateleriAyarla(1),
        isActive: true,
        content: TextFormField(
          key: key1,
          decoration: InputDecoration(
              labelText: "MailLabel",
              hintText: "MailHint",
              border: OutlineInputBorder()),
          validator: _emailKontrol,
          onSaved: (girilenDeger) {
            mail = girilenDeger;
          },
        ),
      ),
      Step(
        title: Text("Şifre giriniz"),
        subtitle: Text("Şifre Altbaşlık"),
        state: _stateleriAyarla(2),
        isActive: true,
        content: TextFormField(
          key: key2,
          decoration: InputDecoration(
              labelText: "ŞifreLabel",
              hintText: "ŞifreHint",
              border: OutlineInputBorder()),
          validator: (girilenDeger) {
            if (girilenDeger.length < 8) {
              return "En az 8 karakter giriniz";
            }
          },
          onSaved: (girilenDeger) {
            sifre = girilenDeger;
          },
        ),
      ),
    ];
    return stepler;
  }

  StepState _stateleriAyarla(int oankiStep) {
    if (_aktifStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else
      return StepState.complete;
  }

  void ileriButonKontrol() {
    switch (_aktifStep) {
      case 0:
        if (key0.currentState.validate()) {
          key0.currentState.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;
      case 1:
        if (key1.currentState.validate()) {
          key1.currentState.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;
      case 2:
        if (key2.currentState.validate()) {
          key2.currentState.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;
    }
  }

  String _emailKontrol(String mailler) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mailler))
      return 'Geçersiz mail';
    else
      return null;
  }

  String _isimKontrol(String isimler) {
    RegExp regex = RegExp("^[a-zA-Z]+\$");
    if (!regex.hasMatch(isimler))
      return 'Isim numara içermemeli';
    else
      return null;
  }
}
