import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar =
                      SnackBar(content: Text('Usuário Salvo com Sucesso!!!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Simple SnackBar')),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Usuário não encontrado!!!'),
                    backgroundColor: Colors.amber,
                    action: SnackBarAction(
                        label: 'Desfazer',
                        onPressed: () {
                          print('Clicado');
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Action SnackBar')),
          ],
        ),
      ),
    );
  }
}
