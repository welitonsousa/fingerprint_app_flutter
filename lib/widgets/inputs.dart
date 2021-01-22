import 'package:app_beacon/utils/constants.dart';
import 'package:app_beacon/widgets/text.dart';
import 'package:flutter/material.dart';

class Inputs {
  static Widget textFormField({
    TextEditingController controller,
    @required String label,
    TextInputType keyboardType = TextInputType.emailAddress,
    TextInputAction textInputAction = TextInputAction.next,
    bool obscureText = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: text(
                text: '$label',
                color: colorSecondary,
                size: 18,
                center: false)),
        Container(
          decoration: new BoxDecoration(
              color: colorSecondary,
              borderRadius: new BorderRadius.all(new Radius.circular(50.0))),
          child: TextFormField(
            obscureText: obscureText,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            controller: controller,
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            onFieldSubmitted: (e) {
              print('$e');
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10)),
          ),
        ),
      ],
    );
  }
}
textFormField({
  bool autoFocus = false,
  onChanged,
  label,
  TextInputType keyboardType,
  placeholder,
  key,
  textCapitalization = TextCapitalization.none,
  validator,
  controller,
  inputAction = TextInputAction.next,
  textAlign = TextAlign.start,
  obscureText = false,
  focus,
  suffixIcon,
  onPressedTextInputAction,
  maxLength,
}) {
  return TextFormField(
    autofocus: autoFocus,
    maxLength: maxLength,
    textCapitalization: textCapitalization,
    textInputAction: inputAction,
    controller: controller,
    style: TextStyle(color: colorMain),
    obscureText: obscureText,
    textAlign: textAlign,
    keyboardType: keyboardType,
    focusNode: focus,
    onChanged: onChanged,
    onFieldSubmitted: onPressedTextInputAction,
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      hintText: placeholder,
      labelText: label,
      labelStyle: TextStyle(
        color: colorMain,
      ),
    ),
    validator: validator,
  );
}