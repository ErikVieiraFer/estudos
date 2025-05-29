import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: [
          // SizedBox(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuIZbU5T0ncHQY1T2fL0rgzMErgjZ7UK7ELw&s'),
          //   ),
          ImageAvatar(
            urlImage:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuIZbU5T0ncHQY1T2fL0rgzMErgjZ7UK7ELw&s',
          ),
          SizedBox(
            width: 8,
          ),
          ImageAvatar(
            urlImage:
                'https://docs.flutter.dev/assets/images/dash/early-dash-sketches3.jpg',
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  const Color.fromARGB(255, 1, 54, 78),
                ],
                begin: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
              child: Text(
                'AO VIVO',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
