import 'package:ecommerceapp/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Themec change"),
        actions: [Switch(value: context.watch<ThemeNotifier>().darkTheme , onChanged: (_){
          context.read<ThemeNotifier>().toogleTheme();

        })],),
    );
  }
}