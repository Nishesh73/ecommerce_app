import 'package:ecommerceapp/models/product.dart';

class Shop{

  //product for sale

  List<Product> shop = [

    Product(price: 10,description: "ramro",name: "puma"),
    Product(price: 20,description: "nramro",name: "nike"),
    Product(price: 30,description: "dhramro",name: "adidas"),
    Product(price: 40,description: "aramro",name: "mike"),
  ];

//user cart
List<Product> _cart = [];
//get user cart
List<Product> get cart=> _cart;


//add item to cart
addToCart(Product item){
  _cart.add(item);
}
//remove from cart
removeFromCart(Product item){
  _cart.remove(item);
}

}