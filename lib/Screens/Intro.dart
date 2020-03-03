import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:samplecode/Common/Constants.dart' as cnst;

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              "images/background.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(color: Colors.black.withOpacity(0.1)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    "images/logo.png",
                    width: MediaQuery.of(context).size.width * 0.7,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        onPressed: () {},
                        textColor: Colors.white,
                        child: Text("LOGIN"),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        textColor: cnst.appPrimaryMaterialColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
