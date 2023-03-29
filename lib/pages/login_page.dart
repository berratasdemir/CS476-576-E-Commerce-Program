import 'package:flutter/material.dart';
import 'package:untitled/components/login_button.dart';
import 'package:untitled/components/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/pages/register_page.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';


class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign/login user in method
  void signUserIn()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
    );

  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(

          child: SingleChildScrollView(
            child: Column(
              children:  [
                 //const SizedBox(height: 10),
                const Icon(
                Icons.lock,
                size: 100
              ),
                const SizedBox(height: 30),
                //Welcome back, you've been missed!
                Text('WELCOME !',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                ),

                const SizedBox(height: 25),
                //username

                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                //password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                //sign in button
                LoginButton(onTap: signUserIn,),


                const SizedBox(height: 30),

            //not member ?register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 30),

                //or continue as guess
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do you want to be store owner?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>   RegisterPage()));
                      },
                      child: const Text(
                        'Create your account',
                        //return RegisterPage()
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],

                ),



                const SizedBox(height: 30),

                //or continue as guess
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Continue as guest',
                      //return HomePage()
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),


            ],
        ),
          ),
      )
    )
    );
  }
}








