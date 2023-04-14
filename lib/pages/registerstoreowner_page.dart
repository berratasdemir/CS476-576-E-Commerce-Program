import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/signup_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/registercustomer_page.dart';
import '../components/my_textfield.dart';

//stateless was changed to stateful
class RegisterStoreOwnerPage extends StatefulWidget {
  RegisterStoreOwnerPage({super.key});

  @override
  State<RegisterStoreOwnerPage> createState() => _RegisterStoreOwnerPageState();
}

class _RegisterStoreOwnerPageState extends State<RegisterStoreOwnerPage> {
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
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        //add user details
        addUserDetails(emailController.text.trim(),);
        showDialog(context: context,
            builder: (context){
              return AlertDialog(
                content: const Text("Welcome, your information is saved to the system successfully"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            });


      } on FirebaseAuthException catch(exc){
        showDialog(context: context,
            builder: (context){
              return AlertDialog(
                content: Text(exc.message.toString()),
              );
            });

      }

    }
    else{
      showDialog(context: context,
          builder: (context){
            return AlertDialog(
              content: const Text("Your password and confirm password does not match! Please, enter same password for both field"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          });
    }
  }

  Future addUserDetails(String email) async{
    await FirebaseFirestore.instance.collection("users").add({
      'email': email,
      'role': "storeowner",
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
                  Text('WELCOME STORE-OWNER REGISTER PAGE!',
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
                        'Not a member?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>   RegisterCustomerPage()));
                        },
                        child: const Text(
                          'Register now',
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
                          //return HomePage()
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




