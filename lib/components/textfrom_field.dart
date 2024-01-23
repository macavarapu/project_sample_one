
import 'package:flutter/material.dart';

class AppInputTextfieldscreen extends StatelessWidget {
  AppInputTextfieldscreen({
    Key? key,
    required this.controller, required this.validator,
  }) : super(key: key);
  final TextEditingController? controller;
   final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            //hintText: hitText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
