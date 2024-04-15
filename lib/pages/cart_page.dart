import 'package:ecommerceapp/components/my_button.dart';
import 'package:ecommerceapp/models/product.dart';
import 'package:ecommerceapp/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

//payment dialog
  payDialog(BuildContext context){

return  showDialog(
      // barrierDismissible: false,
      context: context, builder: (context){
      

      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)

        ),
         //pop up 
        content: Text("If you want to pay connect via payment method"),
    
        
      );
      }
      );

  }

  removeProduct(BuildContext context,Product productFromcart){

   return  showDialog(
      barrierDismissible: false,
      context: context, builder: (context){
      

      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)

        ),
         //pop up 
        title: Text("Do you want to remove item in your cart?"),
        actions: [

          TextButton(onPressed: (){
            Navigator.pop(context);
           
          }, child: Text("No")),
           TextButton(onPressed: (){
            //write-- both(acess and rebuild)
            //productItem acts as a object
            //dismiss dialog box
            Navigator.pop(context);
            //then add the product
            context.read<Shop>().removeFromCart(productFromcart);//individual item

           }, child: Text("Yes")),

        ],

      );

    });
    
  }


  @override
  Widget build(BuildContext context) {
    //specific instance of product is added in the cart and here related to
    //that instance we actually access the product
    //acess the cart list which is added
    var cartListProduct = context.watch<Shop>().cart;//it is actually a instance of
    //product place inside cart list, we access store in cartList
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child:cartListProduct.isEmpty?Center(child: Text("No item inside cart")): ListView.builder(
              shrinkWrap: true,
              itemCount: cartListProduct.length ,
              itemBuilder: (context, index){
              return ListTile(
                title: Text(cartListProduct[index].name),
                trailing: IconButton(onPressed: (){
                  removeProduct(context, cartListProduct[index] );
            
            
                }, icon: Icon(Icons.remove)),
            
            
              );
            
            
            }),
          ),
     cartListProduct.isEmpty?Text("") :    MyButton(tap: (){
            payDialog(context);


          }, widget: Text("Pay now"))
        ],
      ),

    );
  }
}