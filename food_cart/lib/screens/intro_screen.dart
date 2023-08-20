import 'package:flutter/material.dart';
import 'package:food_cart/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(children: [
        // logo
        Padding(
          padding: const EdgeInsets.only(
            top: 120,
            bottom: 80,
            left: 80,
            right: 80,
          ),
          child: Image.asset('assets/images/logo_gr.png'),
        ),

        // we deliver food at your doorstep
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'We deliver groceries at your doorstep',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 15),

        // frsh items everyday
        Text(
          'Fresh items everyday',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),

        const SizedBox(height: 15),

        const Spacer(),

        // get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}
