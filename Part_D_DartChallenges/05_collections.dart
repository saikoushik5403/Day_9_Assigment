// Day 9 Dart Challenge 5: Collections (Lists and Maps)

void main() {
  // Strongly typed List of skills
  List<String> skillsList = ["HTML5", "CSS3", "JavaScript", "Dart", "Flutter"];

  // Strongly typed Map of contact information
  Map<String, String> contactInfoMap = {
    "email": "saikoushik5403@gmail.com",
    "phone": "+91 98765 43210",
    "github": "github.com/saikoushik5403",
    "city": "Hyderabad"
  };

  print("=== Dart Collections ===");

  // Printing List contents
  print("\n--- Skills List ---");
  for (int i = 0; i < skillsList.length; i++) {
    print("Skill [${i + 1}]: ${skillsList[i]}");
  }

  // Printing Map contents
  print("\n--- Contact Info Map ---");
  contactInfoMap.forEach((key, value) {
    // Capitalize key for cleaner display
    String formattedKey = key[0].toUpperCase() + key.substring(1);
    print("$formattedKey: $value");
  });
}
