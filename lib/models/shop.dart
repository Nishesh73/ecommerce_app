import 'package:ecommerceapp/models/product.dart';
import 'package:flutter/material.dart';

class Shop with ChangeNotifier{

  //product for sale

  List<Product> shop = [

    Product(price: 10,description: "description : a very jjjjjjjjj",name: "product 1",
    imagePath: "https://images.unsplash.com/photo-1475312775467-159e03aaa7cd?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    Product(price: 20,description: "description 2",name: "product 2", 
    imagePath: "https://images.unsplash.com/photo-1712926353838-8994d12fe62f?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    Product(price: 30,description: "description 3",name: "product 3",
    imagePath: "https://images.unsplash.com/photo-1713098098833-f45d180ca9a2?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    Product(price: 40,description: "description 4",name: "product 4",
    imagePath: "https://images.unsplash.com/photo-1712869415582-6a21960fd389?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  ];

//user cart
List<Product> _cart = [];
//get user cart
List<Product> get cart=> _cart;


//add item to cart
addToCart(Product item){
  _cart.add(item);
  notifyListeners();
}
//remove from cart
removeFromCart(Product item){
  _cart.remove(item);
  notifyListeners();
}

}