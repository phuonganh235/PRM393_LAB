void main() {
  exercise1();
  exercise2();
  exercise3();
  exercise4();
  //exercise5();
}

// Ex1
void exercise1() {
  print('===== Exercise 1 =====');

  int age = 23;
  double gpa = 3.45;
  String name = 'Pham Thi Phuong Anh';
  bool isStudent = true;

  // print(name);
  // print(age);
  print('Name: $name');
  print('Age: $age, next year: ${age + 1}');
  print('GPA: ${gpa.toStringAsFixed(1)}');
  print('Is student? $isStudent');
  print('Name has ${name.length} characters');

  var city = 'Ha Noi';
  final createdAt = DateTime.now();
  const pi = 3.14159;

  print('City: $city, pi = $pi');
  print('Created at: $createdAt');
  print('Runtime type of gpa: ${gpa.runtimeType}');
}

// Ex2
void exercise2() {
  print('\n===== Exercise 2 =====');
  List<int> numbers = [5, 10, 15, 20];
  print('List: $numbers');
  print('Element at index 0: ${numbers[0]}');

  numbers.add(25);
  numbers.remove(10);
  print('After add & remove: $numbers');

  int a = numbers[0];
  int b = numbers[1];
  print('$a + $b = ${a + b}');
  print('$b - $a = ${b - a}');
  print('$a * $b = ${a * b}');
  print('$b / $a = ${b / a}');
  print('$b ~/ $a = ${b ~/ a}');
  print('$b % $a = ${b % a}');

  print('$a == $b ? ${a == b}');
  print('$a < $b ? ${a < b}');

  bool bothPositive = a > 0 && b > 0;
  print('Both positive (&&): $bothPositive');

  String bigger = a > b ? 'a is bigger' : 'b is bigger';
  print('Ternary result: $bigger');

  Set<String> fruits = {'apple', 'banana', 'apple', 'orange'};
  print('Set: $fruits');
  fruits.add('mango');
  fruits.remove('banana');
  print('Set after add/remove: $fruits');
  print('Contains apple? ${fruits.contains('apple')}');

  Map<String, int> scores = {'Alice': 90, 'Bob': 75};
  scores['Charlie'] = 82;
  scores.remove('Bob');
  print('Alice score: ${scores['Alice']}');
  print('Map: $scores');
  print('Keys: ${scores.keys}, Values: ${scores.values}');
}

// Ex3
void exercise3() {
  print('\n===== Exercise 3 =====');
  int score = 78;
  if (score >= 85) {
    print('Score $score -> Excellent');
  } else if (score >= 70) {
    print('Score $score -> Good');
  } else if (score >= 50) {
    print('Score $score -> Average');
  } else {
    print('Score $score -> Fail');
  }
  int day = 3;
  String dayName;
  switch (day) {
    case 1:
      dayName = 'Monday';
    case 2:
      dayName = 'Tuesday';
    case 3:
      dayName = 'Wednesday';
    case 4:
      dayName = 'Thursday';
    case 5:
      dayName = 'Friday';
    case 6:
    case 7:
      dayName = 'Weekend';
    default:
      dayName = 'Invalid day';
  }
  print('Day $day is $dayName');
  List<String> subjects = ['Math', 'Physics', 'Dart'];

  // Cách 1: for có biến đếm
  for (int i = 0; i < subjects.length; i++) {
    print('for     -> [$i] ${subjects[i]}');
  }

  // Cách 2: for-in
  for (var s in subjects) {
    print('for-in  -> $s');
  }

  // Cách 3: forEach
  subjects.forEach((s) => print('forEach -> $s'));

  print('add(3, 4) = ${add(3, 4)}');
  print('square(5) = ${square(5)}');
  greet('An');
  greet('Binh', greeting: 'Xin chao');
}

int add(int a, int b) {
  return a + b;
}

int square(int x) => x * x;

void greet(String name, {String greeting = 'Hello'}) =>
    print('$greeting, $name!');

// Ex4
class Car {
  String brand;
  int speed = 0;

  Car(this.brand);
  Car.withSpeed(this.brand, this.speed);
  void drive() => print('$brand is driving at $speed km/h');
  String describe() => 'Car: $brand';
}
class ElectricCar extends Car {
  int battery;
  ElectricCar(super.brand, this.battery);
  @override
  void drive() => print('$brand is driving silently, battery $battery%');
  @override
  String describe() => 'ElectricCar: $brand (battery $battery%)';
}
void exercise4() {
  print('\n===== Exercise 4 =====');

  Car car1 = Car('Toyota');
  car1.drive();
  Car car2 = Car.withSpeed('Honda', 60);
  car2.drive();
  ElectricCar tesla = ElectricCar('Tesla', 85);
  tesla.drive();
  print('Tesla battery: ${tesla.battery}%');
  List<Car> garage = [car1, car2, tesla];
  for (var c in garage) {
    print(c.describe());
  }
}
