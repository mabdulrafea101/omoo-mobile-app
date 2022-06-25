import 'package:flutter/material.dart';
import 'package:flutter_proj/screens/drawer.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('OMOO HomePage'),
        ),
        drawer: const MyDrawer(),

        body: const Text("Hello OMOO user!!!"),

    );
  }
}
