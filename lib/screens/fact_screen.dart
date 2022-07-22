import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class factScrren extends StatelessWidget {
  factScrren({Key? key, this.message}) : super(key: key);
  String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اسئلة عامة'),
      ),
      body: Center(
        child: Text(
          (message ?? 'NO message'),
          style: GoogleFonts.nobile(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
