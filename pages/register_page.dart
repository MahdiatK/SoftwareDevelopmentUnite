import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends statelessWidget {
   // username and pw controllers
   final TextEditingController _usernameController = TextEditingController();
   final TextEditingController _pwController = TextEditingController();
   final TextEditingController _confirmpwController = TextEditingController();
  
  RegisterPage({super.key});

  // register method
  void register() {}

  @override
  widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Unity Logo
            Image.network(
              'https://i.postimg.cc/GtXyJgkf/Unity-Logo.png',
              height: 150,
            ),

            const SizedBox(height: 50),

            //Welcome back message
            Text(
              "Let's create an account for you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            //Username field
            MyTextField(
              hintText: "Username",
              obscureText: false,
              controller: _usernameController,
            ), 

            const SizedBox(height: 10),

            //Password field
             MyTextField(
               hintText: "Password",
               obscureText: true,
               controller: _pwController,
            ),

              const SizedBox(height: 10),

            // Confirm Password field
             MyTextField(
               hintText: "Confirm password",
               obscureText: true,
               controller: _confirmpwController,
            ),

            const SizedBox(height: 25),

            // login button
            MyButton(
              text: "Register",
              onTap: register,
            ),

            const SizedBox(height: 25),

            //register now
            Row(
              mainAxisAlignment: MainAxis Alignment.center,
              children:
                Text("Already have an account?"),
                style: 
                    TextStyle(colour: Theme.of(context).colourScheme.primary),
               ), // Text
               Text(
                 "Login now", 
                 style: Textstyle(
                   fontWeight: FontWeight.bold,
                   colour: Theme.of(context).colourScheme.primary),
                ),
        
            

          ],
        ),
      ),
    );
  }
}
