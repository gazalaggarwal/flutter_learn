import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          DisplayOne(hint: "Enter First Number"),
          SizedBox(
            height: 30,
          ),
          DisplayOne(hint: "Enter Second Number"),
          SizedBox(
            height: 30,
          ),
          Text(
            "0",
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {},
                child: Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {},
                child: Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {},
                child: Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: () {},
                child: Icon(CupertinoIcons.divide),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DisplayOne extends StatelessWidget {
  const DisplayOne({super.key, this.hint = "Enter a number"});

  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(10)),
          hintText: "Enter a Number",
          hintStyle: TextStyle(
            color: Colors.black,
          )),
    );
  }
}
