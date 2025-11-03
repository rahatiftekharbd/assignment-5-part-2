class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;

  void display() {
    print('ID: $_id, Brand: $_brand, Color: $_color, Price: $_price');
  }
}

void main() {
  var c1 = Camera(1, 'Canon', 'Black', 80000);
  var c2 = Camera(2, 'Sony', 'Silver', 95000);
  var c3 = Camera(3, 'Nikon', 'Red', 88000);
  c1.display();
  c2.display();
  c3.display();
}
