# Part C — Flutter Tasks

This document contains code listings and explanations for the five Flutter Tasks assigned under Part C of the Day 9 assignment.

All tasks are unified and implemented in a running project located in:
[Part_C_FlutterTasks/student_profile_app/lib/main.dart](file:///C:/Users/koushik/.gemini/antigravity-ide/scratch/day9-assignment/Part_C_FlutterTasks/student_profile_app/lib/main.dart)

---

## Task 1: Simple "About Me" Screen

Builds a basic screen showcasing personal information with an avatar and introductory paragraph.

### Code Block:
```dart
class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Me')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
            SizedBox(height: 16),
            Text('Sai Koushik', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('I am an aspiring web and mobile developer studying Computer Science.', textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
```

---

## Task 2 & 3: Capstone Student Profile App with Re-styled & Added Sections

Recreates the profile dashboard of Section 27, customized with my own information, and extends it with a **fourth custom section** ("Education & Hobbies").

### Visual Hierarchy:
- **Profile Header**: Centered avatar, name, and subtitle.
- **Section 1: About**: Narrative paragraph.
- **Section 2: Skills**: Horizontal rows showing checklists.
- **Section 3: Contact**: Clickable email and phone information.
- **Section 4: Education & Interests (Added)**: Custom grid cards indicating degree, college, and hobbies.

*The full implementation is coded in the Capstone project file.*

---

## Task 4: Styled Container Box Model

Demonstrates the CSS box model equivalent in Flutter: padding, margin, border, rounded corners, shadows, and background decoration.

### Code Block:
```dart
Widget buildBoxModelDemo() {
  return Container(
    padding: const EdgeInsets.all(16), // space inside
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // space outside
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12), // border-radius: 12px
      border: Border.all(color: Colors.blue.shade100, width: 1.5),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 8,
          offset: const Offset(0, 4), // box-shadow offset Z-axis
        ),
      ],
    ),
    child: const Text(
      'Styled Container representing the CSS Box Model.',
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
    ),
  );
}
```

---

## Task 5: Centered Avatar & Name Screen

Positions an avatar, name label, and subtitle dynamically in the geometric center of the device screen.

### Code Block:
```dart
class CenteredProfileScreen extends StatelessWidget {
  const CenteredProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // center horizontally
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue.shade600,
              child: const Text('SK', style: TextStyle(fontSize: 32, color: Colors.white)),
            ),
            const SizedBox(height: 16),
            const Text(
              'Sai Koushik',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
            const Text(
              'Computer Science Student',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
```
