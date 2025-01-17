# currency_converter

A new Flutter project. This is my first flutter project, and I really hope I work great on this. I'm trying my best and I really wish my hardwork would get me what I need. I'm pretty sure no one would read my frist project's readme file except me. So I'm letting it all out here. I hope I would make him happy with my work. My life is unpredictable right now, and I have a strong desire for my wish to be true. I don't think I've given it my best yet. I need to really work on what I wish for, I need to "achieve" it, afterall, the meaning of my name is "achievement" or "accomplishment". After what has happened in my life until now, I've realised many things in life. Such as, never prioritize anything or anyone over deen. Love myself no matter what, I'm worthy enough and I should not at all care about what others think about me, this was taught to me by someone, someone so special, who helped me realise that I'm not worthless, my opinions matter, my feelings matter, I...matter. Yes, I'm crying and I'm sad. But I hope future me wouldn't be. I hope I don't have any regrets in future, where I feel I never pushed myself hard enough. Good Luck :sed

Getting back to work, just wondering if I need to use // to comment or something, or I'm free to write anything here 
Okay so the steps for the app are:
1. Creating a variable that stores the converted currency value
2. Create a function that multiplies the value given by textfield with 81 (USD to INR) 
3. Store the value in the variable created
4. Display the value (converted amount)

Not sure if I should put it here or in the production code, but here it is.. this is the structure of class when you need to create a stateful widget (I'm not really understanding the concept, so I'll just follow the structure):-
1. Parent Class:
-> Create a class that extends StatefulWidget.
-> It defines what the widget is (e.g., a screen or a button that can change).
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key}); // Optional constructor
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
2. State Class:
-> Create a private class (starting with _) that extends State.
-> This is where you write all the logic (e.g., updates, UI building).
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is a stateful widget')),
    );
  }
}


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
