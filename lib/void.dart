import 'package:flutter/material.dart';

Widget Username(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.cyan,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          filled: true,
          icon: Icon(Icons.person),
          label: Text(
            "Username",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          hintText: "Email",
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          fillColor: Colors.blue[100],
          suffixIcon: Icon(Icons.mail_outline_outlined)),
    ),
  );
}

///
///
///
///
///
///

Widget PasswordField(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.cyan,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          filled: true,
          icon: Icon(Icons.lock),
          label: Text(
            "Password",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          fillColor: Colors.blue[100],
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          suffixIcon: Icon(Icons.visibility_off),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          )),
    ),
  );
}

///
///
///
///
///
///


///
///
///
///
///
///
///
InputDecoration decoration({
  required String lab,
  required String hint,
  required IconData icon,
}) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.purple,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.purple,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    labelText: lab,
    hintText: hint,
    prefixIcon:  Icon(icon),
    labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    hintStyle: TextStyle(color: Colors.black),
    filled: true,
    fillColor: Colors.transparent,
  );
}
///
///
///
InputDecoration decoration1({
  required String lab,
  required String hint,
  required IconData icon,
}) {
  return InputDecoration(
    helperStyle: TextStyle(color: Colors.white), // لون النص المساعد
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.purple,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.purple,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    labelText: lab,
    hintText: hint,
    prefixIcon:  Icon(icon),
    labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    hintStyle: TextStyle(color: Colors.black),
    filled: true,
    fillColor:Colors.transparent,
counterText:"Forget your password?",
  counterStyle: TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400

  )
  );
}
