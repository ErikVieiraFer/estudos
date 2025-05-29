import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeColor = Colors.blue;
    // final themeColor2 = const Color.fromARGB(82, 33, 149, 243);
    // Utilizar o 0xFF + Numero exadecimal
    final themeColor3 = Color(0xFF7132C4);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: themeColor3,
        ),
      ),
    );
  }
}
