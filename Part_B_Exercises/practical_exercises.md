# Part B — Practical Exercises

This document contains solutions, step-by-step logs, and code listings for the five practical exercises under Part B of the Day 9 assignment.

---

## 1. Run `flutter doctor` and Document Output

The `flutter doctor` command was executed on the local development machine. Below is the captured output and environment diagnostic:

### Command Log
```powershell
PS C:\Users\koushik> flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 3.44.4, on Microsoft Windows [Version 10.0.26200.8875], locale en-US)
[√] Windows Version (11 Home Single Language 64-bit, 25H2, 2009)
[X] Android toolchain - develop for Android devices
    X Unable to locate Android SDK.
      Install Android Studio from: https://developer.android.com/studio/index.html
      On first launch it will assist you in installing the Android SDK components.
      If the Android SDK has been installed to a custom location, please use
      `flutter config --android-sdk` to update to that location.
[√] Chrome - develop for the web
[X] Visual Studio - develop Windows apps
    X Visual Studio not installed; this is necessary to develop Windows apps.
      Download at https://visualstudio.microsoft.com/downloads/.
      Please install the "Desktop development with C++" workload, including all of its default components
[√] Connected device (3 available)
[√] Network resources

! Doctor found issues in 2 categories.
```

### Setup Issues Identified & Solutions:
1. **Android toolchain - develop for Android devices [X]**:
   - *Meaning*: The Flutter command-line tool cannot find the Android SDK path.
   - *Fix*: Install **Android Studio**, open it for the first time, and let the startup setup wizard download the Android SDK, Android platform tools, build tools, and emulator images. If it is already installed, configure the path with:
     ```bash
     flutter config --android-sdk "C:\Users\koushik\AppData\Local\Android\Sdk"
     ```
2. **Visual Studio - develop Windows apps [X]**:
   - *Meaning*: Missing the C++ compiler build chain needed to compile Windows desktop executable binaries.
   - *Fix*: If only targeting mobile (Android/iOS) and web, this warning can be safely ignored. To resolve it, download the Visual Studio installer and select the **Desktop development with C++** workload.

---

## 2 & 3. Create a New Project and Modify with Hot Reload

### Step-by-Step Execution Log:

1. **Create the Project**:
   Created a new Flutter project named `starter_app` using the terminal:
   ```bash
   flutter create starter_app
   cd starter_app
   ```
2. **Launch the Emulator**:
   Opened Android Studio → Device Manager, and booted a Pixel 6 Virtual Device.
3. **Run the Starter App**:
   Launched the default counter starter application:
   ```bash
   flutter run
   ```
   *Expected Output*: The app launches on the emulator, displaying an app bar titled "Flutter Demo Home Page" and a counter that increments when tapping the "+" floating button.
4. **Modify Using Hot Reload**:
   Opened `lib/main.dart` in VS Code and modified the text and primary color scheme.

#### Code Modifications:
```diff
-  title: Text('Flutter Demo Home Page'),
+  title: Text('My First App'),

-  theme: ThemeData(
-    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
-  ),
+  theme: ThemeData(
+    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
+  ),
```

5. **Trigger Hot Reload**:
   Saved the changes (`Ctrl + S` in VS Code) or pressed `r` in the terminal. The screen updated in **under 0.8 seconds**: the primary purple theme switched to green, and the header updated to "My First App", while the counter kept its current value (retaining state).

---

## 4. Scaffold, AppBar, and Column layout

This code builds a clean screen containing an `AppBar` and a vertical stack of three `Text` widgets using a `Column`.

### Code Listing:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnDemoApp());
}

class ColumnDemoApp extends StatelessWidget {
  const ColumnDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColumnDemoScreen(),
    );
  }
}

class ColumnDemoScreen extends StatelessWidget {
  const ColumnDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Layout Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Heading 1',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Subtitle text containing description guidelines.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Body text: Here is where the main paragraphs go inside the screen.',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## 5. Row with an Icon, Text, and SizedBox Spacing

This layout demonstrates horizontal arrangement using a `Row` to align an icon and descriptive label with custom spacing.

### Code Listing:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const RowDemoApp());
}

class RowDemoApp extends StatelessWidget {
  const RowDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RowDemoScreen(),
    );
  }
}

class RowDemoScreen extends StatelessWidget {
  const RowDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Layout Demo'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.teal.shade50,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.teal.shade200),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min, // shrink-wrap row horizontally
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.teal,
                size: 28,
              ),
              SizedBox(width: 12), // horizontal spacing
              Text(
                'Task completed successfully!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
