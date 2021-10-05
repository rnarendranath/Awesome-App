import 'package:flutter/material.dart';

class ImagesAndIcons extends StatefulWidget {
  ImagesAndIcons({Key? key}) : super(key: key);
  static const routeName = '/imagesAndIcons';

  @override
  State<ImagesAndIcons> createState() => _ImagesAndIconsState();
}

class _ImagesAndIconsState extends State<ImagesAndIcons> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Column(
            children: <Widget>[
              const Image(
                image: AssetImage('assets/images/bg.jpeg'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      setState(() {
                        liked = !liked;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: liked ? Colors.red : Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
