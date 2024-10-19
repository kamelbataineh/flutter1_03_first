import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'void.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formkey = GlobalKey<FormState>();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://i.pinimg.com/enabled/564x/1a/dd/79/1add791d22673435273a5310c08f0007.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 250,
                        height: 160,
                        child: Lottie.network(
                            "https://lottie.host/19fcfefd-de26-40b7-8e68-89952a01cc96/OOkxcR5jPj.json"),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontFamily: "Trajan Pro",
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        shadows: [
                          Shadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(1),
                          ),
                        ],
                      ),
                    ),
                  ),
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: decoration(
                        lab: "username",
                        hint: "Username,Emil,number",
                        icon: Icons.person,
                      ),
                      validator: (username) {
                        if (username == null || username.isEmpty) {
                          return "Please enter a username or email";
                        } else if (!RegExp(r'^[a-zA-Z0-9]+$')
                                .hasMatch(username) &&
                            !isValidEmail(username)) {
                          return "Username must be alphanumeric or a valid email";
                        }
                        return null;
                      },
                    ),
                  ),
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      obscureText: isVisible,
                      decoration: decoration1(
                        lab: "password",
                        hint: "Enter your password",
                        icon: Icons.password,
                        isVisible: isVisible,
                        onToggleVisibility: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                      ),
                      validator: (Password) {
                        if (Password == null || Password.isEmpty) {
                          return "Please enter password";
                        } else if (Password.length < 8) {
                          return "Password must be at least 8 characters";
                        } else if (!passwordbool(Password)) {
                          return "Password must contain A-Z, a-z, # \$ @ ! % &";
                        }
                        return null;
                      },
                    ),
                  ),
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

                  SizedBox(height: 20),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black54 ?? Colors.transparent,
                          Colors.black38 ?? Colors.purple,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print("No error");
                        } else {
                          print("Error");
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Trajan Pro",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

  bool passwordbool(String pass) {
    String passwordPattern =
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[#$@!%&])[A-Za-z\d#$@!%&]{8,10}$';
    RegExp regExp = RegExp(passwordPattern);
    return regExp.hasMatch(pass);
  }

////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

  bool isValidEmail(String email) {
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }
}
