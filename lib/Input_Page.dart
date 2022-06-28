import 'dart:math';

import 'package:bmi_calculator/iconButton.dart';
import 'package:bmi_calculator/result.dart';
import 'package:bmi_calculator/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator.dart';

import 'icon.dart';
import 'const.dart';

enum Gender { Male, Female }

class Input_Page extends StatefulWidget {
  const Input_Page({Key? key}) : super(key: key);
  @override
  State<Input_Page> createState() => _Input_PageState();
}

Gender? SelectedGender;

Color maleCardColor = kinactiveCardColor;
Color femaleCardColor = kinactiveCardColor;
int height = 180;
int Weight = 60;
int Age = 19;

class _Input_PageState extends State<Input_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c2d),
        title: Center(
          child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Reusable(
                    colour: SelectedGender == Gender.Male
                        ? maleCardColor = kactiveCardColor
                        : femaleCardColor = kinactiveCardColor,
                    UseColumn: UseColumn(FontAwesomeIcons.mars, "Male"),
                    ontap: () {
                      setState(() {
                        SelectedGender = Gender.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Reusable(
                    ontap: () {
                      setState(() {
                        SelectedGender = Gender.Female;
                      });
                    },
                    colour: SelectedGender == Gender.Female
                        ? femaleCardColor = kactiveCardColor
                        : maleCardColor = kinactiveCardColor,
                    UseColumn: UseColumn(FontAwesomeIcons.venus, "Female"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Reusable(
              colour: kcoloor,
              UseColumn: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: klabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: klabelStyle1,
                      ),
                      Text(
                        "cm",
                        style: klabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: Colors.pink,
                      overlayColor: Colors.pink[100],
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Reusable(
                    colour: kcoloor,
                    UseColumn: Column(
                      children: [
                        Text(
                          "Weight",
                          style: klabelStyle,
                        ),
                        Text(
                          Weight.toString(),
                          style: klabelStyle1,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              iconButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    Weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              iconButton(
                                icon: FontAwesomeIcons.add,
                                onpress: () {
                                  setState(() {
                                    Weight++;
                                  });
                                },
                              )
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    colour: kcoloor,
                    UseColumn: Column(
                      children: [
                        Text(
                          "Age",
                          style: klabelStyle,
                        ),
                        Text(
                          Age.toString(),
                          style: klabelStyle1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            iconButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    Age--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            iconButton(
                                icon: FontAwesomeIcons.add,
                                onpress: () {
                                  setState(() {
                                    Age++;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              Calculator calc = Calculator(height: height, weight: Weight);

              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Result(bmiresult: calc.BMI(), resultext: calc.Getresult(),
                  text: calc.getInterpretation(),)));
            },
            child: Container(
              width: double.infinity,
              height: 80,
              color: Colors.pink,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text("CALCULATE YOUR BMI",
                    style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
