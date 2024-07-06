void main() {
  Car car1 = Car(name: 'Suzuki', yearModel: 1996);
  print(car1.name);
  print(car1.yearModel);
}

class Car {
  String? name;
  int? yearModel;
  Car({this.name, required this.yearModel});
}
