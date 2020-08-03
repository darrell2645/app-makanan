import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String itemStok;
  final String itemImg;
  final String qty;

  const Detailpage(
      {Key key,
      this.itemJudul,
      this.itemSub,
      this.itemImg,
      this.itemStok,
      this.qty})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(itemJudul, style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: Image.asset(itemImg)),
            Text(
              'Bahan-bahan :',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              itemSub,
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Cara memasak :',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              qty,
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
