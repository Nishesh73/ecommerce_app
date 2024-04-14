import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
Function() tap;
IconData iconData;
String stringData;

  MyListTile({super.key, required this.tap, required this.iconData, required this.stringData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(iconData),
      ) ,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(stringData),
      ) ,
      onTap: tap ,



    );
  }
}