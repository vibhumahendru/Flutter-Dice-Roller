import 'package:flutter/material.dart';
import 'dart:math';

 
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png"); 
  AssetImage diceImage;
  AssetImage diceImageTwo;

  @override
  void initState(){
    super.initState();
    setState(() {
      diceImage = one; 
      diceImageTwo = one;   
    });
  }

  void rollDice(){
    int random = (1+ Random().nextInt(6));
    int randomTwo = (1+ Random().nextInt(6));
    print("rolled!");
    AssetImage newImage; 
    AssetImage newImageTwo; 

    switch (random) {
      case 1 :
        newImage = one;
        break;
      case 2 :
        newImage = two;
        break;  
      case 3 :
        newImage = three;
        break;  
      case 4 :
        newImage = four;
        break;
      case 5 :
        newImage = five;
        break; 
      case 6 :
        newImage = six;
        break;     
      default:
    }
    switch (randomTwo) {
      case 1 :
        newImageTwo = one;
        break;
      case 2 :
        newImageTwo = two;
        break;  
      case 3 :
        newImageTwo = three;
        break;  
      case 4 :
        newImageTwo = four;
        break;
      case 5 :
        newImageTwo = five;
        break; 
      case 6 :
        newImageTwo = six;
        break;     
      default:
    }
    setState(() {
      diceImage = newImage; 
      diceImageTwo = newImageTwo; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),  
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
                width: 200.0,
                height: 200.0, 
              ),
              Image(
                image: diceImageTwo,
                width: 200.0,
                height: 200.0, 
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0) 
                  ),
                  color: Colors.pink,
                  // padding: EdgeInsets.all(20.0), 
                  onPressed: rollDice,
                  child: Text('Roll!'), 
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
} 