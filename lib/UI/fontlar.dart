import 'package:flutter/material.dart';

class fontKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Flutter Font Dersleri"),
      ),
      body: Center(
        child: Text(
          "Kişisel Font Kullanımı",
          style: TextStyle(fontFamily: "Elyazisi", fontSize: 24),
        ),
      ),
    );
  }
}
