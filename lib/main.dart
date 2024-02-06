import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App con Widgets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BasicWidget(color: Colors.blue, text: 'Basic Widget 1'),
              BasicWidget(color: Colors.green, text: 'Basic Widget 2'),
              BasicWidget(color: Colors.orange, text: 'Basic Widget 3'),
              SizedBox(height: 20),
              DesignWidget(color: Colors.red, text: 'Design Widget 1'),
              DesignWidget(color: Colors.purple, text: 'Design Widget 2'),
              DesignWidget(color: Colors.yellow, text: 'Design Widget 3'),
            ],
          ),
        ),
      ),
    );
  }
}

class BasicWidget extends StatelessWidget {
  final Color color;
  final String text;

  BasicWidget({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSnackbar(context, text);
      },
      child: Container(
        color: color,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

class DesignWidget extends StatelessWidget {
  final Color color;
  final String text;

  DesignWidget({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSnackbar(context, text);
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

void showSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: Duration(seconds: 1),
    ),
  );
}
