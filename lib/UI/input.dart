import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  String girilenMetin = "";
  FocusNode _focusNode;
  TextEditingController textEditingController1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode = FocusNode();
    textEditingController1 = TextEditingController();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    textEditingController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Islemleri"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FocusScope.of(context).requestFocus(_focusNode);
        },
        child: Icon(Icons.edit),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Max 30 Karakter olacak Şekilde Metin Giriniz",
              labelText: "Başlık",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            textInputAction: TextInputAction.done,
            autofocus: false,
            maxLength: 30,
            focusNode: _focusNode,
            controller: textEditingController1,
            onSubmitted: (String s) => girilenMetin = s,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.cyan,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                (girilenMetin),
                style: TextStyle(fontSize: 25, color: Colors.red),
              )),
        )
      ]),
    );
  }
}
