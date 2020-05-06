import 'package:kimantara/models/product.dart';

class ProductsRepository{

  List<Product>  fetchAllProducts() {

    return [
      new Product("assets/logos/ratnadeep.webp", "Rukminipuri Colony",10, "10:00-10:30", 10, 0),
      new Product("assets/logos/ratnadeep.webp", "Hi-Tech City",10, "10:00-10:30", 500, 1),
      new Product("assets/logos/ratnadeep.webp", "Habsiguda",10, "10:30-11:00", 500, 2),
      new Product("assets/logos/ratnadeep.webp", "Jubilee Hills",10, "12:30-13:00", 250, 3),
      new Product("assets/logos/ratnadeep.webp", "Khajaguda",10, "13:00-13:30", 500, 4),
      new Product("assets/logos/ratnadeep.webp", "Kondapur",10, "13:00-13:30", 250, 5),
      new Product("assets/logos/ratnadeep.webp", "Kothapet",10, "15:00-15:30", 250, 6),
    ];
  }
  
}