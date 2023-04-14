import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/signup_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/registerstoreowner_page.dart';
import '../components/my_textfield.dart';

//stateless was changed to stateful
class RegisterCustomerPage extends StatelessWidget {
  RegisterCustomerPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();


  //sign user out method
  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  bool passwordConfirmed(){
    if(passwordController.text.trim()==
        confirmpasswordController.text.trim()){
      return true;
    }
    else{
      return false;
    }
  }

  Future saveUser() async {
    if (passwordConfirmed()) {
      //create user
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );


      //add user details
      addUserDetails(emailController.text.trim(),
      );
    }

  }

  Future addUserDetails(String email) async{
    await FirebaseFirestore.instance.collection("users").add({
      'email': email,
      'role': "user",
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(actions: [IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))],),
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
                    Text('WELCOME CUSTOMER REGISTER PAGE!',
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

                    //confirm your password
                    MyTextField(
                      controller: confirmpasswordController,
                      hintText: 'Confirm Password',
                      obscureText: true,
                    ),


                    const SizedBox(height: 10),

                    const SizedBox(height: 10),

                    //sign in button
                    SignupButton(onTap: saveUser,),


                    const SizedBox(height: 20),

                    //not member ?register now
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>   RegisterStoreOwnerPage()));
                          },
                          child: const Text(
                            'Create your account',
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
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>   const HomePage()));
                          },
                          child: const Text(
                            'Continue as guest',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
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




