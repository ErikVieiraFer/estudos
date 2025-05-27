import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            ),
          ),
          Container(
            color: Colors.pink,
            width: 150,
            height: 150,
          ),
        ],
      ),
    );
  }
}
