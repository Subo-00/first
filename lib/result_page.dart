import 'package:flutter/material.dart';
import 'reusable_box.dart';
import 'constants.dart';
import 'calculating_bmi.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi,
      required this.bodyState,
      required this.interpretation});
  String bmi;
  String bodyState;
  String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Your Result',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              flex: 5,
              child: ReusableBox(
                colour: kActiveBoxColor,
                cardChild: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        bodyState,
                        style: TextStyle(
                            color: Colors.green.shade400,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        bmi,
                        style: kLabelNumberStyle.copyWith(fontSize: 80),
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 70,
                  color: Color(0xFFEB1555),
                  child: Center(
                      child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
