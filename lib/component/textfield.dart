import 'package:flutter/material.dart';

class My_Textfield extends StatelessWidget {

  final controller ;
  final String hintText;
  final bool obscuretext;


  const My_Textfield({super.key,
  required this.controller,
  required this.hintText,
  required this.obscuretext

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: controller,
                obscureText: obscuretext,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white10)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: hintText,
            
            
                ),
            
              ),
            );
       
  }
}