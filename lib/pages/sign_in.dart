import 'package:coffee/pages/login.dart';
import 'package:coffee/pages/sign_in.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text('Sign In',style: TextStyle(fontSize: 20),),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Let's Get Started",style: TextStyle(fontSize: 20,color: Colors.brown.shade900),),
              SizedBox(height: 30,),

              //form fields

              //user name
              TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.brown.shade400,

                      enabled: true,
                      hintText: 'Enter a Username',

                      prefixIcon: Icon(Icons.alternate_email),
                      suffixIcon: Icon(Icons.email,),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )
                  )
              ),
              SizedBox(height: 20,),

              //email
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.brown.shade400,

                      enabled: true,
                      hintText: 'Enter your email',

                      prefixIcon: Icon(Icons.alternate_email),
                      suffixIcon: Icon(Icons.email,),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )
                  )
              ),
              SizedBox(height: 20,),
              //pass
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.brown.shade400,
                      enabled: true,
                      hintText: 'Enter your Password',

                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.lock,),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )
                  )
              ),
              //confirm pass
              SizedBox(height: 20,),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.brown.shade400,
                      enabled: true,
                      hintText: 'Confirm  Password ',

                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.lock,),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )
                  )
              ),
              SizedBox(height: 30,),



               //button
               InkWell(
                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),)),

                 child: Container(
                   width: 220,
                    height: 50,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),

                      color: Colors.brown.shade700
                    ),child: Center(child: Text('Sign in',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
               ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  InkWell(
                      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),)),
                      child: Text(' Log In',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                ],
              )




            ],

          ),
        ),
      ),
    );
  }
}
