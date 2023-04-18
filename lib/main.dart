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
            minimumSize: const Size(90, 90),
            maximumSize: const Size(90, 90),
              side: const BorderSide(color: Colors.blueGrey, width: 1.5),
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
  void calc(){

  }
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
              children: <Widget>[

                //button C ÷ × =
                OutlinedButton(onPressed: calc, child:const Text("C",style: TextStyle(fontSize: 40, color: Colors.redAccent))),
                OutlinedButton(onPressed: calc, child: const Text("÷",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text("×",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child:  const Text("=",style: TextStyle(fontSize: 40, color: Colors.greenAccent)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                //button 7 8 9 -
                OutlinedButton(onPressed: calc, child: const Text("7",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text("8",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text("9",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child:  const Text("-",style: TextStyle(fontSize: 40, color: Colors.white))),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //button 4 5 6 +
                OutlinedButton(onPressed: calc, child: const Text("4",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text("5",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text("6",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text("+",style: TextStyle(fontSize: 40, color: Colors.white)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //button 1 2 3 ,
                OutlinedButton(onPressed: calc, child: const Text("1",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text("2",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text("3",style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: calc, child: const Text(",",style: TextStyle(fontSize: 40, color: Colors.white))),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                //button 0 (in the center)
                OutlinedButton(onPressed: calc, child: const Text("0",style: TextStyle(fontSize: 40, color: Colors.white)),),

              ],
            ),
          ],

        ),

      ),
    );
  }
}
