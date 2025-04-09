import 'package:flutter/material.dart';

class AppCount extends StatefulWidget {
  AppCount({super.key});

  @override
  State<AppCount> createState() => _AppCountState();
}

class _AppCountState extends State<AppCount> {
  int counter = 0;
  String message = "";

  check({required int value}) {
    if (value == 0) {
      message = "Zero";
    } else if (value > 0) {
      message = "Positive";
    } else {
      message = "Negative";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Count'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter Value",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${counter.toString()}",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color:
                    counter == 0
                        ? Colors.grey
                        : counter > 0
                        ? Colors.green
                        : Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "The Sign is: $message",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      counter++;
                      check(value: counter);
                    });
                  },
                  icon: Icon(Icons.add),
                  label: Text("Increment"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      counter--;
                      check(value: counter);
                    });
                  },
                  icon: Icon(Icons.remove),
                  label: Text("Decrement"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
