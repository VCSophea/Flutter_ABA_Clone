import 'package:flutter/material.dart';

class AbaLogo extends StatelessWidget {
  const AbaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'ABA',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 2.0),
        Text("'", style: TextStyle(color: Colors.red)),
        SizedBox(width: 5.0),
        Text(
          'Mobile',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
