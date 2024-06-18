import 'package:flutter/material.dart';
import 'package:flutter_big/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void printMessage() {
    print('user accepted the agreement');
  }

  bool isPassVisible = true;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool is_checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: 170,
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Image.asset('assets/images/birdpng.parspng.com-5.png'),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 50,
                ),
                child: Text(
                  "WELCOME BACK,",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Text(
                  "Sign in to continue",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, top: 2),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.only(right: 35, left: 40),
                child:
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(Icons.account_box_outlined, color: Colors.pink),
                      onPressed: () {
                        print("access found");
                      },
                    ),
                  ),
                  validator: (val) {
                    if (val?.isEmpty ?? true) {
                      return "Email is required";
                    } else if (!RegExp(r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(val!)) {
                      return "Enter a valid email address";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 48,
                ),
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.only(right: 35, left: 40),
                child:
                TextFormField(
                  obscureText: isPassVisible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(isPassVisible ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          isPassVisible = !isPassVisible;
                        });
                      },
                    ),
                    prefixIcon: IconButton(
                      icon: Container(
                        child: Icon(Icons.lock_outline, color: Colors.pink),
                      ),
                      onPressed: () {
                        print("access found");
                      },
                    ),
                  ),
                  validator: (val) {
                    if (val?.isEmpty ?? true) {
                      return "Password is required";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Checkbox(
                      value: is_checked,
                      onChanged: (val) {
                        setState(() {
                          is_checked = val!;
                        });
                      },
                    ),
                  ),
                  Container(
                    child: Text(
                      "Remember Me",
                      style: TextStyle(fontSize: 12, color: Colors.pink),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 250,
                height: 60,
                margin: EdgeInsets.only(top: 20, left: 40),
                child:
                ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: is_checked
                      ? () {
                    if (formkey.currentState?.validate() ?? false) {
                      // Perform login logic here
                      print("Login successful");
                    }
                  }
                      : null,
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 58, top: 10),
                    child: Text(
                      "Not a member Yet?",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
