// ignore_for_file: camel_case_types

import 'package:ayurcare/pages/login.dart';
import 'package:ayurcare/pages/plant_recognition.dart';
import 'package:ayurcare/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const homepage());
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
                  'assets/bg.jpg', // Change the image path accordingly
                  height: 600, // Adjust image height as needed
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Image
                Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  child: Image.asset(
                    'assets/logo1.png',
                    width: 300,
                    height: 300,
                  ),
                ),

                // Signup Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const signuppage()),
                    );
                    // Add your signup functionality here
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginApp()),
                    );
                    // Add your signup functionality here
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 2), // Spacer
                // Text Description
                /*const Text(
                  'Welcome to AyurCare!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 29, 154, 8),
                    fontSize: 24,
                  ),
                ),*/
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15), // Adjust the padding value as needed
                  /*child: Text(
                    'Ayurcare prioritizes user privacy and offers educational resources on Ayurvedic medicine, encouraging users to consult professionals for personalized treatment. We uphold intellectual property rights and reserve the right to update services while adhering to governing laws!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      letterSpacing: 1,
                      color: Color.fromARGB(255, 58, 58, 59),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),*/
                ),

                const SizedBox(height: 20), // Spacer
                // Button with Icons
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>const PlantRecognitionPage()),
                        );
                    // Add functionality for signup button
                  },
                  child: Container(
                    width: 300, // Set desired width
                    height: 35, // Set desired height
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 4, 96, 35), // Change the color according to your design
                      borderRadius: BorderRadius.circular(25), // Adjust the border radius as needed
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Recognize the plant',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 30), // Add space between text and icons
                        /*Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:6), // Adjust the padding between icons as needed
                          child: Icon(Icons.camera_alt_rounded,
                              color: Color.fromARGB(255, 245, 243, 243)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  2), // Adjust the padding between icons as needed
                          child: Icon(Icons.document_scanner,
                              color: Color.fromARGB(255, 246, 244, 244)),
                        ),*/
                      ],
                    ),
                    
                  ),
                  
                ),
                
                /*Container(
              color: Color.fromARGB(255, 173, 204, 180),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Your Text Here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for button
                    },
                    child: const Text('Your Button Text'),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),*/
          ],
        ),
      ),
        ],
    ),
    );
  }
}
