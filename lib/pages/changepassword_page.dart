import 'package:flutter/material.dart';
import 'package:untitled/components/my_textfield.dart';


class ChangePasswordPage extends StatelessWidget{
  ChangePasswordPage({super.key});
  final oldpasswordController = TextEditingController();
  final newpasswordController = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(

              child: SingleChildScrollView(
                child: Column(
                  children:  [

                    MyTextField(
                      controller: oldpasswordController,
                      hintText: 'Enter your current password',
                      obscureText: true,
                    ),

                    const SizedBox(height: 10),

                    //password
                    MyTextField(
                      controller: newpasswordController,
                      hintText: 'Enter your new password',
                      obscureText: true,
                    ),

                    const SizedBox(height: 10),

                    //password
                    MyTextField(
                      controller: newpasswordController,
                      hintText: 'Enter your new password again',
                      obscureText: true,
                    ),

                    const SizedBox(height: 10),

                    Text(
                      '',
                      style: TextStyle(color: Colors.grey[700]),
                    ),

                    const SizedBox(height: 10),

                    MaterialButton(onPressed: (){},
                    color: Colors.blue,
                    child: const Text("Change Password"),)






                  ],
                ),
              ),
            )
        )
    );
  }
}

