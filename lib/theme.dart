import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier{

  bool _darkTheme = false ;

  bool get darkTheme => _darkTheme;

  //toogleTheme
  toogleTheme(){
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    
     _darkTheme = !_darkTheme;
    // sharedPreferences.setBool("darkTheme", _darkTheme);
    notifyListeners();
  }
  //theme getting
  getTheme(){

    return _darkTheme?ThemeData.dark():ThemeData.light();
  }



}