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
  bool _obscureText = true;
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
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(50),
        )
      ),
    ),
  );
}
