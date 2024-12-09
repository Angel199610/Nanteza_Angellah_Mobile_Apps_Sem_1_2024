// a). flutter is an open UI source written by google
// Mobile Applications: Both Android and iOS apps.
//Web Applications

//b).
//Cross-Platform Development
// Fast Development with Hot Reload
// Beautiful UI with Custom Widgets

//c).
//Dart is an open-source programming language developed by Google
// Why Dart is Used with Flutter:
// Performance, it runs faster.
// Optimized for UI  ideal for building performant and scalable mobile applications.
// Single Language: Dart enables the development of both the app's logic and UI, reducing complexity.

//d).
//Hot Reload is a feature in Flutter that allows developers to see the changes made in the code instantly without losing the app’s current state.
// How Hot Reload Improves Productivity:
// Instant Feedback
// State Preservation, meaning developers don't have to navigate back to where they were after making changes.
// Quick Iterations: This leads to faster prototyping and iteration.

//e).
// Single Codebase: You can use one codebase to develop applications for both Android and iOS.

// Rich Widget Library: Flutter provides a rich set of highly customizable widgets that make it easy to create beautiful.

// Strong Performance: they have high performance and can run smoothly even on lower-end devices.

//f).
// Stateless Widget: A widget that does not maintain any state. Once it is built, it cannot change its appearance based on user interaction or data changes.
// When to Use Stateless Widgets:
// For UI elements that do not change after they are rendered, such as a static label or a fixed image.
// Example:
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Hello, World!');
  }
}

// Stateful Widget: A widget that can change its appearance based on changes in state. It stores its state and can update itself when the state changes.
// When to Use Stateful Widgets:
// When the UI of the widget needs to update dynamically, for example, when handling user input, form submission, or animations.
// Example:
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Increment'),
        ),
      ],
    );
  }
}

//g).

// What is Flutter and What Types of Applications Can You Develop Using It?
// Flutter is an open-source UI software development kit (SDK) created by Google. It allows developers to build natively compiled applications for mobile (iOS and Android), web, desktop (Windows, macOS, Linux), and embedded devices from a single codebase.

// Types of Applications You Can Develop Using Flutter:

// Mobile Applications: Both Android and iOS apps.
// Web Applications: Responsive web apps that run in the browser.
// Desktop Applications: Native desktop applications for Windows, macOS, and Linux.
// Embedded Devices: Applications for devices like Raspberry Pi.
// Three Advantages of Using Flutter for Mobile Application Development:
// Cross-Platform Development: You can write one codebase and deploy it on both Android and iOS, which significantly reduces development time and cost.

// Fast Development with Hot Reload: Hot reload allows developers to instantly see changes in the code without restarting the app, speeding up the development process.

// Beautiful UI with Custom Widgets: Flutter comes with a rich set of customizable widgets and Material and Cupertino designs, enabling developers to create visually appealing apps with ease.

// What is the Dart Programming Language and Why is it Used with Flutter?
// Dart is an open-source programming language developed by Google. It is the primary language used for developing applications in Flutter.

// Why Dart is Used with Flutter:

// Performance: Dart compiles to native code, which allows Flutter applications to run faster.
// Optimized for UI: Dart's features (such as async/await and strong typing) make it ideal for building performant and scalable mobile applications.
// Single Language: Dart enables the development of both the app's logic and UI, reducing complexity.
// Explain the Concept of Hot Reload in Flutter. How Does It Improve Developer Productivity?
// Hot Reload is a feature in Flutter that allows developers to see the changes made in the code instantly without losing the app’s current state.

// How Hot Reload Improves Productivity:

// Instant Feedback: Developers can make changes in the code (UI or logic) and instantly see the results, making the development process faster.
// State Preservation: The app does not need to restart, and the app’s state is preserved, meaning developers don't have to navigate back to where they were after making changes.
// Quick Iterations: This leads to faster prototyping and iteration, reducing the time spent on testing and debugging.
// Three Features of Flutter That Make it a Popular Framework for Mobile Application Development:
// Single Codebase: You can use one codebase to develop applications for both Android and iOS, saving time and effort.

// Rich Widget Library: Flutter provides a rich set of highly customizable widgets that make it easy to create beautiful, responsive UIs.

// Strong Performance: Since Flutter apps are compiled to native code, they have high performance and can run smoothly even on lower-end devices.

// What Are Stateful and Stateless Widgets? Give an Example of When You Would Use Each.
// Stateless Widget: A widget that does not maintain any state. Once it is built, it cannot change its appearance based on user interaction or data changes.

// When to Use Stateless Widgets:

// For UI elements that do not change after they are rendered, such as a static label or a fixed image.
// Example:

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Hello, World!');
  }
}
// Stateful Widget: A widget that can change its appearance based on changes in state. It stores its state and can update itself when the state changes.
// When to Use Stateful Widgets:
// When the UI of the widget needs to update dynamically, for example, when handling user input, form submission, or animations.
// Example:

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Increment'),
        ),
      ],
    );
  }
}

//g).
// Dart Function to Take Two Integers as Input and Return Their Sum:
int addNumbers(int a, int b) {
  return a + b;
}

void main() {
  print(addNumbers(5, 3)); // Output: 8
}

//h).
// Dart Program to Check if a Number is Even or Odd:
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is Even');
  } else {
    print('$number is Odd');
  }
}

void main() {
  checkEvenOrOdd(4); // Output: 4 is Even
  checkEvenOrOdd(7); // Output: 7 is Odd
}

//i).
//Dart Program to Demonstrate the Use of a Map:

void main() {
  // Creating a map with names as keys and some values
  Map<String, String> names = {
    'first': 'Alice',
    'second': 'Bob',
    'third': 'Charlie'
  };

  // Adding more names to the map
  names['fourth'] = 'David';

  // Printing all the names from the map
  names.forEach((key, value) {
    print('$key: $value');
  });
}
// Expected Output:
// Copy code
// first: Alice
// second: Bob
// third: Charlie
// fourth: David
 


