import 'package:awesome_app/screens/forms.dart';
import 'package:awesome_app/screens/stack_example.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // Navigate to another screen
              Navigator.of(context).pushNamed(StackScreen.routeName);
            },
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Text("Stack"),
                  trailing: Text("04/10/2021"),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                  thickness: 1,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to forms screen
              Navigator.of(context).pushNamed(Forms.routeName);
            },
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Text("Forms"),
                  trailing: Text("05/10/2021"),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
