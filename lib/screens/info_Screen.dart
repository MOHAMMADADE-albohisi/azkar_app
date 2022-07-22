import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rosary_application/screens/fact_screen.dart';

class infoScreen extends StatelessWidget {
  infoScreen({Key? key}) : super(key: key);
  String _message = 'No Message';

  @override
  Widget build(BuildContext context) {
    ModalRoute? model = ModalRoute.of(context);
    if (model != null && model.settings.arguments != null) {
      if (model.settings.arguments is Map<String, dynamic>) {
        Map<String, dynamic> map =
        model.settings.arguments as Map<String, dynamic>;
        if (map.containsKey('message')) {
          _message = map['message'];
        }
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('عن التطبيق'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => factScrren(
                  ),
                ),
              );
            },
            icon: const Icon(Icons.question_answer),
          ),
        ],
      ),
      body: Center(
        child: Text(
          _message,
          style: GoogleFonts.nobile(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
