import 'package:flutter/material.dart';
import 'package:profile/profile.dart';


Widget monformulaire(String labelText, String placeholder, bool isPassword ){
  return Padding(
    padding: EdgeInsets.only(bottom: 30),
    child: TextField(
      style: TextStyle(fontSize: 30),
      obscureText: isPassword ? isPassword : false,
      decoration: InputDecoration(
        suffixIcon: isPassword ? 
        IconButton(
          icon: Icon(Icons.remove_red_eye, color: Colors.grey,),          
          onPressed: (){},
          ): null,
          contentPadding: EdgeInsets.only(bottom: 5,),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder, 
          hintStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          )
      ),
    ),

  );

}