import 'package:flutter/material.dart';

class TarihSaat extends StatefulWidget {
  @override
  _TarihSaatState createState() => _TarihSaatState();
}

class _TarihSaatState extends State<TarihSaat> {
  DateTime suan = DateTime.now();

  @override
  Widget build(BuildContext context) {
    DateTime ucAyOnce = DateTime(2021, suan.month - 3);
    DateTime yirmiGunSonrasi = DateTime(2019, 1, suan.day + 20);
    TimeOfDay suankiSaat=TimeOfDay.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Date time picker"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Tarih Sec"),
              color: Colors.green,
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: suan,
                        firstDate: yirmiGunSonrasi,
                        lastDate: ucAyOnce)
                    .then((secilenTarih) {
                  debugPrint(secilenTarih.toString());
                });
              },
            ),
            RaisedButton(
              child: Text("Saat Sec"),
              color: Colors.yellow,
              onPressed: () {
                showTimePicker(context: (context), initialTime: suankiSaat).then((secilenSaat) {
                  debugPrint(secilenSaat.format(context));
                  debugPrint(secilenSaat.hour.toString()+" : "+secilenSaat.minute.toString());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
