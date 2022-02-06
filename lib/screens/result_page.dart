import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import '../constants.dart';
import 'package:bmi_calculator/bmi_brain.dart';



class ResultPage extends StatelessWidget {
  ResultPage(this.brain);

 final CalculatorBrain brain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(top: 40,left: 24),
            child: Text("Your Result",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Expanded(
            child: MyCont(
              cardChild: Column(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(brain.calculate(),style:TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
                  Text(brain.getResult(),style: KChampionText
                  ),
                  Text(brain.getInterpretation(),style:TextStyle(
                    fontSize:22,

                  ),textAlign: TextAlign.center,)
                ],
              ),
              activation: false,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              color: KBottomContainerColor,
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10),
              child: Text("RECALCULATE",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    letterSpacing: 4,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
