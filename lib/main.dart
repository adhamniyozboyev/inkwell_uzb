import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sizes = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        // splashColor: Colors.red,
        hoverColor: Colors.red,
        onTap: () {
          setState(() {
            sizes == 100 ? sizes = 200 : sizes = 100;
          });
        },
        child: AnimatedContainer(
          height: sizes,
          width: sizes,
          child: Image.asset(
            'images/friends.jpg',
          ),
          // curve: Curves.easeIn,
          duration: Duration(seconds: 1),
        ),
      ),
    ));
  }
}
