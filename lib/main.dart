import 'package:clothes_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    
       colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFAFAFA)),
     primaryColor: Color(0xFFFFBD00),
   //  accentColor :Color(0xFFFFEBC7),
      ),
      home:  HomePage(),
    );
  }
}
