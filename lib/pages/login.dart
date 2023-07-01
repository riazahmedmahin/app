

import 'package:app/component/textfield.dart';
import 'package:flutter/material.dart';

import '../component/my_button.dart';
import '../component/square_tile.dart';

class My_login extends StatelessWidget {
   My_login({super.key});

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Center(
         child: Column(
          children: [
            // Icon
            SizedBox(height: 50,),
       
            Icon(Icons.lock,size: 80,),
       
            //  Text
            SizedBox(height: 25,),
       
            Text('welcome',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            

            // Email
            SizedBox(height: 25,),
       
          My_Textfield(controller: usernamecontroller,
           hintText: 'Email',
            obscuretext: false),
           

           // Password

           SizedBox(height: 10,),

           My_Textfield(controller: passwordcontroller,
            hintText: 'Password', 
            obscuretext: true),

            // Forget

            SizedBox(height: 10,),

            Text('Forget password ?',style: TextStyle(fontSize: 15,),),

            // button

            SizedBox(height: 15,),

            MyButton(onTap: () {  },),



            /////

    

               SizedBox(height: 30),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'images/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'images/apple.png')
                ],
              ),

              const SizedBox(height: 30),

              // not a member? register now
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
              )


      
            
         ]
         ),
       ),
     ),



    );
  }
}