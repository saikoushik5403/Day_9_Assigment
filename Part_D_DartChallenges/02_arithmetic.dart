// Day 9 Dart Challenge 2: Arithmetic Operators

void main() {
  int num1 = 17;
  int num2 = 5;

  print("=== Arithmetic Operators (num1 = $num1, num2 = $num2) ===");
  
  // Standard addition, subtraction, multiplication
  print("Addition (+):        ${num1 + num2}");      // 22
  print("Subtraction (-):     ${num1 - num2}");      // 12
  print("Multiplication (*):  ${num1 * num2}");      // 85

  // Standard division (always returns a double)
  double divisionResult = num1 / num2;
  print("Division (/):        $divisionResult");     // 3.4

  // Modulo (returns remainder)
  print("Modulo (%):          ${num1 % num2}");      // 2

  // Integer Division (returns quotient as integer, discarding decimal)
  int integerDivResult = num1 ~/ num2;
  print("Integer Division (~/): $integerDivResult");  // 3
}
