//Saja Nazih Asfour

import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String email = "";
  String password = "";
  String verify = "";

  TextEditingController emailText = new TextEditingController();
  TextEditingController passwordText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: Text(
            "Login Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Saja Nazih Asfour",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Your Email",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Your Password",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    email = emailText.text;
                    password = passwordText.text;
                    setState(() {
                      if (email == "tariq@gmail.com" && password == "112233") {
                        verify = "Welcome";
                      } else {
                        verify = "Error";
                      }
                    });
                  },
                  child: Text("Enter")),
              SizedBox(
                height: 10,
              ),
              Text(
                "$verify",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
