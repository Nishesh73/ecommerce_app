import "package:ecommerceapp/components/my_drawer.dart";
import "package:ecommerceapp/components/my_producttile.dart";
import "package:ecommerceapp/models/shop.dart";
import "package:flutter/material.dart" ;
import "package:provider/provider.dart";
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //acess the product list from shop
    //here watch and read are quite similar, differnce is watch, rebuild the ui
    //when accessing object, read doesnot
    final prod = context.read<Shop>().shop;
    //context.read<Shop>() acts as object of class Shop to access list shop and the prod
    //here acts as variable as well as object
    //final prod, means variable prod value donot change later in the code
        return Scaffold(
          
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.pushNamed(context, "/cartpage");
        }, icon: Icon(Icons.shopping_cart))],
        title: Text("Shop page"),
        backgroundColor: Colors.transparent,//here appbar is transparent
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      drawer: MyDrawer(),
      body: Column(
        
        
        children: [
          Text("Pick from the following products"),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              
              
              itemCount: prod.length,
              //it will do iternation no of times == itemcount
              
              itemBuilder: (context, index){
            
                return MyProductTile(prouctItem: prod[index]);
                //prod[index] Product instance at the specific index
              }),
          ),
        ],
      ),
    );
  }
}