import 'package:flutter/material.dart';
import 'details_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Screen")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Details"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailsScreen()),
            );
          },
        ),
      ),
    );
  }
}