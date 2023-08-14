import 'dart:math';


import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Dice(),));
}class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  int rightdacenumber=1;
  int leftdacenumber=1;
  int centerdacenumber=1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:Text('DICE APP',
            textAlign:TextAlign.center,
          style: TextStyle(fontSize: 20),
          textDirection: TextDirection.ltr,),
      ),
      body: Center(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){random();}, child:Image.asset('images/dice$leftdacenumber.png')),
          TextButton(onPressed: (){random();}, child:Image.asset('images/dice$rightdacenumber.png')),
          TextButton(onPressed: (){random();}, child:Image.asset('images/dice$centerdacenumber.png'))
        ],
      )
      ),
    );
  }
  void random(){
    leftdacenumber=Random().nextInt(6)+1;
    rightdacenumber=Random().nextInt(6)+1;
    centerdacenumber=Random().nextInt(6)+1;
    setState(() {
      leftdacenumber;
      rightdacenumber;
      centerdacenumber;
    });
  }

}
