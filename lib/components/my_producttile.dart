import 'package:ecommerceapp/models/product.dart';
import 'package:ecommerceapp/models/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
class MyProductTile extends StatelessWidget {
  //ui for the product
final  Product prouctItem;
  MyProductTile({super.key, required this.prouctItem});
  //in stateless widget we have to provide context, but in stateful widget we get context
  //from the state widget

  dialogShow(BuildContext context){

     showDialog(
      barrierDismissible: false,
      context: context, builder: (context){
      

      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)

        ),
         //pop up 
        title: Text("Do you want to add item in your cart?"),
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
            context.read<Shop>().addToCart(prouctItem);

           }, child: Text("Yes")),

        ],

      );

    });

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
      child: Container(
        
        decoration: BoxDecoration(color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
        ),
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: SizedBox(
            height: 700,//provide enough space for expanded widget to fill vertically
            //child height always ovveride parent height
            width: 200,
            
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              //to give strech proprty also provide the finite height in above sizedbox otherwise
              //it will throw an error
             //if we are using the expanded widget we have to make sure that expanded widget immediate
             //parent(i.e row, column or flex) have enough space to fill in, basically if not enough space
             //is there it will throw an error. space may be given to it's parent widget or the other
             //widget make sure it have enough space to fillin
             //if you donot use expanded widget no need to give extra space, as i give in above container,
             //listview builder height is enough
             //here listviewbuilder height is not taken by expanded view as widget nested one above another
             
              // it does n't matter where we provide the height or width we have to make sure that
              //  expanded widget gets enough space to fill in
               
              
              
              
              children: [
              Expanded(child: SizedBox(
                //provide enough space for expanded widget to fillup horizentally
                width: 400,
                //height
                
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        
                        child: Image.network(prouctItem.imagePath,
                        fit: BoxFit.cover,
                        )),
                    ),
                  ],
                ),
              )
                
                ),
              Text(prouctItem.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
              Text(prouctItem.description),
              //be aware of using the expanded widget here expanded widget will fill avaialable space
              //here since the space available is finit when i give more space to description or if i
              // write more word in description, then the overall ui of My_producttile will affected
              //like the height of image may decrase because extra space taken by description to 
              //compensate this image's container must shrink it's size because it is expanded widget
              // it will take space avaialable to it
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(prouctItem.price.toString()),


                    
                    GestureDetector(
                      onTap: () {
                        //show dialog
                        dialogShow(context);
                        
                      },
                      child: Container(
                                       decoration: BoxDecoration(color: const Color.fromARGB(255, 246, 237, 237),
                                       borderRadius: BorderRadius.circular(10)
                                       
                                       
                                       ),
                        
                    
                         child: Padding(
                           padding: const EdgeInsets.all(13.0),
                           child: Icon(Icons.add),
                         )
                      
                      
                      ),
                    ),
                  ],
                ),
              ),
            
            
            ],),
          ),
        ),
      ),
    );
  }
}