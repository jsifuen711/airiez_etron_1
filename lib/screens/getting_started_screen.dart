import 'package:flutter/material.dart';

// added a stateless widget and body & child with center screen
class GettingStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Getting Started Screen'),
      ),
    );
  }
}
