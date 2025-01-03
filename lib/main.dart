import 'package:flutter/material.dart';
import 'second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '...'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseFontSize = 20.0;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Use .end for right alignment
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times - !:',
              ),
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: baseFontSize +
                      _counter.toDouble() *
                          2, // 2 pixels increase for each counter value
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text color
                  elevation: 5, // Remove elevation
                  shape: RoundedRectangleBorder(
                    // Border radius
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _counter = 0; // Reset the counter to zero
                  });
                },
                child: const Text('Reset Counter'), // Button label
              ),
              // Button to navigate to the second screen
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()),
                  );
                },
                child: const Text('Go to Second Screen'),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                backgroundColor: Colors.blue, // Change background color
                foregroundColor: Colors.white, // Change icon color
                elevation: 8, // Change elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Change shape
                ),
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 16), // Space between the buttons
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                backgroundColor: Colors.red, // Change background color
                foregroundColor: Colors.white, // Change icon color
                elevation: 8, // Change elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Change shape
                ),
                child: const Icon(Icons.remove),
              ),
            ]
            // This trailing comma makes auto-formatting nicer for build methods.
            ));
  }
}
