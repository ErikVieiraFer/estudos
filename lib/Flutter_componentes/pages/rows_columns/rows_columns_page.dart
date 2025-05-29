import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Rows & Columns'),
      ),
      body: Container(
        width: 450,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              child: Text('Elemento 1'),
            ),
            Text('Elemento 2'),
            Text('Elemento 3'),
            Container(
              height: 200,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
