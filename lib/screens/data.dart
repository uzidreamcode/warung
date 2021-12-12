import 'package:flutter/material.dart';
class DaftarBuah extends StatelessWidget {

  var buah = ['apple.jpg', 'grapes.jpg', 'orange.jpg', 'pear.jpg', 'strawberry.jpg'];
  var namanya = ['Apel', 'Anggur', 'Jeruk', 'Pir', 'Stroberi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Buah-buahan"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: buah.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Hero(tag: namanya[index], child: Image.asset('images/'+buah[index]),),
              title: Text(namanya[index]),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailBuah('images/'+buah[index], namanya[index])));
              },
            );
          },
        ),
      ),
    );
  }
}