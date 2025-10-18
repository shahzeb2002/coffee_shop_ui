import 'package:coffee/pages/HomePage.dart';
import 'package:coffee/pages/sign_in.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text('LOGIN',style: TextStyle(fontSize: 20),),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('WELCOME BACK!!!',style: TextStyle(fontSize: 20,color: Colors.brown.shade900),),
              SizedBox(height: 30,),
              
              //form fields
             
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
              SizedBox(height: 30,),

              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),)),
                child: Container(
                  width: 220,
                  height: 50,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),

                      color: Colors.brown.shade700
                  ),child: Center(child: Text('Log In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                ),
              ),
              
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Do not have an account?'),
                  InkWell(
                      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),)),
                      child: Text(' Sign In',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                ],
              )




            ],

          ),
        ),
      ),
    );
  }
}
