import "package:flutter/material.dart";
import "dart:math";
void main(){
  runApp(Dice());
}
class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rolling Dice",
      home: DicePage(),


    );
  }
}
class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.redAccent,
        ),
     body: Home()
    );

  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        children: [
          Text("KINDLY READ RULES TO PLAY",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),

                Card(
                  color: Colors.red[400],
                  child:   Text("  you have five chances \n"
                      "  1. BOTH PLAYER HAVE TO SELECT THEIR OWN DICE \n"
                       "                                                  \n"
                      "   1.1 BOTH PLAYERS HAVE FIVE CHANCES TO CLICK THEIR DICE AND GET NUMBERS(SCORES)\n"
                      "                                                  \n"
                      "   1.2 AT THE END WHEN BOTH PLAYER DONE WITH THEIR CHANCES THEN THE PLAYER WHO HAVE MORE SCORE(SUM OF ALL SCORES) WILL BE THE WINNER",
                  ),
                ),

         SizedBox(
           height: 50.0,
         ),


          Row(
            children: [

              Expanded(

                child: FlatButton(
                  splashColor: Colors.yellowAccent,
                  onPressed: () {
                    setState(() {

                      leftDiceNo= Random().nextInt(6)+1;

                    });
                  },
                  child: Image(
                    image: AssetImage("images/dice$leftDiceNo.png"),
                  ),
                ),
              ),

              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNo = Random().nextInt(6) + 1;

                    });
                  },
                  child: Image.asset("images/dice$rightDiceNo.png"),
                ),
              ),




            ],
          ),
        ],
      ),
    );

  }


  }








