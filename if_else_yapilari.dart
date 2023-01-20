import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
      home:MyApp()
  ));
}

class MyApp extends StatelessWidget{
  String mesaj = "Sınav Sonucu";
  String sonuc="";
  int not = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if(not >=50){
              sonuc="Gecti";
            }else{
              sonuc=" Kaldı";
            }
            var alert = AlertDialog(
              title: Text("Sınav sonucu"),
              content: Text(sonuc),
            );

            showDialog(context: context, builder: (BuildContext context) => alert);
          },
          child: Text("Sonucu gör"),
        ),
      ),
    );
  }

}