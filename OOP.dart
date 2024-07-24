class Student {
  String name;
  int age;
  double gpa;

  Student(this.name, this.age, this.gpa);

  void displayInfo() {
    print('Name: $name, Age: $age, GPA: $gpa');
  }
}

class Mobile {
  String brand;
  String model;
  int year;

  Mobile(this.brand, this.model, this.year);

  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

void main() {
  Student student1 = Student('Sarwech', 20, 3.8);
  Student student2 = Student('Shaheer', 22, 3.5);

  student1.displayInfo();
  student2.displayInfo();

  Mobile mobile1 = Mobile('Apple', 'iPhone 14 Pro', 2023);
  Mobile mobile2 = Mobile('Samsung', 'Galaxy S23 Ultra', 2023);

  mobile1.displayInfo();
  mobile2.displayInfo();
}
