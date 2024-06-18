import 'package:flutter/material.dart';
import 'package:flutter_big/IntroPage.dart';
import 'package:flutter_big/SlicePage.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: IntroPage(),
     home:SlicePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP', style: TextStyle(color: Colors.pink,fontWeight: FontWeight.normal),),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [



            Container(
              margin: EdgeInsets.only(
                top:40 ,
                right: 190,
              ),
              child: Text(
                "Name",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(right: 35, left: 40,bottom:10 ),
              child: TextField(

              ),
            ),

            Container(
              margin: EdgeInsets.only(
                right: 190,
              ),
              child: Text(
                "Email",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(right: 35, left: 40,bottom:10 ),
              child: TextField(

              ),
            ),

            Container(
              margin: EdgeInsets.only(
                right: 128,
              ),
              child: Text(
                "Mobile Number",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(right: 35, left: 40,bottom:10 ),
              child: TextField(


              ),
            ),
            Container(
              margin: EdgeInsets.only(
              right: 164
              ),
              child: Text(
                "Password",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(right: 35, left: 40,bottom:10 ),
              child: TextField(
               obscureText: true,
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                right: 115,

              ),
              child: Text(

                "RetypePasswords",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(right: 35, left: 40,bottom:10 ),
              child: TextField(
             obscureText: true,
              ),
            ),

            Container(
              width: 250,
              height: 60,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),

                onPressed: () {

                },
                child: const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(right: 5, top: 10),
                        child: Container(
                          margin: EdgeInsets.only(left: 70),
                          child: Text(
                            "Already have an account?",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 5, top: 8),
                    child: Text(
                      "Login",
                      style: TextStyle(

                        fontSize: 12,
                        color: Colors.pink,
                      ),
                    ),
                  ),

              ],
            ),
          ],
        ),
      ),

    );}
}
