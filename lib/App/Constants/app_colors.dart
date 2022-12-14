import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);

///defaultPadding
const defaultPadding = 20.0;

///defaultDuration
const defaultDuration = Duration(seconds: 1); // we use it on our animation
///web width
const maxWidth = 1440.0; // max width of our web

///Flutter Toast
void showMessage(String msg) {
  Fluttertoast.showToast(msg: msg);
}
