import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) {
                      return DialogCustom(context);
                    });
              },
              child: Text('Dialog')),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('SimpleDialog'),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Fechar Dialog'),
                        )
                      ],
                    );
                  },
                );
              },
              child: Text('Simple Dialog')),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert Dialog'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Deseja Realmente Salvar?'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Cancelar')),
                        TextButton(onPressed: () {}, child: Text('Confirmar'))
                      ],
                    );
                  });
            },
            child: Text('Alert Dialog'),
          ),
          ElevatedButton(
            onPressed: () async {
              final selectedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              print('O horario selecinado foi $selectedTime');
            },
            child: Text('Timer Picker'),
          ),
          ElevatedButton(
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030));
              },
              child: Text('Date Picker')),
        ],
      )),
    );
  }
}
