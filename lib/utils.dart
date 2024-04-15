
import 'package:flutter/material.dart';

//it is like global variable we can use in whole app
//if i donot declare color like below i can also access default bg, pri and
//secondary color
//without using themeData in theme: parameter we can access our custome color
//primary, secodnary etc, if we do we get other color

ThemeData themeData = ThemeData(colorScheme:ColorScheme.light(
background: Colors.grey.shade300,
  primary: Colors.grey.shade200,
  secondary: Colors.white,
  inversePrimary: Colors.grey,
  
));