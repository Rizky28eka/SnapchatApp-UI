import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/reusable_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  IconData eyeIcon = FontAwesomeIcons.eyeSlash;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
      eyeIcon = _obscureText ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye;
    });
  }

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
                "Log in",
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
              SizedBox(height: 40),
              CustomSnapTextField(
                label: "USERNAME OR EMAIL",
                isPasswordField: false,
                autoFocus: true,
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "PASSWORD",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF51B5E5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      obscureText: _obscureText,
                      autofocus: false,
                      cursorHeight: 33,
                      cursorWidth: 2,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: _togglePasswordVisibility,
                          child: FaIcon(
                            eyeIcon,
                            color: Colors.grey,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.all(6),
                      ),
                      cursorColor: Color(0xFF69B77D),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  //forgot your password
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF51B5E5),
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
                      "Log in",
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
