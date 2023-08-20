import 'package:flutter/material.dart';

class PayNowScreen extends StatelessWidget {
  const PayNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      iconColor: Colors.green,
      backgroundColor: Colors.green[200],
      title: Column(
        children: const [
          Text(
            'Congratulations 🎉',
            textAlign: TextAlign.center,
          ),
          Text(
            'Your Order placed Succesfully',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
