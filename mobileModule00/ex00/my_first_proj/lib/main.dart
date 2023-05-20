
import 'package:flutter/material.dart';

void main() {
  runApp(    
     MaterialApp(
      title: 'my first app',
      theme:ThemeData(
        scaffoldBackgroundColor : Colors.white,
      ),
      home: const MyHome(),
    ),
  );
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

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
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'A  simple text',
                  style: TextStyle(
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
                print('Button pressed');
              },
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}