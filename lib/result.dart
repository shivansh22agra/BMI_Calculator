import 'dart:html';

import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String? bmiresult;
  final String? resultext;
  final String? text;

  Result({required this.bmiresult, required this.resultext,required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "BMI CALCULATOR",
              style: klabelStyle,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                "Your Result",
                style: klabelStyle1,
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Expanded(
                        flex: 3,
                        child: Text(
                          resultext!.toUpperCase(),
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    Center(
                      child: Expanded(
                        flex: 3,
                        child: Text(
                          bmiresult.toString(),
                          style: klabelStyle1,
                        ),
                      ),
                    ),
                    Center(
                      child: Expanded(
                          flex: 3,
                          child: Text(
                            text!,
                            style: klabelStyle,
                          )),
                    )
                  ],
                ),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kactiveCardColor),
              ),
            ),
            Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        "RE-Calculate",
                        style: klabelStyle,
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
