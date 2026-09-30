void main() {
  exercise1();
  exercise2();
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