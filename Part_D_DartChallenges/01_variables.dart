// Day 9 Dart Challenge 1: Variable Declarations and Types

void main() {
  // Explicitly typed variables
  String studentName = "Sai Koushik";
  int studentAge = 20;
  double cgpa = 9.25;
  bool isEnrolledInCourse = true;

  // Type inference using var
  var currentCity = "Hyderabad"; // infers String
  var temperature = 32.5;        // infers double

  // Read-only variables (final & const)
  final double runtimeConstantTime = DateTime.now().hour.toDouble(); // evaluated at runtime
  const double compileTimePi = 3.14159265;                           // evaluated at compile-time

  // Print results
  print("=== Variable Declarations ===");
  print("Name (String): $studentName");
  print("Age (int): $studentAge");
  print("CGPA (double): $cgpa");
  print("Enrolled (bool): $isEnrolledInCourse");
  print("City (var inferred String): $currentCity");
  print("Temperature (var inferred double): $temperature");
  print("Runtime Constant (final): $runtimeConstantTime");
  print("Compile Constant (const): $compileTimePi");
}
