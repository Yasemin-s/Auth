//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),

              child: TextField(
                controller: controller, //bu alana bir seyler yazdigimizda , buna erismek icin controller kullaniriz
                 obscureText: obscureText, //yazarken  karakterleri gizler.
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white
                    ),
                    ),

                    focusedBorder: OutlineInputBorder( //uzerine tikladgimda odak kenarligini gri yapiyor
                      borderSide: BorderSide(
                        color: Colors.grey.shade400
                      )
                    ),

                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                    )
                ),
              ),
            );
  }
}