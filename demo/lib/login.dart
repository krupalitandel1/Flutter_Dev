import 'package:demo/components/my_buttons.dart';
import 'package:flutter/material.dart';
import 'package:demo/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

//function for signing in the user
  void signInuser() {}

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),

                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),

                //creating the empty box
                SizedBox(
                  height: 30,
                ),
                //welcome back you,ve been missed !
                Text(
                  'Welcome back you\'ve been missed !',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                // password textfield
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                // forgot password
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password?'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // login button
                MyButton(
                  onTap: signInuser,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
