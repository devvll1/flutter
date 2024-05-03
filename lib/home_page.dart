import 'package:villa_flutter_app/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: AppColor.background,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 64,
            ),
            Text(
              'Welcome to flutter home page',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}