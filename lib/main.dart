import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/botoes_rotacao_textp_page/botoes_rotacao_texto_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/bottom_navigator_bar/bottom_navigator_bar.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/cidades/cidades_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/circlea_vatar/circle_avatar_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/colors/colors_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/dialogs/dialogs_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/forms/forms_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/layout_builder/layout_builder.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/material_banner/material_banner_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/media_query/media_query.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/scrolls/list_view_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/scrolls/singlechieldscrowview_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/snackbar/snackbar_page.dart';
import 'package:flutter_maonamassa_navegacao/Flutter_componentes/pages/stack/stack_page.dart';

import 'Flutter_componentes/pages/container/container_page.dart';
import 'Flutter_componentes/pages/home_page/home_page.dart';
import 'Flutter_componentes/pages/rows_columns/rows_columns_page.dart';

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
        '/colors_page': (_) => ColorsPage(),
        '/material_banner': (_) => MaterialBannerPagePage(),
      },
    );
  }
}
