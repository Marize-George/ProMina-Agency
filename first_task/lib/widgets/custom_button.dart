import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.textButton,required this.onPressed,this.width,this.height,this.shape});
  String textButton;
  VoidCallback onPressed;
  bool isUpperCase=true;
  double? width;
  double? height;
  OutlinedBorder? shape;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue.shade300,
            shape: shape
          ),
          onPressed: onPressed, 
          child: Text(
          isUpperCase? textButton.toUpperCase():textButton,
            
          style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'jannah'),
          )),
      ),
    );
  }
}