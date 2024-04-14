import "package:ecommerceapp/components/my_listtile.dart";
import "package:flutter/material.dart";
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        //drawer header
        DrawerHeader(child:   Icon(Icons.shopping_bag, size: 60,
          color: Theme.of(context).colorScheme.inversePrimary,
          
          ),),
          //i can see horizental line provided by drawer, a default line
        //drawer body
        MyListTile(tap: (){},stringData: "Shop", iconData:  Icons.shop),
         MyListTile(tap: (){
          Navigator.pushNamed(context, "/cartpage");
         },stringData: "Cart", iconData:  Icons.shopping_cart),
        //  in column the widget placed from top to bottom , but there is nothing that
        // will automatically push the widget to buttom. thus the spacer is used to 
        // create the space and alignment property will positioned the widget at the bottom

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