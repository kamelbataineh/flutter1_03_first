import 'package:flutter/material.dart';
import 'void.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sing in"),
        ),
        body: Column(
          children: [
            Username(context),
            SizedBox(
              width: 33,
            ),
            PasswordField(context),
          ],
        ));
  }
}
