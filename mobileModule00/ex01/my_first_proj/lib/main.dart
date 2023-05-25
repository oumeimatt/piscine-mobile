
import 'package:flutter/material.dart';

void main() {
  runApp(    
     MaterialApp(
      title: 'my first app',
      theme:ThemeData(
        scaffoldBackgroundColor : Colors.white,
      ),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool changeText = false;

  @override
  Widget build(context){
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration:  BoxDecoration(
                color : const Color.fromRGBO(98, 97, 28, 2),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                 Text( changeText ? 'Hello World' : 'A  simple text',
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromRGBO(246, 243, 242, 2),
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    
                  ),
                ),
              ),
            ),
            TextButton(
              style: 
                ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromRGBO(246, 243, 242, 3),
                  foregroundColor: const Color.fromRGBO(98, 97, 28, 3),
                  padding: const EdgeInsets.all(10.0),
                ),
              onPressed : (){
                setState(() {
                  changeText = !changeText;
                });
              },
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}