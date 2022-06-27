import 'package:flutter/material.dart';
import 'package:flutter_proj/firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_proj/screens/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OMOO app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 45.0,
            color: Colors.orange,
          ),
          button: TextStyle(
            fontFamily: 'OpenSans',
          ),
          subtitle1: TextStyle(fontFamily: 'NotoSans'),
          bodyText2: TextStyle(fontFamily: 'NotoSans'),
        ), colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple
      ).copyWith(
          secondary: Colors.amber
      ),
        textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.teal),
      ),
        home: const LoginScreen(),
    );
  }
}
