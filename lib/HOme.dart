import 'package:flutter/material.dart';
import 'void.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.network(
          "https://i.pinimg.com/enabled/564x/0d/46/5c/0d465c78df992a5acf02577d8892b9ff.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      width: 200,
                      height: 180,
                      child: Image.asset("image/ll.png")),
                ),
              ),
              Container(
                  child: Text(
                "Welcome Back",
                style: TextStyle(
                  fontFamily: "Trajan Pro",
                  fontSize: 30,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 3),
                      color: Colors.white.withOpacity(1),
                    ),
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                // child: Container(
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [
                //         Colors.black.withOpacity(0.6), // تدرج أسود داكن
                //         Colors.blue.withOpacity(0.4), // تدرج أزرق خفيف
                //       ],
                //       begin: Alignment.topCenter,
                //       end: Alignment.bottomCenter,
                //     ),
                //
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                  child: TextFormField(
                    decoration: decoration(
                        lab: "username",
                        hint: "Username,Emil,number",
                        icon: Icons.person),
                  ),
                ),
              // ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                // child: Container(
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [
                //         Colors.black12??Colors.transparent,
                //         Colors.blue[200] ?? Colors.transparent
                //       ], // Gradient colors
                //     ),
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: decoration1(
                      lab: "password",
                      hint: "Enter your password",
                      icon: Icons.password,
                    ),

                  ),

                ),
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black38??Colors.transparent,
                      Colors.black38?? Colors.purple
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Text(
                    "login",

                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Trajan Pro",

                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
