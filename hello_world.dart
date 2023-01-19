
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  String mesaj = "Hello World!";
  runApp(MaterialApp(
    home: Scaffold( // navigasyon menü kısmı
      appBar: AppBar( //uygulama barı
        title: Text(mesaj),
      ),
      body: Center(
        child: Text("Govde metni"),
      ),
    ),
  ));

}
