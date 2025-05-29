import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    child: Text('Salvar'),
                  ),
                ),
                Icon(Icons.ac_unit)
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(10),
                minimumSize: Size(50, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              child: Text(
                'Salvar',
                style: TextStyle(color: Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.red,
                backgroundColor: Colors.blue,
                minimumSize: Size(120, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              child: Text('Salvar'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {},
                icon: (Icon(Icons.air)),
                label: Text('Modo avião')),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.black]),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Colors.black),
                ],
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Salvar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
