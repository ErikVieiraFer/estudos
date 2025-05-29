import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(
          color: Colors.limeAccent,
        ),
        itemBuilder: (context, index) {
          var nick = index + 1;
          return ListTile(
            title: Text('Usuario $nick'),
            subtitle: Text('online'),
            subtitleTextStyle: TextStyle(color: Colors.green),
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage(
                  'https://sm.ign.com/ign_br/screenshot/default/blob_wtbh.jpg'),
            ),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
