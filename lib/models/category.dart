class Category {

  int _id;
  String _name;
  String _desription;
  int _parentId;
  
  Category(this._id, this._name, this._desription, this._parentId);
  
  int get id => _id;
  
  String get name => _name;
  
  String get desription => _desription;
  
  int get parentId => _parentId;
}
