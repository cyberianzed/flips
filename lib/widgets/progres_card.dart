import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Container progresCard() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    height: 110,
    width: double.infinity,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
            color: Color(0x04000000),
            blurRadius: 10,
            spreadRadius: 20,
            offset: Offset(0.0, 0.0)),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SizedBox(height: ),
          const Text(
            "Continue wherer you left off",
            style: TextStyle(
              fontSize: 15,
              //color: Color(0xFFA0A5BD),
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: CircularPercentIndicator(
                  radius: 20.0,
                  lineWidth: 6.0,
                  percent: .62,
                  animation: true,
                  center: const Text(
                    "62%",
                    style: TextStyle(fontSize: 11),
                  ),
                  progressColor: const Color(0xff00a075),
                ),
              ),
              Expanded(
                child: ListTile(
                  // leading:
                  title: const Text(
                    "Environmental Sciences",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("21/24 flips"),
                  trailing: Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.lightGreenAccent[700],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
