import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/bottom_navigator_bar/call.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/bottom_navigator_bar/contacts.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/bottom_navigator_bar/emergency.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({super.key});

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indice,
          onTap: (index) {
            setState(() {
              indice = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Telefone',
            ),
            BottomNavigationBarItem(
              label: 'Contatos',
              icon: Icon(Icons.assignment_ind_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Samu',
              icon: Icon(Icons.contact_emergency_sharp),
            ),
          ]),
      body: IndexedStack(
        index: indice,
        children: [
          Call(),
          Contacts(),
          Emergency(),
        ],
      ),
    );
  }
}
