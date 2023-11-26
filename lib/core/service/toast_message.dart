import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//Toast Message only ios. Android is not working correctly. 
void printToastMessage(
    {required String message,
    Color color = Colors.green,
    ToastGravity gravity = ToastGravity.BOTTOM,
    int timeInSecForIosWeb = 1,
    double fontSize = 16.0,
	 Color textColor = Colors.white}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: timeInSecForIosWeb,
      backgroundColor: color,
      textColor: textColor,
      fontSize: fontSize);
}
