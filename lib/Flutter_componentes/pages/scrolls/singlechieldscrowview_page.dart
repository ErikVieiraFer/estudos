import 'package:flutter/material.dart';

class SinglechieldscrowviewPage extends StatelessWidget {
  const SinglechieldscrowviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
