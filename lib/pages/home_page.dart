import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 30;
  int weight = 80;
  int height = 180;
  bool gender = true;
  double bmi = 80 / (1.8 * 1.8);
  String indicator = "Normal Weight";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F3FF),
        title: Text(
          "BMI Calculator",
          style: GoogleFonts.inter(
            color: Color(0xff081854),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            /// Age & Weight
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: GoogleFonts.inter(
                              color: Color(0xff2F2E41),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "$age",
                            style: GoogleFonts.inter(
                              fontSize: 60,
                              fontWeight: FontWeight.w700,
                              height: 1,
                              color: Color(0xff6C63FF),
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  if (age == 1) return;
                                  age--;
                                  setState(() {});
                                },
                                child: Image.asset(
                                  "assets/minus.png",
                                  height: 30,
                                ),
                              ),
                              SizedBox(width: 10),
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  if (age == 99) return;
                                  age++;
                                  setState(() {});
                                },
                                child: Image.asset(
                                  "assets/plus.png",
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight (KG)",
                            style: GoogleFonts.inter(
                              color: Color(0xff2F2E41),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "$weight",
                            style: GoogleFonts.inter(
                              fontSize: 60,
                              fontWeight: FontWeight.w700,
                              height: 1,
                              color: Color(0xff6C63FF),
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  if (weight == 10) return;
                                  weight--;
                                  setState(() {});
                                },
                                child: Image.asset(
                                  "assets/minus.png",
                                  height: 30,
                                ),
                              ),
                              SizedBox(width: 10),
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  if (weight == 200) return;
                                  weight++;
                                  setState(() {});
                                },
                                child: Image.asset(
                                  "assets/plus.png",
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            /// Height
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height (CM)",
                      style: GoogleFonts.inter(
                        color: Color(0xff081854),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "$height",
                      style: GoogleFonts.inter(
                        color: Color(0xff6C63FF),
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                    Slider(
                      inactiveColor: Color(0xffCCCCCC),
                      activeColor: Color(0xffCCCCCC),
                      thumbColor: Color(0xff6C63FF),
                      value: height.toDouble(),
                      min: 50,
                      max: 300,
                      onChanged: (val) {
                        height = val.toInt();
                        setState(() {});
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          "50cm",
                          style: GoogleFonts.inter(
                            color: Color(0xff060918),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "300cm",
                          style: GoogleFonts.inter(
                            color: Color(0xff060918),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            /// Gender
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gender",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Color(0xff081854),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Male",
                            style: GoogleFonts.inter(
                              color: Color(0xff081854),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5),
                          Switch(
                            activeColor: Color(0xff6C63FF),
                            inactiveTrackColor: Color(0xffF4F3FF),
                            inactiveThumbColor: Color(0xff6C63FF),
                            value: gender,
                            onChanged: (val) {
                              gender = val;
                              setState(() {});
                            },
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Female",
                            style: GoogleFonts.inter(
                              color: Color(0xff081854),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            /// Button
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6C63FF),
                      fixedSize: Size.fromHeight(55),
                    ),
                    onPressed: () {
                      double meter = height / 100;
                      bmi = weight / (meter * meter);
                      if (bmi < 18.5) {
                        indicator = "Underweight";
                      } else if (bmi < 25) {
                        indicator = "Normal Weight";
                      } else if (bmi < 30) {
                        indicator = "Overweight";
                      } else if (bmi < 35) {
                        indicator = "Obesity (Class I)";
                      } else {
                        indicator = "Obesity (Class II)";
                      }
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ResultPage(
                            bmi: bmi,
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Calculate BMI",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Your BMI is ${bmi.toStringAsFixed(2)}",
                    style: GoogleFonts.inter(
                      color: Color(0xff6C63FF),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 1,
                    ),
                  ),
                  Text(
                    "Your body is $indicator",
                    style: GoogleFonts.inter(
                      color: Color(0xff6C63FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
