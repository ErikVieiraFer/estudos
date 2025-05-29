import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto_page,
  singlechieldscrowview,
  list_view_page,
  dialogs_page,
  snackbar_page,
  forms_page,
  cidades_page,
  stack_page,
  bottom_navigator,
  circle_avatar,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoes_rotacao_texto_page:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto_page');
                  break;
                case PopupMenuPages.singlechieldscrowview:
                  Navigator.of(context)
                      .pushNamed('/scrolls/singlechieldscrowview_page');
                  break;
                case PopupMenuPages.list_view_page:
                  Navigator.of(context).pushNamed('/scrolls/list_view_page');
                  break;
                case PopupMenuPages.dialogs_page:
                  Navigator.of(context).pushNamed('/dialogs/dialogs_page');
                  break;
                case PopupMenuPages.snackbar_page:
                  Navigator.of(context).pushNamed('/snackbar/snackbar_page');
                  break;
                case PopupMenuPages.forms_page:
                  Navigator.of(context).pushNamed('/forms/forms_page');
                  break;
                case PopupMenuPages.cidades_page:
                  Navigator.of(context).pushNamed('/cidades/cidades_page');
                  break;
                case PopupMenuPages.stack_page:
                  Navigator.of(context).pushNamed('/stack/stack_page');
                  break;
                case PopupMenuPages.bottom_navigator:
                  Navigator.of(context).pushNamed('/bottom_navigator_bar');
                  break;
                case PopupMenuPages.circle_avatar:
                  Navigator.of(context).pushNamed('/circle_avatar');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_columns,
                  child: Text('Rows & Columns'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('MediaQuery'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layout_builder,
                  child: Text('Layout Builder'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoes_rotacao_texto_page,
                  child: Text('Botões e Rotação de Texto'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.singlechieldscrowview,
                  child: Text('SingleChild ScrollView'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.list_view_page,
                  child: Text('List View'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs_page,
                  child: Text('Dialogs'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbar_page,
                  child: Text('SnacksBar'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms_page,
                  child: Text('Forms'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades_page,
                  child: Text('Cidades'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack_page,
                  child: Text('Stack'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottom_navigator,
                  child: Text('Bottom Navigator Bar'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circle_avatar,
                  child: Text('Circle Avatar'),
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: () {}, child: Text('Botão X')),
        ),
      ),
    );
  }
}
