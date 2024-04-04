
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    required this.label,
    this.obscureText=true,
    required this.controller,
    required this.validate,
    required this.keyboardType,
 

  });

  String label;
  bool obscureText;
  TextInputType keyboardType;
  TextEditingController controller;
  String? Function(String?)? validate;  
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 280,
        height: 60,
        child: TextFormField(
          
          validator: validate,
          keyboardType: keyboardType,
          obscureText: obscureText,
          controller: controller,        
          decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            filled: true,
            fillColor: Colors.white,
            hintText: label,
            hintStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[400],
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(
                color: Colors.white, 
              ),
             
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(
                color: Colors.white, 
              ),
               
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(
                color: Colors.white, 
                
              ),
              
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(
                color: Colors.white, 
              ),
              
            ),
          ),
        ),
      
    );
  }
}

