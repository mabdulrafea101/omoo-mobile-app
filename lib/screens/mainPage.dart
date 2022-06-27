import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter_proj/widgets/bottomNavigationBar.dart';
import 'package:flutter_proj/widgets/drawer.dart';
import 'package:flutter_proj/widgets/product_card.dart';

// function to trigger app build
void main() => runApp(const MyApp(title: 'OMOO F..D',));

class MyApp extends StatelessWidget {
  final appTitle = 'OMOO food';

  const MyApp({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    ); // MaterialApp
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: const Text("O M O O foods"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.orangeAccent[200],
        elevation: 50.0,

        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SingleChildScrollView(
      child: StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Column(
            children: [
              ListView(
                shrinkWrap: true,
                children:
                  const <Widget>[
                  Spacer(),
                  ElevatedCardExample(),
                  ElevatedCardExample(),
                  ElevatedCardExample(),
                  ElevatedCardExample(),
                  ElevatedCardExample(),
                  ElevatedCardExample(),
                  ElevatedCardExample(),
                  ElevatedCardExample(),
                  Spacer(),
            ],
            ),
            ]
          );
        }
      ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
