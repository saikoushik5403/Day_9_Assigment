# Part A — Theory Questions: Basics of Flutter & Dart

---

### 1. Explain what Flutter is and why companies use it.

**Flutter** is Google's open-source UI software development kit (SDK) used to build beautiful, natively compiled applications for mobile (Android, iOS), web, and desktop from a single codebase.

**Why companies use it**:
- **Single Codebase**: Teams write code once in Dart and deploy it across iOS, Android, web, and desktop, cutting development time and costs in half.
- **High Performance**: Flutter bypasses JavaScript bridges and WebViews. It compiles directly to native ARM machine code and draws its own pixels using a high-performance rendering engine (Skia or Impeller).
- **Pixel-Perfect Consistency**: Since Flutter paints every pixel itself, the UI looks identical on all platforms, eliminating OS-specific styling bugs.
- **Hot Reload**: Developers see code updates on running devices/emulators in sub-second times, drastically accelerating team productivity.

---

### 2. Describe Flutter's three architectural layers and what each does.

Flutter is designed as a stack of three distinct layers:

```
+----------------------------------------------------+
| 1. FRAMEWORK LAYER (written in Dart)               |
|    - Material / Cupertino widgets                  |
|    - Rendering, Animation, Painting, Gestures      |
+----------------------------------------------------+
| 2. ENGINE LAYER (written in C/C++)                 |
|    - Graphics engine (Skia / Impeller)             |
|    - Dart VM runtime, text layout, platform pipes  |
+----------------------------------------------------+
| 3. EMBEDDER LAYER (written in Platform Native)     |
|    - Android (Java), iOS (Objective-C), Web/Desktop|
|    - Sets up threads, surfaces, and input bridges  |
+----------------------------------------------------+
```

1. **Framework Layer (Top)**: Written entirely in Dart. This is the API surface that developers interact with. It contains the Material and Cupertino widget sets, layout engines, gesture detectors, animations, and foundational painting code.
2. **Engine Layer (Middle)**: Written in C/C++. It handles the heavy lifting, including rendering graphics (using Skia or Impeller), compiling and executing Dart code (via the Dart VM), text rendering, and low-level file/network I/O.
3. **Embedder Layer (Bottom)**: Written in platform-specific languages (Java/C++ for Android, Objective-C/Swift for iOS, C++ for Windows). It acts as the "glue" that boots up the engine, creates the window surface for drawing, and translates native events (like touch inputs and system lifecycles) into Flutter-understandable events.

---

### 3. Explain what Dart is and how it relates to Flutter.

**Dart** is a client-optimized, object-oriented, strongly typed programming language developed by Google. It is designed for fast apps on any platform.

**Relationship to Flutter**:
- Dart is the programming language used to write Flutter applications.
- **Flutter is the framework** (the collection of UI tools, buttons, and layouts), whereas **Dart is the language** (the syntax, variables, conditions, and classes).
- Google chose Dart for Flutter because of its unique **compilation capabilities**:
  - **JIT (Just-In-Time) compilation** is used during development to enable **Hot Reload** by compiling new code changes instantly without restarting the app.
  - **AOT (Ahead-Of-Time) compilation** is used for production releases to compile Dart code directly into high-performance, native machine code for ARM and x64 architectures.

---

### 4. Explain the difference between `StatelessWidget` and `StatefulWidget`.

| Feature | `StatelessWidget` | `StatefulWidget` |
|---|---|---|
| **Mutable State** | **No**. It has no internal, changing data state. | **Yes**. It holds an associated `State` object that can mutate. |
| **Lifecycle** | Extremely simple: created and built once. | More complex: has `initState`, `setState` rebuilds, and `dispose`. |
| **How it updates**| Rebuilds only when parent widgets pass new inputs. | Can self-rebuild dynamically at runtime by calling `setState()`. |
| **Examples** | `Text`, `Icon`, `IconButton`, `CircleAvatar` | `TextField`, `Checkbox`, `Switch`, `Slider` |

---

### 5. Explain what a widget is and the meaning of "everything is a widget."

A **widget** in Flutter is a declarative description of a part of the user interface. It is a configuration object that defines structure, layout, styles, and even behavioral elements (like gesture detectors or themes).

**"Everything is a widget" philosophy**:
Unlike traditional web/mobile frameworks where layouts (XML/HTML), styles (CSS), and logic (JS/Kotlin) are separate, Flutter unifies all UI elements under a single abstraction:
- **Structural elements** (e.g., `Text`, `Image`) are widgets.
- **Layout structures** (e.g., `Row`, `Column`, `Center`) are widgets.
- **Styling constraints** (e.g., `Padding`, `SizedBox`, `Theme`) are widgets.
- **Interactions** (e.g., `GestureDetector`) are widgets.
- The entire application is a tree of nested widgets.

