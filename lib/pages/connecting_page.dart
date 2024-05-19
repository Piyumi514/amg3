// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:ayurcare/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ConnectingPage(),
  ));
}

class ConnectingPage extends StatefulWidget {
  const ConnectingPage({super.key});

  @override
  _ConnectingPageState createState() => _ConnectingPageState();
}

//connecting page
class _ConnectingPageState extends State<ConnectingPage> {
  late Timer _timer;
  int _dotCount = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _dotCount = (_dotCount + 1) % 4;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Logo
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset(
                'assets/logo1.png',
                height: 350,
                width: 350,
              ),
            ),
          ),

          // Loading dots
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 10, height: 350),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _dotCount == index % 4
                              ? const Color.fromARGB(255, 21, 162, 99)
                              : Colors.grey,
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 30),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const homepage()),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 51, 135, 53),
                      ),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
