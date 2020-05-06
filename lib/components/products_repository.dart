import 'package:kimantara/models/product.dart';

class ProductsRepository{

  List<Product>  fetchAllProducts() {

    return [
      new Product("assets/images/ratnadeep.png", "Rukminipuri Colony",10, "10:00-10:30", 10, 0),
      new Product("assets/images/ratnadeep.png", "Biona Organic Spelt Fusili Brown",10, "10:00-10:30", 500, 1),
      new Product("assets/images/ratnadeep.png", "Biona Organic Whole Spelt Spaghetti",10, "10:30-11:00", 500, 2),
      new Product("assets/images/ratnadeep.png", "Biona Organic Spelt Spinach Artisan Tagliatelle",10, "12:30-13:00", 250, 3),
      new Product("assets/images/ratnadeep.png", "Biona Organic Whole Spelt Penne",10, "13:00-13:30", 500, 4),
      new Product("assets/images/ratnadeep.png", "Biona Organic Spelt Spinach Artisan Tagliatelle",10, "13:00-13:30", 250, 5),
      new Product("assets/images/ratnadeep.png", "Biona Organic Spelt Fusilli Tricolore",10, "15:00-15:30", 250, 6),
    ];
  }
  
}