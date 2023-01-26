import 'package:btk_kodlari1/models/student.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  String mesaj = "Sınav Sonucu";
  List<student> students = [
    student("Jemal", "Musayeva", 95),
    student("Damla", "Aslan", 85),
    student("İlayda", "İnce", 47),
    student("Şaziye", "Dağ", 12)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(mesaj),
        ),
        body: buildBody(context));
  }

  void mesajGoster(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Sınav sonucu"),
     // content: Text(sinavHesapla(65)),
    );

    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://picsum.photos/536/354"),
                    ),
                    title: Text(students[index].firstName + " " + students[index].lastname ),
                    subtitle: Text("Sınavdan aldığı not : " + students[index].not.toString()),
                    trailing: buildStatusIcon(students[index].not),
                    onTap:(){
                      print(students[index].firstName + " " + students[index].lastname);
                    },
                  );
                })),
        Center(
          child: ElevatedButton(
            onPressed: () {
              mesajGoster(context);
            },
            child: Text("Sonucu gör"),
          ),
        ),
      ],
    );
  }

   Widget buildStatusIcon(int not) {
     if (not >= 50) {
       return Icon(Icons.done);
     } else if (not >= 40){
       return Icon(Icons.album);
     }else {
       return Icon(Icons.clear);
     }
   }

}
