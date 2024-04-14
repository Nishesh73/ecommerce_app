
import 'package:flutter/material.dart';

//it is like global variable we can use in whole app
//if i donot declare color like below i can also access default bg, pri and
//secondary color

ThemeData themeData = ThemeData(colorScheme:ColorScheme.light(
background: Colors.grey.shade300,
  primary: Colors.grey.shade200,
  secondary: Colors.white,
  inversePrimary: Colors.grey,
  
));