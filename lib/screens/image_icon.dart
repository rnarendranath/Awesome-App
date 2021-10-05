import 'package:flutter/material.dart';

class ImagesAndIcons extends StatefulWidget {
  const ImagesAndIcons({Key? key}) : super(key: key);
  static const String routeName = '/imagesicons';

  @override
  _ImagesAndIconsState createState() => _ImagesAndIconsState();
}

class _ImagesAndIconsState extends State<ImagesAndIcons> {
  bool liked = false;
  bool ring = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images And Icons"),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        ring = !ring;
                      });
                    },
                    icon: Icon(
                      Icons.alarm,
                      color: ring ? Colors.blue : Colors.red,
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
