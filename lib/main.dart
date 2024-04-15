

import 'package:ecommerceapp/models/shop.dart';
import 'package:ecommerceapp/pages/cart_page.dart';
import 'package:ecommerceapp/pages/intro_page.dart';
import 'package:ecommerceapp/pages/setting_page.dart';
import 'package:ecommerceapp/pages/shop_page.dart';
import 'package:ecommerceapp/theme.dart';

import 'package:ecommerceapp/utils.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()async{

 
  runApp(
  MultiProvider(providers: [
    //when we have multiple provider we use it
  ChangeNotifierProvider<Shop>(create: (context)=>Shop()),
    ChangeNotifierProvider<ThemeNotifier>(create: (context)=>ThemeNotifier())
  



  ],
    child: const MyApp())
  
  );
    
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: themeData,
      theme: context.watch<ThemeNotifier>().getTheme(),
    
      routes: {
        "/":(context)=>IntroPagr(),
        "/shoppage":(context)=>ShopPage(),
        "/cartpage": (context)=>CartPage(),
        "/setting": (context)=>Settings(),
        //"/"--this is route name serve as initial route, or home
        //"/shoppage"--this is also route name
        //context is genearrly used to access the location of widget within
        //widget tree

        
      },

      // home: IntroPagr(),


    );
    // return FutureBuilder(
    //   future: Future.delayed(Duration.zero) ,
    //   //Duration.zero essentially means no time at all, means immediately
    //   builder: (context, asynsnap){

    //     // if(asynsnap.connectionState==ConnectionState.waiting){
    //       //since we want to execute task immediately it will never enter into waiting blocks
    //       if(asynsnap.connectionState==ConnectionState.done){
    //     return   Builder(
    //       builder: (context) {
    //         return MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         theme: Provider.of<ThemeNotifier>(context).currentTheme,
    //         home: Settings(),
            
    //               );
    //       }
    //     );

    //     }

    //     return Center(child: CircularProgressIndicator());
    //     //acts as if else statement
   


    //   },
      
    // );
  }}