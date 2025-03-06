import 'package:flutter/material.dart';

class CustomELevatedButton extends StatelessWidget{
  const CustomELevatedButton({super.key,required this.buttonText ,required this.onTap});
  
  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(248, 9, 29, 85),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 0,
            padding: EdgeInsets.zero),
        child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style:const  TextStyle(color: Colors.white, fontSize: 23.00),
      ),
    );
  }
  
}