
import 'package:ecommerceapp/components/my_button.dart';
import 'package:flutter/material.dart';
class IntroPagr extends StatelessWidget {
  const IntroPagr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background ,
      //to access custom color you must have to provide same object on the
      //theme: parameter
      
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          //icon
          Icon(Icons.shopping_bag, size: 60,
          color: Theme.of(context).colorScheme.inversePrimary,
          
          ),
          SizedBox(height: 10,),
          //texts
          Text("Minimal shop", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
           Text("High quality products", style: TextStyle(color: Colors.grey,),),
           MyButton(tap: (){
            Navigator.pushNamed(context, "/shoppage");

           }, widget: Icon(Icons.arrow_forward, size: 20,))
        
        
        ],),
      ),
    );
  }
}