import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/botoes_rotacao_textp_page/botoes_rotacao_texto_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/bottom_navigator_bar/bottom_navigator_bar.dart';
import 'package:flutter_maonamassa_navegacao/pages/cidades/cidades_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/circlea_vatar/circle_avatar_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/dialogs/dialogs_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/forms/forms_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/layout_builder/layout_builder.dart';
import 'package:flutter_maonamassa_navegacao/pages/media_query/media_query.dart';
import 'package:flutter_maonamassa_navegacao/pages/scrolls/list_view_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/scrolls/singlechieldscrowview_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/snackbar/snackbar_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/stack/stack_page.dart';

import 'pages/container/container_page.dart';
import 'pages/home_page/home_page.dart';
import 'pages/rows_columns/rows_columns_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.amber),
          primaryColor: Colors.amber,
          primaryColorLight: const Color.fromARGB(255, 244, 193, 54),
          primaryColorDark: Colors.amberAccent,
          primarySwatch: Colors.blue,
          fontFamily: 'Roboto',
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ))),
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnsPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/botoes_rotacao_texto_page': (_) => BotoesRotacaoTextoPage(),
        '/scrolls/singlechieldscrowview_page': (_) =>
            SinglechieldscrowviewPage(),
        '/scrolls/list_view_page': (_) => ListViewPage(),
        '/dialogs/dialogs_page': (_) => DialogsPage(),
        '/snackbar/snackbar_page': (_) => SnackbarPage(),
        '/forms/forms_page': (_) => FormsPage(),
        '/cidades/cidades_page': (_) => CidadesPage(),
        '/stack/stack_page': (_) => StackPage(),
        '/bottom_navigator_bar': (_) => BottomNavigatorBarPage(),
        '/circle_avatar': (_) => CircleAvatarPage(),
      },
    );
  }
}
