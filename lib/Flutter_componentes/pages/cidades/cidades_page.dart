import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/cidades/model/cidade.dart';

class CidadesPage extends StatefulWidget {
  const CidadesPage({super.key});

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    final cidadesJson = await rootBundle.loadString('assets/cidades.json');
    setState(() {
      var cidadesList = json.decode(cidadesJson) as List<dynamic>;
      cidades = cidadesList.map((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades'),
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          var cidade = cidades[index];
          return ListTile(
            title: Text(cidade.cidade),
            subtitle: Text(cidade.estado),
          );
        },
      ),
    );
  }
}
