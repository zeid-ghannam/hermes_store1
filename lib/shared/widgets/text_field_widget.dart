import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? textController;
  final String hintText;
  final String labelText;
  final IconData? icon;
  final Color? iconColor;
  final bool obscureText;
  final ValueChanged? onchange;
  final FormFieldValidator? validator;
  final Widget? suffixIcon;
  const TextFieldWidget({
    Key? key,
    this.textController,
    required this.hintText,
    required this.labelText,
    this.icon,
    this.iconColor,
    this.obscureText = false,
    this.onchange,
    this.validator,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //this container for holding the text field
    return TextFormField(
      validator: validator,
      onChanged: onchange,
      controller: textController,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: Icon(
          icon,
          color: iconColor,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: Dimensions.height15,
          horizontal: Dimensions.width20,
        ),
        //this is to show the border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimensions.radius8,
            ),
          ),
        ),
        //this is for the enable border
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.lightBlueAccent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimensions.radius8,
            ),
          ),
        ),
        //this is for the focused border
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.lightBlueAccent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimensions.radius8,
            ),
          ),
        ),
        //this is for the error border
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimensions.radius8,
            ),
          ),
        ),
      ),
    );
  }
}
