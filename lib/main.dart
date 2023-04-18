import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            padding: EdgeInsets.all(5),
              minimumSize: const Size(95, 95),
             maximumSize: const Size(95, 95),
            side: const BorderSide(color: Colors.white, width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(360),
            ),
          ),

        ),

        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black87,
        title: const Text ("Calculator",
        style: TextStyle(
        color: Colors.white
    ),
        ),
        centerTitle: true,
      ),
backgroundColor: Colors.blueGrey,
      body: Center(

        child: Column (
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 380,
              height: 240,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text("result",style: TextStyle(fontSize: 40)),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[

                //button C ÷ × =
                OutlinedButton(onPressed: null, child:Text("C",style: TextStyle(fontSize: 40, color: Colors.redAccent))),
                OutlinedButton(onPressed: null, child: Text("÷",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child: Text("×",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child:  Text("=",style: TextStyle(fontSize: 40, color: Colors.greenAccent)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                //button 7 8 9 -
                OutlinedButton(onPressed: null, child:Text("7",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child: Text("8",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child: Text("9",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child:  Text("-",style: TextStyle(fontSize: 40, color: Colors.white))),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                //button 4 5 6 +
                OutlinedButton(onPressed: null, child:Text("4",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child: Text("5",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child: Text("6",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child:  Text("+",style: TextStyle(fontSize: 40, color: Colors.white)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                //button 1 2 3 ,
                OutlinedButton(onPressed: null, child:Text("1",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child: Text("2",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: null, child: Text("3",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(style: ButtonStyle(),onPressed: null, child:  Text(",",style: TextStyle(fontSize: 40, color: Colors.white))),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                //button 0 (in the center)

                OutlinedButton(
                  onPressed: null,
                  child:Text("0",style: TextStyle(fontSize: 40, color: Colors.white)),),

              ],
            ),
          ],

        ),

      ),
    );
  }
}