---

### 6. Explain the `build` method and what it returns.

The **`build` method** is the core lifecycle method of every widget. Its sole responsibility is to describe the user interface for that widget.

```dart
@override
Widget build(BuildContext context) {
  return Container();
}
```

- **What it returns**: It must return a single **`Widget`** object (which can be a tree containing many child widgets).
- **How it runs**: Flutter calls the `build` method automatically when the widget is first inserted into the tree, and subsequently re-runs it whenever the widget's inputs change or when `setState()` is called in a `StatefulWidget`.
- **The Context Parameter**: It receives a `BuildContext context`, which represents the widget's location/coordinates in the widget tree, allowing it to look up parent themes, screen sizes, or media configurations.

---

### 7. Explain what a `Scaffold` provides.

`Scaffold` is a pre-built helper widget from the Material library that implements the basic visual layout structure of a standard Material Design screen.

It provides named slots to easily position standard screen components:
- **`appBar`**: Places a header bar at the top of the screen containing titles, back buttons, and action menu items.
- **`body`**: The primary content region occupying the center of the screen.
- **`floatingActionButton`**: A circular button that floats in the bottom-right corner for primary actions.
- **`drawer`**: A slide-out navigation panel that appears from the left screen boundary.
- **`bottomNavigationBar`**: Tab buttons positioned along the bottom edge for high-level screen switching.
- **`bottomSheet`**: An expandable menu panel sliding up from the bottom of the screen.

---

### 8. Explain the difference between hot reload, hot restart, and full restart.

| Level | Speed | What it resets / keeps | When to use |
|---|---|---|---|
| **Hot Reload** | **Sub-second** (extremely fast) | Injects new code changes directly into the Dart VM **while keeping the current app state** (variables, inputs, navigation stack remain unchanged). | Tweaking UI styling, margins, colors, and basic widget build methods. |
| **Hot Restart** | **2–3 seconds** | Reloads the code and **resets the app state** back to its initial entry point (variables reset to defaults, navigation stack is cleared). | Modifying app state initializations, changing global themes, or editing `initState()`. |
| **Full Restart**| **Slowest** (recompiles native binaries) | Stops the app, rebuilds the native compilation files, and reinstalls/re-runs the app from scratch. | Modifying dependencies in `pubspec.yaml`, or updating native iOS/Android code. |

---

### 9. Explain how Dart variables (`var`, `final`, `const`) compare to JavaScript's.

| Dart Keyword | Meaning | JavaScript Equivalent | Key difference |
|---|---|---|---|
| **`var`** | Declares a mutable variable. The type is inferred from the initial value. | **`let`** | Once a type is inferred in Dart, you cannot assign a different type to it (e.g. assigning a `String` to an inferred `int` throws a compile error). |
| **`final`** | Declares a single-assignment variable. Once set, its value cannot be reassigned. | **`const` (Runtime)** | Set at runtime (e.g., `final now = DateTime.now();` is allowed because the value is determined when code executes). |
| **`const`** | Declares a compile-time constant. The value must be fully known before the app compiles. | **`const` (Compile-time)** | Value must be constant. Enables compiler optimizations by reusing the exact same instance in memory (e.g., `const Text('Hello')`). |

---

### 10. Describe the Flutter app lifecycle at a high level.

At a high level, the lifecycle of a Flutter app moves through the following stages:

```
[App Launch] ──► main() runs ──► runApp() ──► Build Widget Tree ──► Paint Pixels
                                                                        │
    ┌───────────────────────◄───────────────────────────────────────────┤
    ▼                                                                   ▼
[User Interaction] ──► Trigger Event Handler (onPressed) ──► setState() called ──► Rebuild Widgets
                                                                        │
    ┌───────────────────────────────────◄───────────────────────────────┘
    ▼
[App State Changes] (resumed, paused, inactive, detached) managed by OS
```

1. **App Startup**:
   - The OS launches the app, invoking the standard `main()` entry point.
   - `runApp(MyRootWidget())` is called to register the root widget of the tree.
2. **Initial Render**:
   - Flutter walks down the widget tree, calling `build()` methods to calculate layouts, resolve constraints, determine sizes, and paint pixels on the screen.
3. **User Interaction & State Updates**:
   - The app waits for user inputs (taps, scrolls).
   - Interaction triggers callback handlers (like `onPressed`).
   - If data changes, the app calls `setState()`, prompting Flutter to rebuild the affected widget branches and repaint the screen (declarative cycle).
4. **App System States**:
   - The app transitions through foreground/background states managed by the OS:
     - `resumed`: App is in the foreground, visible, and accepting inputs.
     - `inactive`: App is in a transitional state (e.g., receiving a phone call overlay).
     - `paused`: App is in the background (hidden from the user).
     - `detached`: App is being terminated by the OS.
