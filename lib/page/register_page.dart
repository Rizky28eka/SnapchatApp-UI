import 'package:flutter/material.dart';

import '../widgets/reusable_button.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "What's your name?",
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
              SizedBox(height: 20),
              CustomSnapTextField(
                label: "FIRST NAME",
                isPasswordField: false,
                autoFocus: true,
              ),
              SizedBox(height: 20),
              CustomSnapTextField(
                label: "LAST NAME",
                isPasswordField: false,
                autoFocus: false,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: RichText(
                  text: TextSpan(
                    text:
                        "By tapping Sign up & Accept, you acknowledge that you have read the ",
                    style: TextStyle(color: Color(0xFFB3B7B8), fontSize: 17),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Privacy Policy ',
                        style: TextStyle(color: Color(0xFF51B5E5)),
                      ),
                      TextSpan(
                        text: 'and agree to the ',
                        style: TextStyle(color: Color(0xFFB3B7B8)),
                      ),
                      TextSpan(
                        text: 'Terms of service.',
                        style: TextStyle(color: Color(0xFF51B5E5)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home_page');
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Sign up & Accept",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.center,
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFADB6BD),
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
