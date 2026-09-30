void main() {
  exercise1();
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