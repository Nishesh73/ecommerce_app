import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier with ChangeNotifier{
  // bool _isdarkMode = false;//it will give status of theme dark or light
  // bool get darkMod => _isdarkMode;// to access private varaiable _isdarkMode, only outside this class
  ThemeData _currentTheme = ThemeData.light();//getting current theme status
  ThemeData get currentTheme => _currentTheme;//to access current theme

  //access the value from ThemeNotifier
  ThemeNotifier({bool isLight=true}){
    // means if no value is provided then it will use default value i.e true otherwise it will
    // use the value provided
   

    if(isLight){
      _currentTheme = ThemeData.light();
    }
    else _currentTheme = ThemeData.dark();


  }

  //toggle the theme
  toogleTheme()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(_currentTheme==ThemeData.light()){
       
     _currentTheme = ThemeData.dark();
     
     sharedPreferences.setBool("isLight", false);//write data in preferenc database
      notifyListeners();
    }
    else{
      _currentTheme = ThemeData.light();
      
     sharedPreferences.setBool("isLight", true);
      notifyListeners();
    }

  }

  // ThemeNotifier(){
  //   loadThemeState();
  // }

  // toogleTheme()async{
  //   _isdarkMode = !_isdarkMode;
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setBool("isDak", _isdarkMode);
  //   notifyListeners();
  // }
 //reading the bool value from sharepreference
 //while using the shareprefernce you may see glimpse of light thme(if your default theme is light)
 // even your preserved theme state is dark because the ui show default theme, before getting the
 //preserve theme value from sharepreference
 //To resolve this we can delay the rendering till we get the sharprefernce value
  // loadThemeState()async{
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //  _isdarkMode =  sharedPreferences.getBool("isDak")??false;
  //  notifyListeners();//rebuild widget


  // }
  // getTheme(){
  //   return _isdarkMode?ThemeData.dark():ThemeData.light();
  // }



}



