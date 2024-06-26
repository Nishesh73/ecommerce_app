
import "package:ecommerceapp/components/my_listtile.dart";
import "package:ecommerceapp/theme.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        //drawer header
        DrawerHeader(child:   Icon(Icons.shopping_bag, size: 60,
          color: context.watch<ThemeNotifier>().darkTheme?Colors.black:const Color.fromARGB(255, 165, 158, 158),
          
          ),),
          //i can see horizental line provided by drawer, a default line
        //drawer body

      


         MyListTile(tap: (){
          Navigator.pushNamed(context, "/cartpage");
         },stringData: "Cart", iconData:  Icons.shopping_cart),
        //  in column the widget placed from top to bottom , but there is nothing that
        // will automatically push the widget to buttom. thus the spacer is used to 
        // create the space and alignment property will positioned the widget at the bottom
        MyListTile(tap: (){
          Navigator.pushNamed(context, "/setting");


        },stringData: "Settings", iconData:  Icons.settings),
   

         Spacer(),
             Container(
              alignment: Alignment.bottomCenter,
              //custom widget, just like string, number we can pass the function as parameter
              child: MyListTile(tap: (){
                Navigator.pushNamed(context, "/");//router name
              },stringData: "Exit", iconData:  Icons.logout)
              
              ),


      ],),
    );//return drawer
  }
}