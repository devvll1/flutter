import 'package:flutter/material.dart';
import 'package:villa_flutter_app/login_page.dart';

// Define the AppColor class
class AppColor {
  static const Color background = Color(0xFFE5E5E5);
  // Add more custom colors here
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist', 
        scaffoldBackgroundColor: AppColor.background,
        // You can add more theme properties here
      ),
      home: LoginPage(),
    );
  }
}
