import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/login_page.dart';
import 'home_page.dart';


class AuthPage extends StatelessWidget{
  const AuthPage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          //user log-in
          if(snapshot.hasData){
            return const HomePage();
          }
          else{
            return LoginPage();
          }
          //user is not logged in
        },


      ),

    );
  }
}