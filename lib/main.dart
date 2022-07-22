import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rosary_application/screens/home_screen.dart';
import 'package:rosary_application/screens/info_Screen.dart';
import 'package:rosary_application/screens/launch_screen.dart';


void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales:const [
        Locale('ar'),
        Locale('en'),
      ],
      locale:const Locale('en'),
      // home: launchScreen(),
      initialRoute: '/Launch_screen',
      routes: {
        '/Launch_screen' : (context) => const launchScreen(),
        '/home_screen' : (context) => const HomeScreen(),
        '/info_screen' : (context) =>  infoScreen(),
      },
    );
  }
}
