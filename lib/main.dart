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
              side: const BorderSide(color: Colors.white, width: 2),
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

  int temp = 0;
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";
  String result = "0";
  String numbers = "";
  void calc(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        result = "0";
        num1 = 0.0;
        num2 = 0.0;
        numbers ="";
        operand = "";
      }
      else if (buttonText == "-" && result == "0") {
        result = "";
        numbers += buttonText;
        result = ("-$result");
      }
      else if (buttonText == "+" || buttonText == "-" || buttonText == "×" || buttonText == "÷") {
        num1 = double.parse(result);
        operand = buttonText;
        numbers += buttonText;
        result = "0";

      } else if (buttonText == ",") {
        if (!result.contains(",")) {
          result += ".";
          numbers += buttonText;
        }
      } else if (buttonText == "=") {
        num2 = double.parse(result);
        if (operand == "+") {
          if ((num1 + num2) % 1 == 0) {
            temp = (num1 + num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 + num2).toString();
          }
        }
        if (operand == "-") {
          if ((num1 - num2) % 1 == 0) {
            temp = (num1 - num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 - num2).toString();
          }
        }

        if (operand == "×") {
          if ((num1 * num2) % 1 == 0) {
            temp = (num1 * num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 * num2).toString();
          }
        }
      if (operand == "÷") {
        if (num2 == 0) {
          result = "You can't divide by 0";
        }
        else {
          if ((num1 / num2) % 1 == 0) {
      temp = (num1 ~/ num2);
      result = temp.toString();
      }
      else {
      result = (num1 / num2).toString();
      }
        }
      }
        num1 = 0.0;
        num2 = 0.0;
        operand = "";
      } else {
        if (result == "0") {
          result = buttonText;
          numbers += buttonText;
        } else {
          result += buttonText;
          numbers += buttonText;
        }
      }
    });
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
backgroundColor: Colors.black,
      body: Center(

        child: Column (
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 380,
              height: 220,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(numbers, style: const TextStyle(fontSize: 30, color: Colors.grey)),
                  Text(result, style: const TextStyle(fontSize: 40, color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                //button C ÷ × =
                OutlinedButton(onPressed: () => calc('C'), child: const Text("C", style: TextStyle(fontSize: 40, color: Colors.redAccent))),
                OutlinedButton(onPressed: () => calc('÷'), child: const Text("÷", style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent))),
                OutlinedButton(onPressed: () => calc('×'), child: const Text("×", style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent))),
                OutlinedButton(onPressed: () => calc('='), child: const Text("=", style: TextStyle(fontSize: 40, color: Colors.greenAccent))),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  <Widget>[
                //button 7 8 9 -
                OutlinedButton(onPressed: () => calc('7'), child: const Text("7", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc('8'), child: const Text("8", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc('9'), child: const Text("9", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc('-'), child: const Text("-", style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent))),

              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //button 4 5 6 +
                OutlinedButton(onPressed: () => calc('4'), child: const Text("4", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc('5'), child: const Text("5", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc('6'), child: const Text("6", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc('+'), child: const Text("+", style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent))),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //button 1 2 3 ,
                OutlinedButton(onPressed: () => calc('1'), child: const Text("1", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc('2'), child: const Text("2", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc('3'), child: const Text("3", style: TextStyle(fontSize: 40, color: Colors.white))),
                OutlinedButton(onPressed: () => calc(','), child: const Text(",", style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent))),


              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                //button 0 (in the center)
                //OutlinedButton(onPressed: () => calc('0'), child: const Text("0", style: TextStyle(fontSize: 40, color: Colors.white))),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: const Size(380, 90),
                    maximumSize: const Size(380, 90),
                      side: const BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(360)
                    )
                  ),
                  onPressed: () => calc('0'), child: const Text('0', style: TextStyle(fontSize: 40, color: Colors.white)),
                )

              ],
            ),
          ],

        ),

      ),
    );
  }
}
