class House {
  int id;
  String name;
  double price;
  House(this.id, this.name, this.price);
  void display() {
    print('ID: $id, Name: $name, Price: $price');
  }
}

void main() {
  var h1 = House(1, 'Green Villa', 50000);
  var h2 = House(2, 'Blue House', 75000);
  var h3 = House(3, 'White Cottage', 90000);
  var houses = [h1, h2, h3];
  for (var h in houses) {
    h.display();
  }
}
