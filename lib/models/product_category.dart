import 'package:kimantara/models/product.dart';
import 'package:kimantara/models/category.dart';

class ProductCategory {

  Product _product;
  Category _category;
  
  ProductCategory(this._product, this._category);
  
  Product get product => _product;

  Category get category => _category;
}
