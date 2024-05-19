import 'package:flutter/material.dart';

class PlantRecognitionPage extends StatelessWidget {
  const PlantRecognitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
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
                  Color.fromARGB(255, 19, 48, 20),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ),
      
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Image.asset(
                  'assets/bg.jpg', // Change the image path accordingly
                  height: 200, // Adjust image height as needed
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
          //SizedBox(height: 0),
          const Text(
            'Recognize the plant',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 2, 163, 56)),
          ),
          //SizedBox(height: 0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                //SizedBox(height: 0),
              Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey.withOpacity(0.2),
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          child: const Icon(
            Icons.description,
            size: 40,
            color: Color.fromARGB(255, 2, 82, 35),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Add your logic here
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 4, 79, 7), // Text color of the button
          ),
          child: const Text('Choose a photo'),
        ),
      ],
    ),
  ],
),



                const SizedBox(height: 20),
                Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey.withOpacity(0.2),
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          child: const Icon(
            Icons.camera_alt,
            size: 40,
            color: Color.fromARGB(255, 2, 82, 35),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Add your logic here
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 4, 79, 7), // Text color of the button
          ),
          child: const Text('Take a photo'),
        ),
      ],
    ),
  ],
),


              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PlantRecognitionPage(),
  ));
}
