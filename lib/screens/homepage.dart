import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/drawer.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        

        body: Text("Hello OMOO user!!!"),

    );
  }
}
