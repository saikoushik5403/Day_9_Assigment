# Day 9 Assignment — Basics of Flutter & Dart

## Overview

This repository contains the complete Day 9 assignment (Assignment 35) covering the **Basics of Flutter & Dart**. This assignment bridges web technologies with cross-platform mobile development using the Dart language and Flutter's widget tree architecture.

All five parts have been implemented in their respective folders in the `day9-assignment` directory.

---

## Repository Structure

```
day9-assignment/
├── Part_A_Theory/
│   └── theory_answers.md               ← Answers to the 10 theory questions
│
├── Part_B_Exercises/
│   └── practical_exercises.md          ← Local flutter doctor diagnostics, steps for
│                                         Starter App, Scaffold Column, and Row/SizedBox layouts
│
├── Part_C_FlutterTasks/
│   ├── flutter_tasks.md                ← Code snippets for Task 1, 4, 5
│   └── student_profile_app/
│       └── lib/
│           └── main.dart               ← ⭐ Capstone App: Runnable project integrating Tasks 2-5
│
├── Part_D_DartChallenges/
│   ├── 01_variables.dart               ← Executable variables type checker
│   ├── 02_arithmetic.dart              ← Executable C-style and integer division operators
│   ├── 03_interpolation.dart           ← Executable string interpolation examples
│   ├── 04_ternary.dart                 ← Executable ternary even/odd checker
│   └── 05_collections.dart             ← Executable strongly-typed List and Map printer
│
├── Part_E_Research/
│   └── research_notes.md               ← Research on final/const, new widgets, null safety,
│                                         http package, and StatefulWidget lifecycles
│
├── .gitignore
└── README.md
```

---

## How to View & Run

### 1. Run Dart Challenges
To run the Dart challenges locally, ensure you have Dart installed and execute the scripts directly in your console:
```bash
cd Part_D_DartChallenges/
dart 01_variables.dart
dart 02_arithmetic.dart
dart 03_interpolation.dart
dart 04_ternary.dart
dart 05_collections.dart
```

### 2. Run the Capstone Flutter App
To run the Student Profile App:
1. Ensure you have the Flutter SDK configured.
2. Navigate to the task directory:
   ```bash
   cd Part_C_FlutterTasks/student_profile_app/
   ```
3. Run the app on a connected device/emulator:
   ```bash
   flutter run
   ```

*Submitted as part of the Web & Mobile Development Course — Day 9 Assignment.*
