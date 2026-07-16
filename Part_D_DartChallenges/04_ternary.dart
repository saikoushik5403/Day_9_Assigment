// Day 9 Dart Challenge 4: Ternary Even/Odd Checker

void main() {
  int testNumber1 = 28;
  int testNumber2 = 15;

  // Function to evaluate even/odd using modulo + ternary operator
  String checkEvenOdd(int num) {
    return (num % 2 == 0) ? "Even" : "Odd";
  }

  print("=== Ternary Condition Checker ===");
  print("Number $testNumber1 is: ${checkEvenOdd(testNumber1)}");
  print("Number $testNumber2 is: ${checkEvenOdd(testNumber2)}");
}
