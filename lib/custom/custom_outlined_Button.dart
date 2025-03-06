import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget{
  const CustomOutlinedButton({super.key});

 

  @override
  Widget build(BuildContext context) {
      return OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),),
                      elevation: 0,
                      padding: EdgeInsets.zero),
                      child: const Text('data'),);
  
}
}