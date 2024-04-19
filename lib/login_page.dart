import 'package:villa_flutter_app/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget
{
  const LoginPage({super.key});
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 64,
            ),
            Text('Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
          SizedBox(
            height: 16,
          ),
            Text('Please Log In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),),
            SizedBox(
            height: 60,
          ),
            TextField(
              decoration: InputDecoration(hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: AppColor.disableFont.withOpacity(0.8)
              ),
            ),
             SizedBox(
            height: 4,
          ),
            TextField(
              decoration: InputDecoration(hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8)),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {
                print('Forgot is clicked');
              }, child: Text('Forgot Password',
              style: TextStyle(
                color: Colors.white,
              ))),
            ),
            SizedBox (
              height: 47,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton (
                style: ElevatedButton.styleFrom(backgroundColor: AppColor.primary),
              onPressed: () {
                print('Log in is clicked');
              },
            child: Text('Log in',
            style: TextStyle(color: AppColor.white)
            )
            ),
            ),
            SizedBox(height: 76,),
            Text(
              'Or sign in with:' ,
              style: TextStyle(color: Colors.white,
              ),
              ),
              SizedBox(height: 16,),
            ElevatedButton(onPressed: () {
              print('Google is clicked');
            }, 
            child: Row(
              children: [
                Image.asset(
                  'assets/images/google.png' , 
                height:22,
                width:22,
                ),
                Text(
                  'Log in with google',
                  style: TextStyle(color: Colors.blue[900]),),
              ]
              )),
              SizedBox(height: 8,),
            ElevatedButton(onPressed: () {
              print('Facebook is clicked');
            }, 
            child: Row(
              children: [
                Image.asset(
                  'assets/images/fb.png' , 
                height:30,
                width:30,
                ),
                Text(
                  'Log in with Facebook',
                  style: TextStyle(color: Colors.blue[900]),),
              ]
              )),
              SizedBox(height: 16,),
            Row(
              children: [
                Text(
                  "Don't have account?" ,
                  style: TextStyle(color: Colors.white,),),  
                TextButton(onPressed: () {}, child: Text('Sign up' , style: TextStyle(color: Colors.blue[900],
                decoration: TextDecoration.underline),
                ))
              ],
              )
            ],
          ),
      ),
      );
  }
}