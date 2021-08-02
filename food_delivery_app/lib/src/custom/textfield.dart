import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key key,
      this.action,
      this.controller,
      this.suffixIcon,
      this.prefixIcon,
      this.isIcon,
      this.obscureText = false,
      this.hint,
      this.validate,
      this.keyboardType,
      this.focus})
      : super(key: key);

  final TextEditingController controller;
  final TextInputAction action;
  final IconButton suffixIcon;
  final Icon prefixIcon;
  final bool isIcon;
  final bool obscureText;
  final String hint;
  final FocusNode focus;
  final String Function(String) validate;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SizedBox(
        height: 70,
        child: TextFormField(
          autofocus: false,
          validator: validate,
          autocorrect: true,
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              currentFocus.focusedChild.unfocus();
            }
          },
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(
              color: Color(0xFF666666),
            ),
            filled: true,
            fillColor: Color(0xFFF2F3F5),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none,
            ),
          ),
          textInputAction: action,
          obscureText: obscureText,
        ),
      ),
    );
  }
}
