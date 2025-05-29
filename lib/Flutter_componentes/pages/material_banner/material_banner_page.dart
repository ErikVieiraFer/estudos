import 'package:flutter/material.dart';

class MaterialBannerPagePage extends StatelessWidget {
  const MaterialBannerPagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final materialBanner = MaterialBanner(
                    content: Text('Usuário Salvo com Sucesso!!!'),
                    backgroundColor: Colors.amber,
                    //Sempre tem que ter uma action no Material Banner
                    //Caso receba um array vazio, irá dar erro
                    actions: [
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: Text('Cancelar'))
                    ],
                  );

                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(materialBanner);
                },
                child: Text('Simple Material Banner')),
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
