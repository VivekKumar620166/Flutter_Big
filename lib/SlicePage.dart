import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_big/IntroPage.dart';

class SlicePage extends StatefulWidget{
  @override
  State<SlicePage> createState() => _SlicePageState();
}

class _SlicePageState extends State<SlicePage> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds:1),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>IntroPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 6, 81),


      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 170,
              width: 170,
              margin: EdgeInsets.only(bottom: 10),
              child: Image.asset('assets/images/pngimg.com - birds_PNG108.png'),
            ),
               Container(

              child: Text(
                "WELCOME TO",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic

                ),
              ),
            ),

            Container(
              child: Text(
                "INFERNO",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}