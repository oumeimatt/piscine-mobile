
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme:const  AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
          ),
        )
      ),
      
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Calculator'),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(right: 10.0),
              color: const Color.fromARGB(255, 58, 71, 78),
              alignment: Alignment.topRight,
              child: const Text(
                '0',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255,102, 124, 137)
                  ),
              ),
            ),
             Expanded(
              child:Container(
                padding: const EdgeInsets.only(right: 10.0),
                color: const Color.fromARGB(255, 58, 71, 78),
                alignment: Alignment.topRight,
                child: const Text(
                  '0',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255,102, 124, 137)
                    ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                customOutlineButton("7"),
                customOutlineButton("8"),
                customOutlineButton("9"),
                customOutlineButton("C"),
                customOutlineButton("AC"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("4"),
                customOutlineButton("5"),
                customOutlineButton("6"),
                customOutlineButton("+"),
                customOutlineButton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("1"),
                customOutlineButton("2"),
                customOutlineButton("3"),
                customOutlineButton("x"),
                customOutlineButton("/"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("0"),
                customOutlineButton("."),
                customOutlineButton("00"),
                customOutlineButton("="),
                customOutlineButton(" "),

              ],
            ),
          ],
        ),
    );
  }
  Color myChangeColor(String val){
    List<String> clear = ['AC', 'C'];
    List<String> numbers = ['+','-', '/', 'x', '='];

    if (clear.contains(val)){
      return Colors.red;
    }
    else if (numbers.contains(val)){
      return Colors.white;
    }
    else{
      return const Color.fromARGB(255, 58, 71, 78);
    }
  }

  Widget customOutlineButton(String val) {
    return
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.10,
        width: MediaQuery.of(context).size.width * 0.20,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor:const  Color.fromARGB(255,102, 124, 137),
            shape: const ContinuousRectangleBorder(),
          ),
          onPressed: () => { print('button pressed: $val')},
          child: Text(
            val,
            style: TextStyle(fontSize: 20.0, color: myChangeColor(val)),
          ),
        ),
    );
  }

}