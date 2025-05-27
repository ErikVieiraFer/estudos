import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context)
      : super(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              width: 300,
              height: 300,
              child: Column(
                children: [
                  Text('Projeto X'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Fechar Dialog'),
                  ),
                ],
              ),
            ));
}
