// ignore_for_file: camel_case_types, library_private_types_in_public_api


import 'package:animate_do/animate_do.dart';
import 'package:ayurcare/pages/home.dart';
import 'package:ayurcare/pages/login.dart';
import 'package:ayurcare/pages/submit_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: signuppage(),
      ),
    );

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<signuppage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          leading: BackButton(
            color: Colors.white,

            // icon: Icon(Icons.arrow_back),
            onPressed: () {
              //GestureDetector(
              //onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const homepage()),
                // );
                //},
              );

              // Handle back button press here
              //Navigator.of(context).pop();
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/ac.png', // Assuming 'logo.png' is your logo file path
                fit: BoxFit.contain,
                height: 250,
                width: 120,
              ),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 25, 155, 31),
                  Color.fromARGB(255, 19, 48, 20)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 170,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    height: 170,
                    width: width,
                    child: FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/bg.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
  child: FadeInUp(
    duration: const Duration(milliseconds: 1500),
    child: const Text(
      "Sign Up",
      style: TextStyle(
        color: Color.fromRGBO(5, 146, 29, 1),
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
  ),
),

                  const SizedBox(height: 30),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromRGBO(196, 135, 198, .3)),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(196, 135, 198, .3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Set horizontal padding
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(196, 135, 198, .3)
      )
    )
  ),
  child: TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "Full Name",
      hintStyle: TextStyle(color: Colors.grey.shade700),
    ),
  ),
),
                          Container(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Set horizontal padding
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(196, 135, 198, .3)
      )
    )
  ),
  child: TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "Email",
      hintStyle: TextStyle(color: Colors.grey.shade700),
    ),
  ),
),
                           Container(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Set horizontal padding
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(196, 135, 198, .3)
      )
    )
  ),
  child: TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "District",
      hintStyle: TextStyle(color: Colors.grey.shade700),
    ),
  ),
),
                         Container(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Set horizontal padding
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(196, 135, 198, .3)
      )
    )
  ),
  child: TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "Password",
      hintStyle: TextStyle(color: Colors.grey.shade700),
    ),
  ),
),
                          Container(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Set horizontal padding
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromRGBO(196, 135, 198, .3)
      )
    )
  ),
  child: TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "Confirm password",
      
      hintStyle: TextStyle(color: Colors.grey.shade700),
      
    ),
  ),
),
                         
                const SizedBox(height: 20),          
                       Container(
  color: const Color.fromARGB(204, 186, 188, 186),
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const SizedBox(height: 20),
      ListTile(
        leading: Checkbox(
          value: false, // Set the initial value of the checkbox
          onChanged: (bool? value) {
            // Handle checkbox state changes here
          },
        ),
        title: const Text(
          'I am concerned with effects of medicines. ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 9, 12, 9),
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(height: 10),
      
    ],
  ),
),
 
                        ],
                      ),
                      
                    ),
                    
                  ),
                  const SizedBox(height: 20),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginApp()),
                          );
                        },
                        child: const Text(
                          "Already have an account?",
                          style:
                              TextStyle(color: Color.fromRGBO(19, 165, 48, 1)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1900),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom:
                              20), // Add padding to left, right, and bottom sides
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyPage()),
                          );
                          
                        },
                        
                        color: const Color.fromRGBO(4, 54, 35, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 50,
                        minWidth: 2,
                        child: const Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                       
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


