// Day 9 Dart Challenge 3: String Interpolation

void main() {
  String programmingLanguage = "Dart";
  String targetFramework = "Flutter";
  int experienceWeeks = 1;

  // Simple interpolation (using $)
  print("=== String Interpolation ===");
  print("I am currently learning the $programmingLanguage language.");
  print("This language powers the $targetFramework app development framework.");

  // Complex expression interpolation (using ${})
  print("Next week, my experience level will be ${experienceWeeks + 1} weeks.");
  print("Uppercase language name: ${programmingLanguage.toUpperCase()}");
}
