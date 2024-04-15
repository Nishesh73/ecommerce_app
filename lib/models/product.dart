class Product{
  //model define the structure of data define in application, and it is easy
  //to maintain data trhough model
 final String name; 
 //for every object we have only one value thats why final keyword is used
  final int price;
  final String imagePath;
 final String description;
  Product({required this.name, required this.price, 
  required this.description, required this.imagePath});



}