import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'void.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _HomeState();
}

class _HomeState extends State<Screen2> {
  final _formkey = GlobalKey<FormState>();
  bool isVisible = true;
  var passwordlength = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      // ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.network("https://i.pinimg.com/enabled/564x/9c/5a/85/9c5a856ce66ad576d245f02d758b063a.jpg",
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
                      "Hello ",
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
                      decoration: decorationUserName(
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
                      maxLength: 20,
                      onChanged: (value) {
                        setState(() {
                          passwordlength = value.length;
                        });
                      },
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      obscureText: isVisible,
                      decoration: decorationPassword(
                        lab: "password",
                        hint: "Enter your password",
                        icon: Icons.password,
                        isVisible: isVisible,
                        onToggleVisibility: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        passwordlengthVoid: passwordlength.bitLength,
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
                        Navigator.of(context).pushNamed('rout screen2_3');
                        if (_formkey.currentState!.validate()) {
                          print("No error");
                        } else {
                          print("Error");
                        }
                      },
                      child: Text(
                        "sing in",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Trajan Pro",
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('rout screen2_1');
                    },
                    child: Text(
                      "for login ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
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
