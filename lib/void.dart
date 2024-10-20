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
          icon: Icon(
            Icons.person,
          ),
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
  bool isVisabel = true;
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
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          fillColor: Colors.blue[100],
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          errorStyle: TextStyle(color: Colors.white70, fontSize: 10),
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
InputDecoration decorationUserName({
  required String lab,
  required String hint,
  required IconData icon,
}) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    labelText: lab,
    hintText: hint,
    prefixIcon: Icon(
      icon,
      color: Colors.white,
    ),
    labelStyle: TextStyle(
        fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    hintStyle: TextStyle(color: Colors.white),
    filled: true,
    fillColor: Colors.transparent,
    errorStyle: TextStyle(color: Colors.white70, fontSize: 10),
  );
}

///
///
///
InputDecoration decorationPassword({
  required String lab,
  required String hint,
  required IconData icon,
  required bool isVisible,
  required VoidCallback onToggleVisibility,
  required var passwordlengthVoid,
}) {
  return InputDecoration(
    suffixIcon: InkWell(
      child: Icon(
        isVisible ? Icons.visibility : Icons.visibility_off,
        color: Colors.white,
      ),
      onTap: onToggleVisibility,
    ),
    helperStyle: TextStyle(color: Colors.white),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    labelText: lab,
    hintText: hint,
    prefixIcon: Icon(
      icon,
      color: Colors.white,
    ),
    labelStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    hintStyle: TextStyle(color: Colors.white),
    filled: true,

    fillColor: Colors.transparent,
    counter: Text("$passwordlengthVoid/20",
    style: TextStyle(color: Colors.white),
    ),


    //
    // counterStyle: TextStyle(
    //   color: Colors.white,
    //   fontSize: 12,
    //   fontWeight: FontWeight.w400,
    // ),

      errorStyle: TextStyle(color: Colors.white70, fontSize: 10),

  );
}





//لما يكونو كلهم بملف
// suffixIcon: isVisible
// ? InkWell(
// child: Icon(Icons.visibility, color: Colors.white),
// onTap: () {
// setState(() {
// isVisible = !isVisible; // Toggle the visibility
// });
// },
// )
//     : InkWell(
// child: Icon(Icons.visibility_off, color: Colors.white),
// onTap: () {
// setState(() {
// isVisible = !isVisible; // Toggle the visibility
// });
// },
// ),